; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32, %struct.TYPE_2__*, i32, %struct.buffer_head* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dx_root_block = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_dir_lookup_result*)* @ocfs2_dx_dir_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dx_dir_insert(%struct.inode* %0, i32* %1, %struct.ocfs2_dir_lookup_result* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_dx_root_block*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ocfs2_dir_lookup_result* %2, %struct.ocfs2_dir_lookup_result** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %6, align 8
  %11 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %10, i32 0, i32 3
  %12 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %12, %struct.buffer_head** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i32 @INODE_CACHE(%struct.inode* %14)
  %16 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %17 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %18 = call i32 @ocfs2_journal_access_dr(i32* %13, i32 %15, %struct.buffer_head* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @mlog_errno(i32 %22)
  br label %71

24:                                               ; preds = %3
  %25 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %6, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %25, i32 0, i32 3
  %27 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %30, %struct.ocfs2_dx_root_block** %8, align 8
  %31 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %8, align 8
  %32 = call i64 @ocfs2_dx_root_inline(%struct.ocfs2_dx_root_block* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %24
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %6, align 8
  %38 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %37, i32 0, i32 2
  %39 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %6, align 8
  %40 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %8, align 8
  %45 = call i32 @ocfs2_dx_inline_root_insert(%struct.inode* %35, i32* %36, i32* %38, i32 %43, %struct.ocfs2_dx_root_block* %44)
  br label %64

46:                                               ; preds = %24
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %6, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %49, i32 0, i32 2
  %51 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %6, align 8
  %52 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %6, align 8
  %57 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @__ocfs2_dx_dir_leaf_insert(%struct.inode* %47, i32* %48, i32* %50, i32 %55, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %71

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %34
  %65 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %8, align 8
  %66 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %65, i32 0, i32 0
  %67 = call i32 @le32_add_cpu(i32* %66, i32 1)
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %70 = call i32 @ocfs2_journal_dirty(i32* %68, %struct.buffer_head* %69)
  br label %71

71:                                               ; preds = %64, %62, %21
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @ocfs2_journal_access_dr(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_dx_root_inline(%struct.ocfs2_dx_root_block*) #1

declare dso_local i32 @ocfs2_dx_inline_root_insert(%struct.inode*, i32*, i32*, i32, %struct.ocfs2_dx_root_block*) #1

declare dso_local i32 @__ocfs2_dx_dir_leaf_insert(%struct.inode*, i32*, i32*, i32, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
