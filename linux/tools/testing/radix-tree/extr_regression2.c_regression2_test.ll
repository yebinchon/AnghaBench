; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_regression2.c_regression2_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_regression2.c_regression2_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@RADIX_TREE_MAP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"running regression test 2 (should take milliseconds)\0A\00", align 1
@mt_tree = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@PAGECACHE_TAG_TOWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"regression test 2, done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regression2_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [1 x %struct.page*], align 8
  %7 = load i32, i32* @RADIX_TREE_MAP_SIZE, align 4
  store i32 %7, i32* %3, align 4
  %8 = call i32 @printv(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %19, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, 1
  %13 = icmp sle i32 %10, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = call %struct.page* (...) @page_alloc()
  store %struct.page* %15, %struct.page** %2, align 8
  %16 = load i32, i32* %1, align 4
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i32 @radix_tree_insert(i32* @mt_tree, i32 %16, %struct.page* %17)
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %9

22:                                               ; preds = %9
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %26 = call i32 @radix_tree_tag_set(i32* @mt_tree, i32 %24, i32 %25)
  store i64 0, i64* %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sub nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %33 = load i32, i32* @PAGECACHE_TAG_TOWRITE, align 4
  %34 = call i32 @tag_tagged_items(i32* @mt_tree, i64 %30, i64 %31, i32 1, i32 %32, i32 %33)
  %35 = call %struct.page* (...) @page_alloc()
  store %struct.page* %35, %struct.page** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.page*, %struct.page** %2, align 8
  %38 = call i32 @radix_tree_insert(i32* @mt_tree, i32 %36, %struct.page* %37)
  %39 = load i32, i32* %3, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %42 = call i32 @radix_tree_tag_clear(i32* @mt_tree, i32 %40, i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %52, %22
  %46 = load i32, i32* %1, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @radix_tree_delete(i32* @mt_tree, i32 %49)
  %51 = call i32 @free(i32 %50)
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %1, align 4
  br label %45

55:                                               ; preds = %45
  store i64 1, i64* %4, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sub nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %5, align 8
  %59 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %6, i64 0, i64 0
  %60 = bitcast %struct.page** %59 to i8***
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* @PAGECACHE_TAG_TOWRITE, align 4
  %64 = call i32 @radix_tree_gang_lookup_tag_slot(i32* @mt_tree, i8*** %60, i64 %61, i64 %62, i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @radix_tree_delete(i32* @mt_tree, i32 %65)
  %67 = call i32 @free(i32 %66)
  %68 = call i32 @radix_tree_empty(i32* @mt_tree)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = call i32 @printv(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printv(i32, i8*) #1

declare dso_local %struct.page* @page_alloc(...) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.page*) #1

declare dso_local i32 @radix_tree_tag_set(i32*, i32, i32) #1

declare dso_local i32 @tag_tagged_items(i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @radix_tree_tag_clear(i32*, i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @radix_tree_gang_lookup_tag_slot(i32*, i8***, i64, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @radix_tree_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
