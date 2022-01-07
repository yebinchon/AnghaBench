; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.uniphier_aio = type { %struct.uniphier_aio_sub* }
%struct.uniphier_aio_sub = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@PORT_TYPE_CONV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @uniphier_aio_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aio_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.uniphier_aio*, align 8
  %7 = alloca %struct.uniphier_aio_sub*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %10 = call %struct.uniphier_aio* @uniphier_priv(%struct.snd_soc_dai* %9)
  store %struct.uniphier_aio* %10, %struct.uniphier_aio** %6, align 8
  %11 = load %struct.uniphier_aio*, %struct.uniphier_aio** %6, align 8
  %12 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %11, i32 0, i32 0
  %13 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %12, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %13, i64 %16
  store %struct.uniphier_aio_sub* %17, %struct.uniphier_aio_sub** %7, align 8
  %18 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %19 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %20 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %23 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %22, i32 0, i32 2
  %24 = call i32 @aio_port_set_param(%struct.uniphier_aio_sub* %18, i32 %21, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %76

29:                                               ; preds = %2
  %30 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %31 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %32 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %31, i32 0, i32 2
  %33 = call i32 @aio_src_set_param(%struct.uniphier_aio_sub* %30, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %76

38:                                               ; preds = %29
  %39 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %40 = call i32 @aio_port_set_enable(%struct.uniphier_aio_sub* %39, i32 1)
  %41 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %42 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %43 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @aio_if_set_param(%struct.uniphier_aio_sub* %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %76

50:                                               ; preds = %38
  %51 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %52 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PORT_TYPE_CONV, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %50
  %59 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %60 = call i32 @aio_srcif_set_param(%struct.uniphier_aio_sub* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %76

65:                                               ; preds = %58
  %66 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %67 = call i32 @aio_srcch_set_param(%struct.uniphier_aio_sub* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %76

72:                                               ; preds = %65
  %73 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %74 = call i32 @aio_srcch_set_enable(%struct.uniphier_aio_sub* %73, i32 1)
  br label %75

75:                                               ; preds = %72, %50
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %70, %63, %48, %36, %27
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.uniphier_aio* @uniphier_priv(%struct.snd_soc_dai*) #1

declare dso_local i32 @aio_port_set_param(%struct.uniphier_aio_sub*, i32, i32*) #1

declare dso_local i32 @aio_src_set_param(%struct.uniphier_aio_sub*, i32*) #1

declare dso_local i32 @aio_port_set_enable(%struct.uniphier_aio_sub*, i32) #1

declare dso_local i32 @aio_if_set_param(%struct.uniphier_aio_sub*, i32) #1

declare dso_local i32 @aio_srcif_set_param(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aio_srcch_set_param(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aio_srcch_set_enable(%struct.uniphier_aio_sub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
