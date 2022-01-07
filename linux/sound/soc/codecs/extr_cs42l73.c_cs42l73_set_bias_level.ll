; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l73.c_cs42l73_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l73.c_cs42l73_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs42l73_private = type { i32, i32 }

@CS42L73_DMMCC = common dso_local global i32 0, align 4
@CS42L73_MCLKDIS = common dso_local global i32 0, align 4
@CS42L73_PWRCTL1 = common dso_local global i32 0, align 4
@CS42L73_PDN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @cs42l73_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l73_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs42l73_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.cs42l73_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.cs42l73_private* %7, %struct.cs42l73_private** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %60 [
    i32 130, label %9
    i32 129, label %18
    i32 128, label %19
    i32 131, label %37
  ]

9:                                                ; preds = %2
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load i32, i32* @CS42L73_DMMCC, align 4
  %12 = load i32, i32* @CS42L73_MCLKDIS, align 4
  %13 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %10, i32 %11, i32 %12, i32 0)
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load i32, i32* @CS42L73_PWRCTL1, align 4
  %16 = load i32, i32* @CS42L73_PDN, align 4
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %14, i32 %15, i32 %16, i32 0)
  br label %60

18:                                               ; preds = %2
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %20)
  %22 = icmp eq i32 %21, 131
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.cs42l73_private*, %struct.cs42l73_private** %5, align 8
  %25 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regcache_cache_only(i32 %26, i32 0)
  %28 = load %struct.cs42l73_private*, %struct.cs42l73_private** %5, align 8
  %29 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regcache_sync(i32 %30)
  br label %32

32:                                               ; preds = %23, %19
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @CS42L73_PWRCTL1, align 4
  %35 = load i32, i32* @CS42L73_PDN, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 %35, i32 1)
  br label %60

37:                                               ; preds = %2
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %39 = load i32, i32* @CS42L73_PWRCTL1, align 4
  %40 = load i32, i32* @CS42L73_PDN, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i32 %39, i32 %40, i32 1)
  %42 = load %struct.cs42l73_private*, %struct.cs42l73_private** %5, align 8
  %43 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.cs42l73_private*, %struct.cs42l73_private** %5, align 8
  %48 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mdelay(i32 %49)
  %51 = load %struct.cs42l73_private*, %struct.cs42l73_private** %5, align 8
  %52 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  br label %55

53:                                               ; preds = %37
  %54 = call i32 @mdelay(i32 15)
  br label %55

55:                                               ; preds = %53, %46
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %57 = load i32, i32* @CS42L73_DMMCC, align 4
  %58 = load i32, i32* @CS42L73_MCLKDIS, align 4
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %56, i32 %57, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %2, %55, %32, %18, %9
  ret i32 0
}

declare dso_local %struct.cs42l73_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
