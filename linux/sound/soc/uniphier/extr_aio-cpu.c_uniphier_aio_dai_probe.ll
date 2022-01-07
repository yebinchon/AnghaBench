; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.uniphier_aio = type { %struct.TYPE_3__*, %struct.uniphier_aio_sub* }
%struct.TYPE_3__ = type { i32 }
%struct.uniphier_aio_sub = type { i32, %struct.uniphier_aio_spec*, i32* }
%struct.uniphier_aio_spec = type { i32 }

@AUD_VOL_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uniphier_aio_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.uniphier_aio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uniphier_aio_sub*, align 8
  %6 = alloca %struct.uniphier_aio_spec*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %8 = call %struct.uniphier_aio* @uniphier_priv(%struct.snd_soc_dai* %7)
  store %struct.uniphier_aio* %8, %struct.uniphier_aio** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %43, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.uniphier_aio*, %struct.uniphier_aio** %3, align 8
  %12 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %11, i32 0, i32 1
  %13 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %12, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.uniphier_aio_sub* %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %9
  %17 = load %struct.uniphier_aio*, %struct.uniphier_aio** %3, align 8
  %18 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %17, i32 0, i32 1
  %19 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %19, i64 %21
  store %struct.uniphier_aio_sub* %22, %struct.uniphier_aio_sub** %5, align 8
  %23 = load %struct.uniphier_aio*, %struct.uniphier_aio** %3, align 8
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.uniphier_aio_spec* @find_spec(%struct.uniphier_aio* %23, i32 %26, i32 %27)
  store %struct.uniphier_aio_spec* %28, %struct.uniphier_aio_spec** %6, align 8
  %29 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %6, align 8
  %30 = icmp ne %struct.uniphier_aio_spec* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %16
  br label %43

32:                                               ; preds = %16
  %33 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %6, align 8
  %34 = getelementptr inbounds %struct.uniphier_aio_spec, %struct.uniphier_aio_spec* %33, i32 0, i32 0
  %35 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %36 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.uniphier_aio_spec*, %struct.uniphier_aio_spec** %6, align 8
  %38 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %39 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %38, i32 0, i32 1
  store %struct.uniphier_aio_spec* %37, %struct.uniphier_aio_spec** %39, align 8
  %40 = load i32, i32* @AUD_VOL_INIT, align 4
  %41 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %5, align 8
  %42 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %32, %31
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %9

46:                                               ; preds = %9
  %47 = load %struct.uniphier_aio*, %struct.uniphier_aio** %3, align 8
  %48 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @aio_iecout_set_enable(%struct.TYPE_3__* %49, i32 1)
  %51 = load %struct.uniphier_aio*, %struct.uniphier_aio** %3, align 8
  %52 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call i32 @aio_chip_init(%struct.TYPE_3__* %53)
  %55 = load %struct.uniphier_aio*, %struct.uniphier_aio** %3, align 8
  %56 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  ret i32 0
}

declare dso_local %struct.uniphier_aio* @uniphier_priv(%struct.snd_soc_dai*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.uniphier_aio_sub*) #1

declare dso_local %struct.uniphier_aio_spec* @find_spec(%struct.uniphier_aio*, i32, i32) #1

declare dso_local i32 @aio_iecout_set_enable(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @aio_chip_init(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
