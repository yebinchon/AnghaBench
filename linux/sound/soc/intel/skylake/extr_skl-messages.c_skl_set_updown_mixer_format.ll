; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_set_updown_mixer_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_set_updown_mixer_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { i64, %struct.skl_module* }
%struct.skl_module = type { %struct.skl_module_iface* }
%struct.skl_module_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.skl_module_fmt }
%struct.skl_module_fmt = type { i32, i32 }
%struct.skl_up_down_mixer_cfg = type { i32, i32 }
%struct.skl_base_cfg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_up_down_mixer_cfg*)* @skl_set_updown_mixer_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_set_updown_mixer_format(%struct.skl_dev* %0, %struct.skl_module_cfg* %1, %struct.skl_up_down_mixer_cfg* %2) #0 {
  %4 = alloca %struct.skl_dev*, align 8
  %5 = alloca %struct.skl_module_cfg*, align 8
  %6 = alloca %struct.skl_up_down_mixer_cfg*, align 8
  %7 = alloca %struct.skl_module*, align 8
  %8 = alloca %struct.skl_module_iface*, align 8
  %9 = alloca %struct.skl_module_fmt*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %4, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %5, align 8
  store %struct.skl_up_down_mixer_cfg* %2, %struct.skl_up_down_mixer_cfg** %6, align 8
  %10 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %11 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %10, i32 0, i32 1
  %12 = load %struct.skl_module*, %struct.skl_module** %11, align 8
  store %struct.skl_module* %12, %struct.skl_module** %7, align 8
  %13 = load %struct.skl_module*, %struct.skl_module** %7, align 8
  %14 = getelementptr inbounds %struct.skl_module, %struct.skl_module* %13, i32 0, i32 0
  %15 = load %struct.skl_module_iface*, %struct.skl_module_iface** %14, align 8
  %16 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %15, i64 %18
  store %struct.skl_module_iface* %19, %struct.skl_module_iface** %8, align 8
  %20 = load %struct.skl_module_iface*, %struct.skl_module_iface** %8, align 8
  %21 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.skl_module_fmt* %24, %struct.skl_module_fmt** %9, align 8
  %25 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %26 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %27 = load %struct.skl_up_down_mixer_cfg*, %struct.skl_up_down_mixer_cfg** %6, align 8
  %28 = bitcast %struct.skl_up_down_mixer_cfg* %27 to %struct.skl_base_cfg*
  %29 = call i32 @skl_set_base_module_format(%struct.skl_dev* %25, %struct.skl_module_cfg* %26, %struct.skl_base_cfg* %28)
  %30 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %31 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.skl_up_down_mixer_cfg*, %struct.skl_up_down_mixer_cfg** %6, align 8
  %34 = getelementptr inbounds %struct.skl_up_down_mixer_cfg, %struct.skl_up_down_mixer_cfg* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %36 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.skl_up_down_mixer_cfg*, %struct.skl_up_down_mixer_cfg** %6, align 8
  %39 = getelementptr inbounds %struct.skl_up_down_mixer_cfg, %struct.skl_up_down_mixer_cfg* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local i32 @skl_set_base_module_format(%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_base_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
