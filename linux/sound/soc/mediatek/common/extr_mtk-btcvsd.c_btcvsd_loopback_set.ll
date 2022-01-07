; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-btcvsd.c_btcvsd_loopback_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-btcvsd.c_btcvsd_loopback_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_component = type { i32 }
%struct.mtk_btcvsd_snd = type { i32, i32 }

@BT_SCO_STATE_LOOPBACK = common dso_local global i32 0, align 4
@BT_SCO_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @btcvsd_loopback_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btcvsd_loopback_set(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.mtk_btcvsd_snd*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %7)
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %10 = call %struct.mtk_btcvsd_snd* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.mtk_btcvsd_snd* %10, %struct.mtk_btcvsd_snd** %6, align 8
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %6, align 8
  %21 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %6, align 8
  %22 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BT_SCO_STATE_LOOPBACK, align 4
  %25 = call i32 @mtk_btcvsd_snd_set_state(%struct.mtk_btcvsd_snd* %20, i32 %23, i32 %24)
  %26 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %6, align 8
  %27 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %6, align 8
  %28 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BT_SCO_STATE_LOOPBACK, align 4
  %31 = call i32 @mtk_btcvsd_snd_set_state(%struct.mtk_btcvsd_snd* %26, i32 %29, i32 %30)
  br label %45

32:                                               ; preds = %2
  %33 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %6, align 8
  %34 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %6, align 8
  %35 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BT_SCO_STATE_RUNNING, align 4
  %38 = call i32 @mtk_btcvsd_snd_set_state(%struct.mtk_btcvsd_snd* %33, i32 %36, i32 %37)
  %39 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %6, align 8
  %40 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %6, align 8
  %41 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BT_SCO_STATE_RUNNING, align 4
  %44 = call i32 @mtk_btcvsd_snd_set_state(%struct.mtk_btcvsd_snd* %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %32, %19
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.mtk_btcvsd_snd* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mtk_btcvsd_snd_set_state(%struct.mtk_btcvsd_snd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
