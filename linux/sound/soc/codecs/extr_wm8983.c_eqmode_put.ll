; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8983.c_eqmode_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8983.c_eqmode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM8983_EQ1_LOW_SHELF = common dso_local global i32 0, align 4
@WM8983_EQ3DMODE = common dso_local global i32 0, align 4
@WM8983_EQ3DMODE_SHIFT = common dso_local global i32 0, align 4
@WM8983_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8983_POWER_MANAGEMENT_3 = common dso_local global i32 0, align 4
@WM8983_ADCENR_MASK = common dso_local global i32 0, align 4
@WM8983_ADCENL_MASK = common dso_local global i32 0, align 4
@WM8983_DACENR_MASK = common dso_local global i32 0, align 4
@WM8983_DACENL_MASK = common dso_local global i32 0, align 4
@WM8983_EQ3DMODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @eqmode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eqmode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %103

32:                                               ; preds = %20, %2
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %34 = load i32, i32* @WM8983_EQ1_LOW_SHELF, align 4
  %35 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @WM8983_EQ3DMODE, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @WM8983_EQ3DMODE_SHIFT, align 4
  %40 = lshr i32 %38, %39
  switch i32 %40, label %63 [
    i32 0, label %41
    i32 1, label %52
  ]

41:                                               ; preds = %32
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %103

51:                                               ; preds = %41
  br label %63

52:                                               ; preds = %32
  %53 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %103

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %32, %62, %51
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %65 = load i32, i32* @WM8983_POWER_MANAGEMENT_2, align 4
  %66 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %68 = load i32, i32* @WM8983_POWER_MANAGEMENT_3, align 4
  %69 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %71 = load i32, i32* @WM8983_POWER_MANAGEMENT_2, align 4
  %72 = load i32, i32* @WM8983_ADCENR_MASK, align 4
  %73 = load i32, i32* @WM8983_ADCENL_MASK, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 %74, i32 0)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %77 = load i32, i32* @WM8983_POWER_MANAGEMENT_3, align 4
  %78 = load i32, i32* @WM8983_DACENR_MASK, align 4
  %79 = load i32, i32* @WM8983_DACENL_MASK, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %80, i32 0)
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %83 = load i32, i32* @WM8983_EQ1_LOW_SHELF, align 4
  %84 = load i32, i32* @WM8983_EQ3DMODE_MASK, align 4
  %85 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %86 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @WM8983_EQ3DMODE_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %84, i32 %93)
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %96 = load i32, i32* @WM8983_POWER_MANAGEMENT_2, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %95, i32 %96, i32 %97)
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %100 = load i32, i32* @WM8983_POWER_MANAGEMENT_3, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %99, i32 %100, i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %63, %61, %50, %29
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
