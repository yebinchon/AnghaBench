; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_soc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_soc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cpcap_audio = type { i32, i32, %struct.snd_soc_component* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cpcap_soc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_soc_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.cpcap_audio*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.cpcap_audio* @devm_kzalloc(%struct.TYPE_3__* %8, i32 16, i32 %9)
  store %struct.cpcap_audio* %10, %struct.cpcap_audio** %4, align 8
  %11 = load %struct.cpcap_audio*, %struct.cpcap_audio** %4, align 8
  %12 = icmp ne %struct.cpcap_audio* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %60

16:                                               ; preds = %1
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = load %struct.cpcap_audio*, %struct.cpcap_audio** %4, align 8
  %19 = call i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component* %17, %struct.cpcap_audio* %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load %struct.cpcap_audio*, %struct.cpcap_audio** %4, align 8
  %22 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %21, i32 0, i32 2
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %22, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_get_regmap(i32 %27, i32* null)
  %29 = load %struct.cpcap_audio*, %struct.cpcap_audio** %4, align 8
  %30 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.cpcap_audio*, %struct.cpcap_audio** %4, align 8
  %32 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %16
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %60

38:                                               ; preds = %16
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %40 = load %struct.cpcap_audio*, %struct.cpcap_audio** %4, align 8
  %41 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %39, i32 %42)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.cpcap_audio*, %struct.cpcap_audio** %4, align 8
  %48 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cpcap_audio*, %struct.cpcap_audio** %4, align 8
  %51 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %50, i32 0, i32 0
  %52 = call i32 @cpcap_get_vendor(%struct.TYPE_3__* %46, i32 %49, i32* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %60

57:                                               ; preds = %38
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = call i32 @cpcap_audio_reset(%struct.snd_soc_component* %58, i32 0)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %55, %35, %13
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.cpcap_audio* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component*, %struct.cpcap_audio*) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @cpcap_get_vendor(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @cpcap_audio_reset(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
