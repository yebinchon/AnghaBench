; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32, i32, i32, i32 }

@HDSPM_ClockModeMaster = common dso_local global i32 0, align 4
@HDSPM_SyncRef0 = common dso_local global i32 0, align 4
@HDSPM_LineOut = common dso_local global i32 0, align 4
@HDSPM_Professional = common dso_local global i32 0, align 4
@HDSPM_controlRegister = common dso_local global i32 0, align 4
@HDSPM_control2Reg = common dso_local global i32 0, align 4
@UNITY_GAIN = common dso_local global i32 0, align 4
@HDSPM_WR_SETTINGS = common dso_local global i32 0, align 4
@HDSPM_BIGENDIAN_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*)* @snd_hdspm_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_set_defaults(%struct.hdspm* %0) #0 {
  %2 = alloca %struct.hdspm*, align 8
  store %struct.hdspm* %0, %struct.hdspm** %2, align 8
  %3 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %4 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %6 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %28 [
    i32 130, label %8
    i32 129, label %8
    i32 128, label %11
    i32 131, label %11
    i32 132, label %16
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %10 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %9, i32 0, i32 2
  store i32 16794778, i32* %10, align 4
  br label %28

11:                                               ; preds = %1, %1
  %12 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %13 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %12, i32 0, i32 0
  store i32 4097, i32* %13, align 4
  %14 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %15 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %14, i32 0, i32 2
  store i32 16794778, i32* %15, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load i32, i32* @HDSPM_ClockModeMaster, align 4
  %18 = call i32 @hdspm_encode_latency(i32 7)
  %19 = or i32 %17, %18
  %20 = load i32, i32* @HDSPM_SyncRef0, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @HDSPM_LineOut, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HDSPM_Professional, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %27 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %1, %16, %11, %8
  %29 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %30 = load i32, i32* @HDSPM_controlRegister, align 4
  %31 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %32 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hdspm_write(%struct.hdspm* %29, i32 %30, i32 %33)
  %35 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %36 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 132, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %41 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %40, i32 0, i32 3
  store i32 0, i32* %41, align 4
  %42 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %43 = load i32, i32* @HDSPM_control2Reg, align 4
  %44 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %45 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @hdspm_write(%struct.hdspm* %42, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %39, %28
  %49 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %50 = call i32 @hdspm_compute_period_size(%struct.hdspm* %49)
  %51 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %52 = load i32, i32* @UNITY_GAIN, align 4
  %53 = mul nsw i32 0, %52
  %54 = call i32 @all_in_all_mixer(%struct.hdspm* %51, i32 %53)
  %55 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %56 = call i64 @hdspm_is_raydat_or_aio(%struct.hdspm* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %60 = load i32, i32* @HDSPM_WR_SETTINGS, align 4
  %61 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %62 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hdspm_write(%struct.hdspm* %59, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %58, %48
  %66 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %67 = call i32 @hdspm_set_rate(%struct.hdspm* %66, i32 48000, i32 1)
  ret i32 0
}

declare dso_local i32 @hdspm_encode_latency(i32) #1

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

declare dso_local i32 @hdspm_compute_period_size(%struct.hdspm*) #1

declare dso_local i32 @all_in_all_mixer(%struct.hdspm*, i32) #1

declare dso_local i64 @hdspm_is_raydat_or_aio(%struct.hdspm*) #1

declare dso_local i32 @hdspm_set_rate(%struct.hdspm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
