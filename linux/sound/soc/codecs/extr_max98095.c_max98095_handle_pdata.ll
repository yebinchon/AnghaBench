; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_handle_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_handle_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98095_priv = type { %struct.max98095_pdata* }
%struct.max98095_pdata = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@M98095_DIGMIC_L = common dso_local global i32 0, align 4
@M98095_DIGMIC_R = common dso_local global i32 0, align 4
@M98095_087_CFG_MIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @max98095_handle_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max98095_handle_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.max98095_priv*, align 8
  %4 = alloca %struct.max98095_pdata*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.max98095_priv* %7, %struct.max98095_priv** %3, align 8
  %8 = load %struct.max98095_priv*, %struct.max98095_priv** %3, align 8
  %9 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %8, i32 0, i32 0
  %10 = load %struct.max98095_pdata*, %struct.max98095_pdata** %9, align 8
  store %struct.max98095_pdata* %10, %struct.max98095_pdata** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.max98095_pdata*, %struct.max98095_pdata** %4, align 8
  %12 = icmp ne %struct.max98095_pdata* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.max98095_pdata*, %struct.max98095_pdata** %4, align 8
  %20 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @M98095_DIGMIC_L, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.max98095_pdata*, %struct.max98095_pdata** %4, align 8
  %29 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @M98095_DIGMIC_R, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %38 = load i32, i32* @M98095_087_CFG_MIC, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %37, i32 %38, i32 %39)
  %41 = load %struct.max98095_pdata*, %struct.max98095_pdata** %4, align 8
  %42 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %47 = call i32 @max98095_handle_eq_pdata(%struct.snd_soc_component* %46)
  br label %48

48:                                               ; preds = %45, %36
  %49 = load %struct.max98095_pdata*, %struct.max98095_pdata** %4, align 8
  %50 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %55 = call i32 @max98095_handle_bq_pdata(%struct.snd_soc_component* %54)
  br label %56

56:                                               ; preds = %13, %53, %48
  ret void
}

declare dso_local %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @max98095_handle_eq_pdata(%struct.snd_soc_component*) #1

declare dso_local i32 @max98095_handle_bq_pdata(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
