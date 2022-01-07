; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_uer.c_vx_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_uer.c_vx_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32, i64, i64, i64, i32 }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@VX_CLOCK_MODE_EXTERNAL = common dso_local global i64 0, align 8
@VX_CLOCK_MODE_AUTO = common dso_local global i64 0, align 8
@VX_AUDIO_SRC_DIGITAL = common dso_local global i64 0, align 8
@UER_SYNC = common dso_local global i64 0, align 8
@VX_CLOCK_MODE_INTERNAL = common dso_local global i64 0, align 8
@INTERNAL_QUARTZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vx_set_clock(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %8 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %105

14:                                               ; preds = %2
  %15 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %16 = call i32 @vx_sync_audio_source(%struct.vx_core* %15)
  %17 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %18 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VX_CLOCK_MODE_EXTERNAL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %14
  %23 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %24 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VX_CLOCK_MODE_AUTO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %30 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VX_AUDIO_SRC_DIGITAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28, %14
  %35 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %36 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UER_SYNC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %42 = load i64, i64* @UER_SYNC, align 8
  %43 = call i32 @vx_change_clock_source(%struct.vx_core* %41, i64 %42)
  %44 = call i32 @mdelay(i32 6)
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %34
  br label %92

46:                                               ; preds = %28, %22
  %47 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %48 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VX_CLOCK_MODE_INTERNAL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %54 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VX_CLOCK_MODE_AUTO, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %52
  %59 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %60 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @VX_AUDIO_SRC_DIGITAL, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %58, %46
  %65 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %66 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @INTERNAL_QUARTZ, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %72 = load i64, i64* @INTERNAL_QUARTZ, align 8
  %73 = call i32 @vx_change_clock_source(%struct.vx_core* %71, i64 %72)
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %76 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %105

81:                                               ; preds = %74
  %82 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @vx_set_internal_clock(%struct.vx_core* %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %89 = call i32 @vx_modify_board_inputs(%struct.vx_core* %88)
  br label %90

90:                                               ; preds = %87, %81
  br label %91

91:                                               ; preds = %90, %58, %52
  br label %92

92:                                               ; preds = %91, %45
  %93 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %94 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %105

99:                                               ; preds = %92
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %102 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %104 = call i32 @vx_modify_board_clock(%struct.vx_core* %103, i32 1)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %99, %98, %80, %13
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @vx_sync_audio_source(%struct.vx_core*) #1

declare dso_local i32 @vx_change_clock_source(%struct.vx_core*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @vx_set_internal_clock(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_modify_board_inputs(%struct.vx_core*) #1

declare dso_local i32 @vx_modify_board_clock(%struct.vx_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
