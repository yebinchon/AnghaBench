; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_num_free_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_num_free_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32, %struct.ocfs2_extent_list* }
%struct.ocfs2_extent_list = type { i64, i32, i32 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }
%struct.buffer_head = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_num_free_extents(%struct.ocfs2_extent_tree* %0) #0 {
  %2 = alloca %struct.ocfs2_extent_tree*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_extent_list*, align 8
  %5 = alloca %struct.ocfs2_extent_block*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %2, align 8
  store %struct.ocfs2_extent_list* null, %struct.ocfs2_extent_list** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %2, align 8
  %9 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %8, i32 0, i32 1
  %10 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  store %struct.ocfs2_extent_list* %10, %struct.ocfs2_extent_list** %4, align 8
  %11 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %2, align 8
  %12 = call i64 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %2, align 8
  %17 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @ocfs2_read_extent_block(i32 %18, i64 %19, %struct.buffer_head** %6)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  br label %49

26:                                               ; preds = %15
  %27 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %30, %struct.ocfs2_extent_block** %5, align 8
  %31 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %5, align 8
  %32 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %31, i32 0, i32 0
  store %struct.ocfs2_extent_list* %32, %struct.ocfs2_extent_list** %4, align 8
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %4, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %4, align 8
  %41 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %4, align 8
  %45 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = sub nsw i32 %43, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %33, %23
  %50 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %51 = call i32 @brelse(%struct.buffer_head* %50)
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @trace_ocfs2_num_free_extents(i32 %52)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i64, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @trace_ocfs2_num_free_extents(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
