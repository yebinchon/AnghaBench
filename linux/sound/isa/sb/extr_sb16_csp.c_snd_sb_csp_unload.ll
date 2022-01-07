; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_snd_sb_csp_unload.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_snd_sb_csp_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb_csp = type { i32, i64, i64, i64, i64, i64 }

@SNDRV_SB_CSP_ST_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_ST_LOADED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_MODE_QSOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb_csp*)* @snd_sb_csp_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb_csp_unload(%struct.snd_sb_csp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sb_csp*, align 8
  store %struct.snd_sb_csp* %0, %struct.snd_sb_csp** %3, align 8
  %4 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %5 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SNDRV_SB_CSP_ST_RUNNING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %15 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SNDRV_SB_CSP_ST_LOADED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %45

23:                                               ; preds = %13
  %24 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %25 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %27 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %29 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %31 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %33 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SNDRV_SB_CSP_MODE_QSOUND, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %39 = call i32 @snd_sb_qsound_destroy(%struct.snd_sb_csp* %38)
  br label %40

40:                                               ; preds = %37, %23
  %41 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %42 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %44 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %20, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @snd_sb_qsound_destroy(%struct.snd_sb_csp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
