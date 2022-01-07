; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_wm8904.c_atmel_asoc_wm8904_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_wm8904.c_atmel_asoc_wm8904_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai_link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.platform_device = type { i32 }
%struct.snd_soc_card = type { i32 }
%struct.device_node = type { i32 }

@atmel_asoc_wm8904_dailink = common dso_local global %struct.snd_soc_dai_link zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"ssc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_asoc_wm8904_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_asoc_wm8904_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.snd_soc_dai_link*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.snd_soc_card* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.snd_soc_card* %7, %struct.snd_soc_card** %3, align 8
  store %struct.snd_soc_dai_link* @atmel_asoc_wm8904_dailink, %struct.snd_soc_dai_link** %4, align 8
  %8 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.device_node*
  %14 = call i32 @of_alias_get_id(%struct.device_node* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %5, align 4
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %16 = call i32 @snd_soc_unregister_card(%struct.snd_soc_card* %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @atmel_ssc_put_audio(i32 %17)
  ret i32 0
}

declare dso_local %struct.snd_soc_card* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @snd_soc_unregister_card(%struct.snd_soc_card*) #1

declare dso_local i32 @atmel_ssc_put_audio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
