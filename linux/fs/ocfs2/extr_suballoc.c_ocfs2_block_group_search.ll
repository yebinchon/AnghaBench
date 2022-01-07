; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_search.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_suballoc_result = type { i64, i64 }
%struct.ocfs2_group_desc = type { i32, i32, i64 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32, i32, i64, %struct.ocfs2_suballoc_result*)* @ocfs2_block_group_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_block_group_search(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i64 %4, %struct.ocfs2_suballoc_result* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ocfs2_suballoc_result*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store %struct.ocfs2_suballoc_result* %5, %struct.ocfs2_suballoc_result** %12, align 8
  %16 = load i32, i32* @ENOSPC, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %13, align 4
  %18 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %21, %struct.ocfs2_group_desc** %15, align 8
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call i32 @ocfs2_is_cluster_bitmap(%struct.inode* %26)
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %15, align 8
  %30 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %6
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @OCFS2_SB(i32 %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %15, align 8
  %41 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %12, align 8
  %45 = call i32 @ocfs2_block_group_find_clear_bits(i32 %37, %struct.buffer_head* %38, i32 %39, i32 %43, %struct.ocfs2_suballoc_result* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %33
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %15, align 8
  %53 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @le64_to_cpu(i32 %54)
  %56 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %12, align 8
  %57 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %12, align 8
  %61 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  store i64 %63, i64* %14, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @trace_ocfs2_block_group_search_max_block(i64 %64, i64 %65)
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load i32, i32* @ENOSPC, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %70, %51
  br label %74

74:                                               ; preds = %73, %48, %33
  br label %75

75:                                               ; preds = %74, %6
  %76 = load i32, i32* %13, align 4
  ret i32 %76
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_cluster_bitmap(%struct.inode*) #1

declare dso_local i32 @ocfs2_block_group_find_clear_bits(i32, %struct.buffer_head*, i32, i32, %struct.ocfs2_suballoc_result*) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_block_group_search_max_block(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
