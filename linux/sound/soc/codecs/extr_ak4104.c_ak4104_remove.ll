; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4104.c_ak4104_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4104.c_ak4104_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.ak4104_private = type { i32, i32 }

@AK4104_REG_CONTROL1 = common dso_local global i32 0, align 4
@AK4104_CONTROL1_PW = common dso_local global i32 0, align 4
@AK4104_CONTROL1_RSTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @ak4104_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak4104_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.ak4104_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.ak4104_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.ak4104_private* %5, %struct.ak4104_private** %3, align 8
  %6 = load %struct.ak4104_private*, %struct.ak4104_private** %3, align 8
  %7 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AK4104_REG_CONTROL1, align 4
  %10 = load i32, i32* @AK4104_CONTROL1_PW, align 4
  %11 = load i32, i32* @AK4104_CONTROL1_RSTN, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %12, i32 0)
  %14 = load %struct.ak4104_private*, %struct.ak4104_private** %3, align 8
  %15 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regulator_disable(i32 %16)
  ret void
}

declare dso_local %struct.ak4104_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
