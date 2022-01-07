; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_disable_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_disable_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cp_control = type { i32 }

@SB_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"checkpoint=disable on readonly fs\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SB_ACTIVE = common dso_local global i32 0, align 4
@DISABLE_TIME = common dso_local global i32 0, align 4
@NULL_SEGNO = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CP_PAUSE = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @f2fs_disable_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_disable_checkpoint(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cp_control, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SB_RDONLY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %20 = call i32 @f2fs_err(%struct.f2fs_sb_info* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %126

23:                                               ; preds = %1
  %24 = load i32, i32* @SB_ACTIVE, align 4
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %24
  store i32 %30, i32* %28, align 4
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %32 = load i32, i32* @DISABLE_TIME, align 4
  %33 = call i32 @f2fs_update_time(%struct.f2fs_sb_info* %31, i32 %32)
  br label %34

34:                                               ; preds = %61, %23
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %36 = load i32, i32* @DISABLE_TIME, align 4
  %37 = call i32 @f2fs_time_over(%struct.f2fs_sb_info* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %42 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %45 = load i32, i32* @NULL_SEGNO, align 4
  %46 = call i32 @f2fs_gc(%struct.f2fs_sb_info* %44, i32 1, i32 0, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @ENODATA, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %62

52:                                               ; preds = %40
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %62

61:                                               ; preds = %55, %52
  br label %34

62:                                               ; preds = %60, %51, %34
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %64 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 @sync_filesystem(%struct.TYPE_2__* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69, %62
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  br label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %6, align 4
  br label %119

81:                                               ; preds = %69
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %83 = call i32 @f2fs_get_unusable_blocks(%struct.f2fs_sb_info* %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i64 @f2fs_disable_cp_again(%struct.f2fs_sb_info* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* @EAGAIN, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %119

91:                                               ; preds = %81
  %92 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %93 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %92, i32 0, i32 1
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load i32, i32* @CP_PAUSE, align 4
  %96 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %5, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %98 = load i32, i32* @SBI_CP_DISABLED, align 4
  %99 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %97, i32 %98)
  %100 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %101 = call i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info* %100, %struct.cp_control* %5)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %115

105:                                              ; preds = %91
  %106 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %107 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %106, i32 0, i32 2
  %108 = call i32 @spin_lock(i32* %107)
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %111 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %113 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %112, i32 0, i32 2
  %114 = call i32 @spin_unlock(i32* %113)
  br label %115

115:                                              ; preds = %105, %104
  %116 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %117 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  br label %119

119:                                              ; preds = %115, %88, %79
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %122 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %119, %18
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @f2fs_err(%struct.f2fs_sb_info*, i8*) #1

declare dso_local i32 @f2fs_update_time(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_time_over(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @f2fs_gc(%struct.f2fs_sb_info*, i32, i32, i32) #1

declare dso_local i32 @sync_filesystem(%struct.TYPE_2__*) #1

declare dso_local i32 @f2fs_get_unusable_blocks(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_disable_cp_again(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info*, %struct.cp_control*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
