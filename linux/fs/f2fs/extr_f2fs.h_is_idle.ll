; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_is_idle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_is_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GC_URGENT = common dso_local global i64 0, align 8
@F2FS_RD_DATA = common dso_local global i32 0, align 4
@F2FS_RD_NODE = common dso_local global i32 0, align 4
@F2FS_RD_META = common dso_local global i32 0, align 4
@F2FS_WB_DATA = common dso_local global i32 0, align 4
@F2FS_WB_CP_DATA = common dso_local global i32 0, align 4
@F2FS_DIO_READ = common dso_local global i32 0, align 4
@F2FS_DIO_WRITE = common dso_local global i32 0, align 4
@DISCARD_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32)* @is_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_idle(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %7 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @GC_URGENT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %94

12:                                               ; preds = %2
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %14 = load i32, i32* @F2FS_RD_DATA, align 4
  %15 = call i64 @get_pages(%struct.f2fs_sb_info* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %12
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %19 = load i32, i32* @F2FS_RD_NODE, align 4
  %20 = call i64 @get_pages(%struct.f2fs_sb_info* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %17
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %24 = load i32, i32* @F2FS_RD_META, align 4
  %25 = call i64 @get_pages(%struct.f2fs_sb_info* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %29 = load i32, i32* @F2FS_WB_DATA, align 4
  %30 = call i64 @get_pages(%struct.f2fs_sb_info* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %34 = load i32, i32* @F2FS_WB_CP_DATA, align 4
  %35 = call i64 @get_pages(%struct.f2fs_sb_info* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %39 = load i32, i32* @F2FS_DIO_READ, align 4
  %40 = call i64 @get_pages(%struct.f2fs_sb_info* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %44 = load i32, i32* @F2FS_DIO_WRITE, align 4
  %45 = call i64 @get_pages(%struct.f2fs_sb_info* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37, %32, %27, %22, %17, %12
  store i32 0, i32* %3, align 4
  br label %94

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @DISCARD_TIME, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %54 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %53)
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %58 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %64 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i64 @atomic_read(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %94

71:                                               ; preds = %62, %56, %52, %48
  %72 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %73 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %72)
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %77 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %76)
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %83 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = call i64 @atomic_read(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %94

90:                                               ; preds = %81, %75, %71
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @f2fs_time_over(%struct.f2fs_sb_info* %91, i32 %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %89, %70, %47, %11
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @get_pages(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @f2fs_time_over(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
