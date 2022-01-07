; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_bus.c_snd_hdac_ext_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_bus.c_snd_hdac_ext_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i64, %struct.hdac_ext_bus_ops* }
%struct.device = type { i32 }
%struct.hdac_bus_ops = type { i32 }
%struct.hdac_ext_bus_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_ext_bus_init(%struct.hdac_bus* %0, %struct.device* %1, %struct.hdac_bus_ops* %2, %struct.hdac_ext_bus_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.hdac_bus_ops*, align 8
  %9 = alloca %struct.hdac_ext_bus_ops*, align 8
  %10 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store %struct.hdac_bus_ops* %2, %struct.hdac_bus_ops** %8, align 8
  store %struct.hdac_ext_bus_ops* %3, %struct.hdac_ext_bus_ops** %9, align 8
  %11 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = load %struct.hdac_bus_ops*, %struct.hdac_bus_ops** %8, align 8
  %14 = call i32 @snd_hdac_bus_init(%struct.hdac_bus* %11, %struct.device* %12, %struct.hdac_bus_ops* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %27

19:                                               ; preds = %4
  %20 = load %struct.hdac_ext_bus_ops*, %struct.hdac_ext_bus_ops** %9, align 8
  %21 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %22 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %21, i32 0, i32 2
  store %struct.hdac_ext_bus_ops* %20, %struct.hdac_ext_bus_ops** %22, align 8
  %23 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %24 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %26 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %19, %17
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @snd_hdac_bus_init(%struct.hdac_bus*, %struct.device*, %struct.hdac_bus_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
