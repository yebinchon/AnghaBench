; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_extend_no_holes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_extend_no_holes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_inode_info = type { i32, i64 }

@OCFS2_INODE_SYSTEM_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_extend_no_holes(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %12)
  store %struct.ocfs2_inode_info* %13, %struct.ocfs2_inode_info** %11, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %15 = icmp ne %struct.buffer_head* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i64 @ocfs2_is_refcount_inode(%struct.inode* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i1 [ false, %4 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %25 = icmp ne %struct.buffer_head* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %28 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @OCFS2_INODE_SYSTEM_FILE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %26, %20
  %35 = phi i1 [ false, %20 ], [ %33, %26 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @ocfs2_clusters_for_bytes(i32 %40, i32 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %45 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i64 0, i64* %10, align 8
  br label %55

49:                                               ; preds = %34
  %50 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %51 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %49, %48
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %61 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @ocfs2_extend_allocation(%struct.inode* %59, i64 %62, i64 %63, i32 0)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %82

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ocfs2_zero_extend(%struct.inode* %72, %struct.buffer_head* %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @mlog_errno(i32 %79)
  br label %81

81:                                               ; preds = %78, %71
  br label %82

82:                                               ; preds = %81, %67
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i64 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_extend_allocation(%struct.inode*, i64, i64, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_zero_extend(%struct.inode*, %struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
