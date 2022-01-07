; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_snd_hda_bus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_snd_hda_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_bus = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.azx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_bus_reset(%struct.hda_bus* %0) #0 {
  %2 = alloca %struct.hda_bus*, align 8
  %3 = alloca %struct.azx*, align 8
  store %struct.hda_bus* %0, %struct.hda_bus** %2, align 8
  %4 = load %struct.hda_bus*, %struct.hda_bus** %2, align 8
  %5 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %4, i32 0, i32 1
  %6 = call %struct.azx* @bus_to_azx(%struct.TYPE_2__* %5)
  store %struct.azx* %6, %struct.azx** %3, align 8
  %7 = load %struct.hda_bus*, %struct.hda_bus** %2, align 8
  %8 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.azx*, %struct.azx** %3, align 8
  %10 = call i32 @azx_stop_chip(%struct.azx* %9)
  %11 = load %struct.azx*, %struct.azx** %3, align 8
  %12 = call i32 @azx_init_chip(%struct.azx* %11, i32 1)
  %13 = load %struct.hda_bus*, %struct.hda_bus** %2, align 8
  %14 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.hda_bus*, %struct.hda_bus** %2, align 8
  %20 = call i32 @snd_hda_bus_reset_codecs(%struct.hda_bus* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.hda_bus*, %struct.hda_bus** %2, align 8
  %23 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  ret void
}

declare dso_local %struct.azx* @bus_to_azx(%struct.TYPE_2__*) #1

declare dso_local i32 @azx_stop_chip(%struct.azx*) #1

declare dso_local i32 @azx_init_chip(%struct.azx*, i32) #1

declare dso_local i32 @snd_hda_bus_reset_codecs(%struct.hda_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
