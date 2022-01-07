; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___get_segment_type_6.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___get_segment_type_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_io_info = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }

@DATA = common dso_local global i64 0, align 8
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@FI_HOT_DATA = common dso_local global i32 0, align 4
@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@CURSEG_WARM_NODE = common dso_local global i32 0, align 4
@CURSEG_HOT_NODE = common dso_local global i32 0, align 4
@CURSEG_COLD_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_io_info*)* @__get_segment_type_6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_segment_type_6(%struct.f2fs_io_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_io_info*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.f2fs_io_info* %0, %struct.f2fs_io_info** %3, align 8
  %5 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %6 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DATA, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  %11 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %12 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %4, align 8
  %18 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %19 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i64 @is_cold_data(%struct.TYPE_6__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %10
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i64 @file_is_cold(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %10
  %28 = load i32, i32* @CURSEG_COLD_DATA, align 4
  store i32 %28, i32* %2, align 4
  br label %73

29:                                               ; preds = %23
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call i64 @file_is_hot(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = load i32, i32* @FI_HOT_DATA, align 4
  %36 = call i64 @is_inode_flag_set(%struct.inode* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call i64 @f2fs_is_atomic_file(%struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i64 @f2fs_is_volatile_file(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38, %33, %29
  %47 = load i32, i32* @CURSEG_HOT_DATA, align 4
  store i32 %47, i32* %2, align 4
  br label %73

48:                                               ; preds = %42
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @f2fs_rw_hint_to_seg_type(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %73

53:                                               ; preds = %1
  %54 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %55 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i64 @IS_DNODE(%struct.TYPE_6__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %61 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i64 @is_cold_node(%struct.TYPE_6__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @CURSEG_WARM_NODE, align 4
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @CURSEG_HOT_NODE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %53
  %72 = load i32, i32* @CURSEG_COLD_NODE, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %69, %48, %46, %27
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @is_cold_data(%struct.TYPE_6__*) #1

declare dso_local i64 @file_is_cold(%struct.inode*) #1

declare dso_local i64 @file_is_hot(%struct.inode*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local i64 @f2fs_is_volatile_file(%struct.inode*) #1

declare dso_local i32 @f2fs_rw_hint_to_seg_type(i32) #1

declare dso_local i64 @IS_DNODE(%struct.TYPE_6__*) #1

declare dso_local i64 @is_cold_node(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
