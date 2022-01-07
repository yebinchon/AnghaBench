; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_put_eq_enum.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_put_eq_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.max98088_priv = type { %struct.max98088_cdata*, %struct.max98088_pdata* }
%struct.max98088_cdata = type { i32 }
%struct.max98088_pdata = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @max98088_put_eq_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98088_put_eq_enum(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.max98088_priv*, align 8
  %8 = alloca %struct.max98088_pdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.max98088_cdata*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.max98088_priv* %15, %struct.max98088_priv** %7, align 8
  %16 = load %struct.max98088_priv*, %struct.max98088_priv** %7, align 8
  %17 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %16, i32 0, i32 1
  %18 = load %struct.max98088_pdata*, %struct.max98088_pdata** %17, align 8
  store %struct.max98088_pdata* %18, %struct.max98088_pdata** %8, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @max98088_get_channel(%struct.snd_soc_component* %19, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %2
  %37 = load %struct.max98088_priv*, %struct.max98088_priv** %7, align 8
  %38 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %37, i32 0, i32 0
  %39 = load %struct.max98088_cdata*, %struct.max98088_cdata** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %39, i64 %41
  store %struct.max98088_cdata* %42, %struct.max98088_cdata** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.max98088_pdata*, %struct.max98088_pdata** %8, align 8
  %45 = getelementptr inbounds %struct.max98088_pdata, %struct.max98088_pdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %63

51:                                               ; preds = %36
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.max98088_cdata*, %struct.max98088_cdata** %10, align 8
  %54 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  switch i32 %55, label %62 [
    i32 0, label %56
    i32 1, label %59
  ]

56:                                               ; preds = %51
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %58 = call i32 @max98088_setup_eq1(%struct.snd_soc_component* %57)
  br label %62

59:                                               ; preds = %51
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %61 = call i32 @max98088_setup_eq2(%struct.snd_soc_component* %60)
  br label %62

62:                                               ; preds = %51, %59, %56
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %48, %34
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @max98088_get_channel(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @max98088_setup_eq1(%struct.snd_soc_component*) #1

declare dso_local i32 @max98088_setup_eq2(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
