; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___get_segment_type_4.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___get_segment_type_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_io_info = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }

@DATA = common dso_local global i64 0, align 8
@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@CURSEG_WARM_NODE = common dso_local global i32 0, align 4
@CURSEG_COLD_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_io_info*)* @__get_segment_type_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_segment_type_4(%struct.f2fs_io_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_io_info*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.f2fs_io_info* %0, %struct.f2fs_io_info** %3, align 8
  %5 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %6 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DATA, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %12 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %4, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @S_ISDIR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %10
  %24 = load i32, i32* @CURSEG_HOT_DATA, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %10
  %26 = load i32, i32* @CURSEG_COLD_DATA, align 4
  store i32 %26, i32* %2, align 4
  br label %43

27:                                               ; preds = %1
  %28 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %29 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = call i64 @IS_DNODE(%struct.TYPE_5__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %35 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = call i64 @is_cold_node(%struct.TYPE_5__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @CURSEG_WARM_NODE, align 4
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %33, %27
  %42 = load i32, i32* @CURSEG_COLD_NODE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %39, %25, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @IS_DNODE(%struct.TYPE_5__*) #1

declare dso_local i64 @is_cold_node(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
