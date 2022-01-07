; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4271.c_cs4271_component_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4271.c_cs4271_component_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs4271_private = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @cs4271_component_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4271_component_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.cs4271_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.cs4271_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.cs4271_private* %5, %struct.cs4271_private** %3, align 8
  %6 = load %struct.cs4271_private*, %struct.cs4271_private** %3, align 8
  %7 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @gpio_is_valid(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.cs4271_private*, %struct.cs4271_private** %3, align 8
  %13 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gpio_set_value(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.cs4271_private*, %struct.cs4271_private** %3, align 8
  %18 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regcache_mark_dirty(i32 %19)
  %21 = load %struct.cs4271_private*, %struct.cs4271_private** %3, align 8
  %22 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = load %struct.cs4271_private*, %struct.cs4271_private** %3, align 8
  %26 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regulator_bulk_disable(i32 %24, i32 %27)
  ret void
}

declare dso_local %struct.cs4271_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
