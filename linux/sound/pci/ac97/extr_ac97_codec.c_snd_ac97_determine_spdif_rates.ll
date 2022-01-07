; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_determine_spdif_rates.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_determine_spdif_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@snd_ac97_determine_spdif_rates.ctl_bits = internal global [3 x i16] [i16 132, i16 133, i16 131], align 2
@snd_ac97_determine_spdif_rates.rate_bits = internal global [3 x i32] [i32 129, i32 130, i32 128], align 4
@AC97_SPDIF = common dso_local global i32 0, align 4
@AC97_SC_SPSR_MASK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @snd_ac97_determine_spdif_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_determine_spdif_rates(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %40, %1
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @ARRAY_SIZE(i16* getelementptr inbounds ([3 x i16], [3 x i16]* @snd_ac97_determine_spdif_rates.ctl_bits, i64 0, i64 0))
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %43

10:                                               ; preds = %5
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %12 = load i32, i32* @AC97_SPDIF, align 4
  %13 = load i16, i16* @AC97_SC_SPSR_MASK, align 2
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i16], [3 x i16]* @snd_ac97_determine_spdif_rates.ctl_bits, i64 0, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %11, i32 %12, i16 zeroext %13, i16 zeroext %17)
  %19 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %20 = load i32, i32* @AC97_SPDIF, align 4
  %21 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %19, i32 %20)
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @AC97_SC_SPSR_MASK, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %22, %24
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i16], [3 x i16]* @snd_ac97_determine_spdif_rates.ctl_bits, i64 0, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %10
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* @snd_ac97_determine_spdif_rates.rate_bits, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %10
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %5

43:                                               ; preds = %5
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @ARRAY_SIZE(i16*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i16 zeroext, i16 zeroext) #1

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
