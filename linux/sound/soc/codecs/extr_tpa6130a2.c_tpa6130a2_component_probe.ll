; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tpa6130a2.c_tpa6130a2_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tpa6130a2.c_tpa6130a2_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tpa6130a2_data = type { i64 }

@TPA6140A2 = common dso_local global i64 0, align 8
@tpa6140a2_controls = common dso_local global i32 0, align 4
@tpa6130a2_controls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @tpa6130a2_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpa6130a2_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.tpa6130a2_data*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %6 = call %struct.tpa6130a2_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.tpa6130a2_data* %6, %struct.tpa6130a2_data** %4, align 8
  %7 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %8 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TPA6140A2, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = load i32, i32* @tpa6140a2_controls, align 4
  %15 = load i32, i32* @tpa6140a2_controls, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %13, i32 %14, i32 %16)
  store i32 %17, i32* %2, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = load i32, i32* @tpa6130a2_controls, align 4
  %21 = load i32, i32* @tpa6130a2_controls, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %19, i32 %20, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.tpa6130a2_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
