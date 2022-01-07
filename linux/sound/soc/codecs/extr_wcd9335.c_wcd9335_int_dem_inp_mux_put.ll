; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_int_dem_inp_mux_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_int_dem_inp_mux_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.soc_enum = type { i64 }
%struct.snd_soc_component = type { i32 }

@WCD9335_CDC_RX0_RX_PATH_SEC0 = common dso_local global i64 0, align 8
@WCD9335_CDC_RX0_RX_PATH_CFG0 = common dso_local global i32 0, align 4
@WCD9335_CDC_RX1_RX_PATH_SEC0 = common dso_local global i64 0, align 8
@WCD9335_CDC_RX1_RX_PATH_CFG0 = common dso_local global i32 0, align 4
@WCD9335_CDC_RX2_RX_PATH_SEC0 = common dso_local global i64 0, align 8
@WCD9335_CDC_RX2_RX_PATH_CFG0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_CFG0_DLY_ZN_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_CFG0_DLY_ZN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wcd9335_int_dem_inp_mux_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_int_dem_inp_mux_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.soc_enum*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.soc_enum*
  store %struct.soc_enum* %13, %struct.soc_enum** %6, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol* %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %7, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %24 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WCD9335_CDC_RX0_RX_PATH_SEC0, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @WCD9335_CDC_RX0_RX_PATH_CFG0, align 4
  store i32 %29, i32* %8, align 4
  br label %51

30:                                               ; preds = %2
  %31 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %32 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WCD9335_CDC_RX1_RX_PATH_SEC0, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @WCD9335_CDC_RX1_RX_PATH_CFG0, align 4
  store i32 %37, i32* %8, align 4
  br label %50

38:                                               ; preds = %30
  %39 = load %struct.soc_enum*, %struct.soc_enum** %6, align 8
  %40 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WCD9335_CDC_RX2_RX_PATH_SEC0, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @WCD9335_CDC_RX2_RX_PATH_CFG0, align 4
  store i32 %45, i32* %8, align 4
  br label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %66

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %36
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @WCD9335_CDC_RX_PATH_CFG0_DLY_ZN_EN_MASK, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @WCD9335_CDC_RX_PATH_CFG0_DLY_ZN_EN, align 4
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 %54, i32 %61)
  %63 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %64 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %65 = call i32 @snd_soc_dapm_put_enum_double(%struct.snd_kcontrol* %63, %struct.snd_ctl_elem_value* %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %46
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_put_enum_double(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
