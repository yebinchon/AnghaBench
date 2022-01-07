; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l52.c_cs42l52_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l52.c_cs42l52_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs42l52_private = type { i32 }

@CS42L52_PWRCTL1 = common dso_local global i32 0, align 4
@CS42L52_PWRCTL1_PDN_CODEC = common dso_local global i32 0, align 4
@CS42L52_PWRCTL1_PDN_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @cs42l52_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l52_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs42l52_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.cs42l52_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.cs42l52_private* %7, %struct.cs42l52_private** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %42 [
    i32 130, label %9
    i32 129, label %10
    i32 128, label %15
    i32 131, label %33
  ]

9:                                                ; preds = %2
  br label %42

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @CS42L52_PWRCTL1, align 4
  %13 = load i32, i32* @CS42L52_PWRCTL1_PDN_CODEC, align 4
  %14 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %11, i32 %12, i32 %13, i32 0)
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %16)
  %18 = icmp eq i32 %17, 131
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load %struct.cs42l52_private*, %struct.cs42l52_private** %5, align 8
  %21 = getelementptr inbounds %struct.cs42l52_private, %struct.cs42l52_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regcache_cache_only(i32 %22, i32 0)
  %24 = load %struct.cs42l52_private*, %struct.cs42l52_private** %5, align 8
  %25 = getelementptr inbounds %struct.cs42l52_private, %struct.cs42l52_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regcache_sync(i32 %26)
  br label %28

28:                                               ; preds = %19, %15
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = load i32, i32* @CS42L52_PWRCTL1, align 4
  %31 = load i32, i32* @CS42L52_PWRCTL1_PDN_ALL, align 4
  %32 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %29, i32 %30, i32 %31)
  br label %42

33:                                               ; preds = %2
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = load i32, i32* @CS42L52_PWRCTL1, align 4
  %36 = load i32, i32* @CS42L52_PWRCTL1_PDN_ALL, align 4
  %37 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %34, i32 %35, i32 %36)
  %38 = load %struct.cs42l52_private*, %struct.cs42l52_private** %5, align 8
  %39 = getelementptr inbounds %struct.cs42l52_private, %struct.cs42l52_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regcache_cache_only(i32 %40, i32 1)
  br label %42

42:                                               ; preds = %2, %33, %28, %10, %9
  ret i32 0
}

declare dso_local %struct.cs42l52_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
