; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_mop500_ab8500.c_mclk_input_control_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_mop500_ab8500.c_mclk_input_control_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_card = type { i32 }
%struct.mop500_ab8500_drvdata = type { i32 }

@MCLK_ULPCLK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @mclk_input_control_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mclk_input_control_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.mop500_ab8500_drvdata*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_soc_card* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_card* %10, %struct.snd_soc_card** %6, align 8
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %12 = call %struct.mop500_ab8500_drvdata* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %11)
  store %struct.mop500_ab8500_drvdata* %12, %struct.mop500_ab8500_drvdata** %7, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i64, i64* @MCLK_ULPCLK, align 8
  %22 = trunc i64 %21 to i32
  %23 = icmp ugt i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %2
  %28 = load %struct.mop500_ab8500_drvdata*, %struct.mop500_ab8500_drvdata** %7, align 8
  %29 = getelementptr inbounds %struct.mop500_ab8500_drvdata, %struct.mop500_ab8500_drvdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.mop500_ab8500_drvdata*, %struct.mop500_ab8500_drvdata** %7, align 8
  %37 = getelementptr inbounds %struct.mop500_ab8500_drvdata, %struct.mop500_ab8500_drvdata* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %33, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.snd_soc_card* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.mop500_ab8500_drvdata* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
