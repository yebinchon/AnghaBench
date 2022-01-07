; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_has_curseg_enough_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_has_curseg_enough_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@F2FS_DIRTY_NODES = common dso_local global i32 0, align 4
@F2FS_DIRTY_DENTS = common dso_local global i32 0, align 4
@CURSEG_HOT_NODE = common dso_local global i32 0, align 4
@CURSEG_COLD_NODE = common dso_local global i32 0, align 4
@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @has_curseg_enough_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_curseg_enough_space(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %10 = load i32, i32* @F2FS_DIRTY_NODES, align 4
  %11 = call i32 @get_pages(%struct.f2fs_sb_info* %9, i32 %10)
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %13 = load i32, i32* @F2FS_DIRTY_DENTS, align 4
  %14 = call i32 @get_pages(%struct.f2fs_sb_info* %12, i32 %13)
  %15 = add i32 %11, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %17 = load i32, i32* @F2FS_DIRTY_DENTS, align 4
  %18 = call i32 @get_pages(%struct.f2fs_sb_info* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @CURSEG_HOT_NODE, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %44, %1
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @CURSEG_COLD_NODE, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.TYPE_4__* @CURSEG_I(%struct.f2fs_sb_info* %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %31 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.TYPE_3__* @get_seg_entry(%struct.f2fs_sb_info* %33, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %32, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %67

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %20

47:                                               ; preds = %20
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %49 = load i32, i32* @CURSEG_HOT_DATA, align 4
  %50 = call %struct.TYPE_4__* @CURSEG_I(%struct.f2fs_sb_info* %48, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %54 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call %struct.TYPE_3__* @get_seg_entry(%struct.f2fs_sb_info* %56, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %55, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %67

66:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %65, %42
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @get_pages(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.TYPE_4__* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.TYPE_3__* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
