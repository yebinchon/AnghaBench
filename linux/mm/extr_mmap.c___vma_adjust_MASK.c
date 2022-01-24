#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; long vm_pgoff; struct vm_area_struct* vm_next; struct anon_vma* anon_vma; struct file* vm_file; struct mm_struct* vm_mm; } ;
struct rb_root_cached {int dummy; } ;
struct mm_struct {scalar_t__ highest_vm_end; int /*<<< orphan*/  map_count; } ;
struct file {struct address_space* f_mapping; } ;
struct anon_vma {int dummy; } ;
struct address_space {struct rb_root_cached i_mmap; } ;
typedef  long pgoff_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,struct file*,struct address_space*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,struct vm_area_struct*,int /*<<< orphan*/ *,int,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*) ; 
 int FUNC6 (struct vm_area_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC10 (struct vm_area_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC12 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC13 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC14 (struct file*) ; 
 int /*<<< orphan*/  FUNC15 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC16 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct vm_area_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC19 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC20 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC22 (struct vm_area_struct*) ; 
 scalar_t__ FUNC23 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC24 (struct vm_area_struct*,unsigned long,unsigned long,long) ; 
 int /*<<< orphan*/  FUNC25 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC26 (struct vm_area_struct*,struct rb_root_cached*) ; 
 int /*<<< orphan*/  FUNC27 (struct vm_area_struct*,struct rb_root_cached*) ; 
 int /*<<< orphan*/  FUNC28 (struct vm_area_struct*) ; 

int FUNC29(struct vm_area_struct *vma, unsigned long start,
	unsigned long end, pgoff_t pgoff, struct vm_area_struct *insert,
	struct vm_area_struct *expand)
{
	struct mm_struct *mm = vma->vm_mm;
	struct vm_area_struct *next = vma->vm_next, *orig_vma = vma;
	struct address_space *mapping = NULL;
	struct rb_root_cached *root = NULL;
	struct anon_vma *anon_vma = NULL;
	struct file *file = vma->vm_file;
	bool start_changed = false, end_changed = false;
	long adjust_next = 0;
	int remove_next = 0;

	if (next && !insert) {
		struct vm_area_struct *exporter = NULL, *importer = NULL;

		if (end >= next->vm_end) {
			/*
			 * vma expands, overlapping all the next, and
			 * perhaps the one after too (mprotect case 6).
			 * The only other cases that gets here are
			 * case 1, case 7 and case 8.
			 */
			if (next == expand) {
				/*
				 * The only case where we don't expand "vma"
				 * and we expand "next" instead is case 8.
				 */
				FUNC0(end != next->vm_end);
				/*
				 * remove_next == 3 means we're
				 * removing "vma" and that to do so we
				 * swapped "vma" and "next".
				 */
				remove_next = 3;
				FUNC0(file != next->vm_file);
				FUNC18(vma, next);
			} else {
				FUNC0(expand != vma);
				/*
				 * case 1, 6, 7, remove_next == 2 is case 6,
				 * remove_next == 1 is case 1 or 7.
				 */
				remove_next = 1 + (end > next->vm_end);
				FUNC0(remove_next == 2 &&
					   end != next->vm_next->vm_end);
				FUNC0(remove_next == 1 &&
					   end != next->vm_end);
				/* trim end to next, for case 6 first pass */
				end = next->vm_end;
			}

			exporter = next;
			importer = vma;

			/*
			 * If next doesn't have anon_vma, import from vma after
			 * next, if the vma overlaps with it.
			 */
			if (remove_next == 2 && !next->anon_vma)
				exporter = next->vm_next;

		} else if (end > next->vm_start) {
			/*
			 * vma expands, overlapping part of the next:
			 * mprotect case 5 shifting the boundary up.
			 */
			adjust_next = (end - next->vm_start) >> PAGE_SHIFT;
			exporter = next;
			importer = vma;
			FUNC0(expand != importer);
		} else if (end < vma->vm_end) {
			/*
			 * vma shrinks, and !insert tells it's not
			 * split_vma inserting another: so it must be
			 * mprotect case 4 shifting the boundary down.
			 */
			adjust_next = -((vma->vm_end - end) >> PAGE_SHIFT);
			exporter = vma;
			importer = next;
			FUNC0(expand != importer);
		}

		/*
		 * Easily overlooked: when mprotect shifts the boundary,
		 * make sure the expanding vma has anon_vma set if the
		 * shrinking vma had, to cover any anon pages imported.
		 */
		if (exporter && exporter->anon_vma && !importer->anon_vma) {
			int error;

			importer->anon_vma = exporter->anon_vma;
			error = FUNC6(importer, exporter);
			if (error)
				return error;
		}
	}
again:
	FUNC24(orig_vma, start, end, adjust_next);

	if (file) {
		mapping = file->f_mapping;
		root = &mapping->i_mmap;
		FUNC20(vma, vma->vm_start, vma->vm_end);

		if (adjust_next)
			FUNC20(next, next->vm_start, next->vm_end);

		FUNC15(mapping);
		if (insert) {
			/*
			 * Put into interval tree now, so instantiated pages
			 * are visible to arm/parisc __flush_dcache_page
			 * throughout; but we cannot insert into address
			 * space until vma start or end is updated.
			 */
			FUNC3(insert);
		}
	}

	anon_vma = vma->anon_vma;
	if (!anon_vma && adjust_next)
		anon_vma = next->anon_vma;
	if (anon_vma) {
		FUNC0(adjust_next && next->anon_vma &&
			   anon_vma != next->anon_vma);
		FUNC9(anon_vma);
		FUNC8(vma);
		if (adjust_next)
			FUNC8(next);
	}

	if (root) {
		FUNC12(mapping);
		FUNC27(vma, root);
		if (adjust_next)
			FUNC27(next, root);
	}

	if (start != vma->vm_start) {
		vma->vm_start = start;
		start_changed = true;
	}
	if (end != vma->vm_end) {
		vma->vm_end = end;
		end_changed = true;
	}
	vma->vm_pgoff = pgoff;
	if (adjust_next) {
		next->vm_start += adjust_next << PAGE_SHIFT;
		next->vm_pgoff += adjust_next;
	}

	if (root) {
		if (adjust_next)
			FUNC26(next, root);
		FUNC26(vma, root);
		FUNC13(mapping);
	}

	if (remove_next) {
		/*
		 * vma_merge has merged next into vma, and needs
		 * us to remove next before dropping the locks.
		 */
		if (remove_next != 3)
			FUNC5(mm, next, vma);
		else
			/*
			 * vma is not before next if they've been
			 * swapped.
			 *
			 * pre-swap() next->vm_start was reduced so
			 * tell validate_mm_rb to ignore pre-swap()
			 * "next" (which is stored in post-swap()
			 * "vma").
			 */
			FUNC4(mm, next, NULL, false, vma);
		if (file)
			FUNC2(next, file, mapping);
	} else if (insert) {
		/*
		 * split_vma has split insert from vma, and needs
		 * us to insert it before dropping the locks
		 * (it may either follow vma or precede it).
		 */
		FUNC1(mm, insert);
	} else {
		if (start_changed)
			FUNC25(vma);
		if (end_changed) {
			if (!next)
				mm->highest_vm_end = FUNC23(vma);
			else if (!adjust_next)
				FUNC25(next);
		}
	}

	if (anon_vma) {
		FUNC7(vma);
		if (adjust_next)
			FUNC7(next);
		FUNC11(anon_vma);
	}
	if (mapping)
		FUNC16(mapping);

	if (root) {
		FUNC19(vma);

		if (adjust_next)
			FUNC19(next);
	}

	if (remove_next) {
		if (file) {
			FUNC20(next, next->vm_start, next->vm_end);
			FUNC14(file);
		}
		if (next->anon_vma)
			FUNC10(vma, next);
		mm->map_count--;
		FUNC17(FUNC28(next));
		FUNC22(next);
		/*
		 * In mprotect's case 6 (see comments on vma_merge),
		 * we must remove another next too. It would clutter
		 * up the code too much to do both in one go.
		 */
		if (remove_next != 3) {
			/*
			 * If "next" was removed and vma->vm_end was
			 * expanded (up) over it, in turn
			 * "next->vm_prev->vm_end" changed and the
			 * "vma->vm_next" gap must be updated.
			 */
			next = vma->vm_next;
		} else {
			/*
			 * For the scope of the comment "next" and
			 * "vma" considered pre-swap(): if "vma" was
			 * removed, next->vm_start was expanded (down)
			 * over it and the "next" gap must be updated.
			 * Because of the swap() the post-swap() "vma"
			 * actually points to pre-swap() "next"
			 * (post-swap() "next" as opposed is now a
			 * dangling pointer).
			 */
			next = vma;
		}
		if (remove_next == 2) {
			remove_next = 1;
			end = next->vm_end;
			goto again;
		}
		else if (next)
			FUNC25(next);
		else {
			/*
			 * If remove_next == 2 we obviously can't
			 * reach this path.
			 *
			 * If remove_next == 3 we can't reach this
			 * path because pre-swap() next is always not
			 * NULL. pre-swap() "next" is not being
			 * removed and its next->vm_end is not altered
			 * (and furthermore "end" already matches
			 * next->vm_end in remove_next == 3).
			 *
			 * We reach this only in the remove_next == 1
			 * case if the "next" vma that was removed was
			 * the highest vma of the mm. However in such
			 * case next->vm_end == "end" and the extended
			 * "vma" has vma->vm_end == next->vm_end so
			 * mm->highest_vm_end doesn't need any update
			 * in remove_next == 1 case.
			 */
			FUNC0(mm->highest_vm_end != FUNC23(vma));
		}
	}
	if (insert && file)
		FUNC19(insert);

	FUNC21(mm);

	return 0;
}