; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_vol_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_component = type { i32 }
%struct.uniphier_aio_chip = type { i32 }
%struct.uniphier_aio_sub = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @uniphier_aio_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aio_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.uniphier_aio_chip*, align 8
  %8 = alloca %struct.uniphier_aio_sub*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = call %struct.uniphier_aio_chip* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.uniphier_aio_chip* %13, %struct.uniphier_aio_chip** %7, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.uniphier_aio_sub* @find_volume(%struct.uniphier_aio_chip* %17, i32 %18)
  store %struct.uniphier_aio_sub* %19, %struct.uniphier_aio_sub** %8, align 8
  %20 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %21 = icmp ne %struct.uniphier_aio_sub* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %25 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %26, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %51

36:                                               ; preds = %23
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %45 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %47 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %48 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @aio_port_set_volume(%struct.uniphier_aio_sub* %46, i64 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %36, %35, %22
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.uniphier_aio_chip* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.uniphier_aio_sub* @find_volume(%struct.uniphier_aio_chip*, i32) #1

declare dso_local i32 @aio_port_set_volume(%struct.uniphier_aio_sub*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
