; ModuleID = '/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.atmel_ac97c = type { i32, i64 }

@CAMR = common dso_local global i32 0, align 4
@ATMEL_PDC_PTSR = common dso_local global i64 0, align 8
@ATMEL_PDC_RXTEN = common dso_local global i64 0, align 8
@AC97C_CMR_CENA = common dso_local global i64 0, align 8
@AC97C_CSR_ENDRX = common dso_local global i64 0, align 8
@ATMEL_PDC_RXTDIS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ATMEL_PDC_PTCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @atmel_ac97c_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ac97c_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
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
  %14 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %15 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ATMEL_PDC_PTSR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @readl(i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %42 [
    i32 132, label %21
    i32 131, label %21
    i32 130, label %21
    i32 133, label %28
    i32 128, label %28
    i32 129, label %28
  ]

21:                                               ; preds = %2, %2, %2
  %22 = load i64, i64* @ATMEL_PDC_RXTEN, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* @AC97C_CMR_CENA, align 8
  %24 = load i64, i64* @AC97C_CSR_ENDRX, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* %7, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %7, align 8
  br label %45

28:                                               ; preds = %2, %2, %2
  %29 = load i64, i64* @ATMEL_PDC_RXTDIS, align 8
  %30 = load i64, i64* %8, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %8, align 8
  %32 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %33 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sle i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i64, i64* @AC97C_CMR_CENA, align 8
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %7, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %36, %28
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %57

45:                                               ; preds = %41, %21
  %46 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %47 = load i32, i32* @CAMR, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @ac97c_writel(%struct.atmel_ac97c* %46, i32 %47, i64 %48)
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %6, align 8
  %52 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ATMEL_PDC_PTCR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i64 %50, i64 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %45, %42
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @ac97c_readl(%struct.atmel_ac97c*, i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @ac97c_writel(%struct.atmel_ac97c*, i32, i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
