; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_class_w_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_class_w_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_component = type { i32 }
%struct.wm8903_priv = type { i32 }

@WM8903_CLASS_W_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Disabling Class W\0A\00", align 1
@WM8903_CP_DYN_FREQ = common dso_local global i32 0, align 4
@WM8903_CP_DYN_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Enabling Class W\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Bypass use count now %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8903_class_w_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_class_w_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.wm8903_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = call %struct.wm8903_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.wm8903_priv* %12, %struct.wm8903_priv** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = load i32, i32* @WM8903_CLASS_W_0, align 4
  %15 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %2
  %25 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %26 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %35 = load i32, i32* @WM8903_CLASS_W_0, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @WM8903_CP_DYN_FREQ, align 4
  %38 = load i32, i32* @WM8903_CP_DYN_V, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %36, %40
  %42 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %34, i32 %35, i32 %41)
  br label %43

43:                                               ; preds = %29, %24
  %44 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %45 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %2
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %50 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %51 = call i32 @snd_soc_dapm_put_volsw(%struct.snd_kcontrol* %49, %struct.snd_ctl_elem_value* %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %83, label %60

60:                                               ; preds = %48
  %61 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %62 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %67 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @dev_dbg(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %71 = load i32, i32* @WM8903_CLASS_W_0, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @WM8903_CP_DYN_FREQ, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @WM8903_CP_DYN_V, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %70, i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %65, %60
  %79 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %80 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %48
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %85 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wm8903_priv*, %struct.wm8903_priv** %6, align 8
  %88 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @dev_dbg(i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.wm8903_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_put_volsw(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
