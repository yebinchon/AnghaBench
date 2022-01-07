; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_snd_sb_csp_qsound_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_snd_sb_csp_qsound_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb_csp = type { i32, i32, i32, i32, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_ST_QSOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb_csp*)* @snd_sb_csp_qsound_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb_csp_qsound_transfer(%struct.snd_sb_csp* %0) #0 {
  %2 = alloca %struct.snd_sb_csp*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_sb_csp* %0, %struct.snd_sb_csp** %2, align 8
  %4 = load i32, i32* @ENXIO, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %7 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %6, i32 0, i32 3
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %10 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SNDRV_SB_CSP_ST_QSOUND, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %1
  %16 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %17 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @set_codec_parameter(i32 %18, i32 224, i32 1)
  %20 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %21 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %24 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_codec_parameter(i32 %22, i32 0, i32 %25)
  %27 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %28 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @set_codec_parameter(i32 %29, i32 2, i32 0)
  %31 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %32 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %35 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @set_codec_parameter(i32 %33, i32 0, i32 %36)
  %38 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %39 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @set_codec_parameter(i32 %40, i32 3, i32 0)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %15, %1
  %43 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %44 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %46 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %45, i32 0, i32 3
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_codec_parameter(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
