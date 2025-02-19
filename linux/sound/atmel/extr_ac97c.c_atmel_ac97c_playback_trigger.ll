; ModuleID = '/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.atmel_ac97c = type { i32, i64 }

@CAMR = common dso_local global i32 0, align 4
@ATMEL_PDC_TXTEN = common dso_local global i64 0, align 8
@AC97C_CMR_CENA = common dso_local global i64 0, align 8
@AC97C_CSR_ENDTX = common dso_local global i64 0, align 8
@ATMEL_PDC_TXTDIS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ATMEL_PDC_PTCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @atmel_ac97c_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ac97c_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_ac97c*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.atmel_ac97c* %10, %struct.atmel_ac97c** %6, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %12 = load i32, i32* @CAMR, align 4
  %13 = call i64 @ac97c_readl(%struct.atmel_ac97c* %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %36 [
    i32 132, label %15
    i32 131, label %15
    i32 130, label %15
    i32 133, label %22
    i32 128, label %22
    i32 129, label %22
  ]

15:                                               ; preds = %2, %2, %2
  %16 = load i64, i64* @ATMEL_PDC_TXTEN, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* @AC97C_CMR_CENA, align 8
  %18 = load i64, i64* @AC97C_CSR_ENDTX, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* %7, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %7, align 8
  br label %39

22:                                               ; preds = %2, %2, %2
  %23 = load i64, i64* @ATMEL_PDC_TXTDIS, align 8
  %24 = load i64, i64* %8, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %8, align 8
  %26 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %27 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i64, i64* @AC97C_CMR_CENA, align 8
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %30, %22
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %51

39:                                               ; preds = %35, %15
  %40 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %41 = load i32, i32* @CAMR, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @ac97c_writel(%struct.atmel_ac97c* %40, i32 %41, i64 %42)
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %46 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ATMEL_PDC_PTCR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i64 %44, i64 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %39, %36
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @ac97c_readl(%struct.atmel_ac97c*, i32) #1

declare dso_local i32 @ac97c_writel(%struct.atmel_ac97c*, i32, i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
