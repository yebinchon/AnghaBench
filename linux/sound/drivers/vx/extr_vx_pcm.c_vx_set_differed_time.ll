; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_set_differed_time.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_set_differed_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.vx_rmh = type { i32, i32* }
%struct.vx_pipe = type { i32, i32 }

@DC_DIFFERED_DELAY = common dso_local global i32 0, align 4
@DSP_DIFFERED_COMMAND_MASK = common dso_local global i32 0, align 4
@DC_NOTIFY_DELAY = common dso_local global i32 0, align 4
@NOTIFY_MASK_TIME_HIGH = common dso_local global i32 0, align 4
@DC_MULTIPLE_DELAY = common dso_local global i32 0, align 4
@MULTIPLE_MASK_TIME_HIGH = common dso_local global i32 0, align 4
@DC_STREAM_TIME_DELAY = common dso_local global i32 0, align 4
@STREAM_MASK_TIME_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, %struct.vx_rmh*, %struct.vx_pipe*)* @vx_set_differed_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_set_differed_time(%struct.vx_core* %0, %struct.vx_rmh* %1, %struct.vx_pipe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.vx_rmh*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store %struct.vx_rmh* %1, %struct.vx_rmh** %6, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %7, align 8
  %8 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %9 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DC_DIFFERED_DELAY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

15:                                               ; preds = %3
  %16 = load i32, i32* @DSP_DIFFERED_COMMAND_MASK, align 4
  %17 = load %struct.vx_rmh*, %struct.vx_rmh** %6, align 8
  %18 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %16
  store i32 %22, i32* %20, align 4
  %23 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %24 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %25 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %24, i32 0, i32 1
  %26 = load %struct.vx_rmh*, %struct.vx_rmh** %6, align 8
  %27 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = call i32 @vx_set_pcx_time(%struct.vx_core* %23, i32* %25, i32* %29)
  %31 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %32 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DC_NOTIFY_DELAY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %15
  %38 = load i32, i32* @NOTIFY_MASK_TIME_HIGH, align 4
  %39 = load %struct.vx_rmh*, %struct.vx_rmh** %6, align 8
  %40 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %38
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %37, %15
  %46 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %47 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DC_MULTIPLE_DELAY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* @MULTIPLE_MASK_TIME_HIGH, align 4
  %54 = load %struct.vx_rmh*, %struct.vx_rmh** %6, align 8
  %55 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %52, %45
  %61 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %62 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DC_STREAM_TIME_DELAY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load i32, i32* @STREAM_MASK_TIME_HIGH, align 4
  %69 = load %struct.vx_rmh*, %struct.vx_rmh** %6, align 8
  %70 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %67, %60
  %76 = load %struct.vx_rmh*, %struct.vx_rmh** %6, align 8
  %77 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %77, align 8
  store i32 2, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %14
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @vx_set_pcx_time(%struct.vx_core*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
