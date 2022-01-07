; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_stream_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_stream_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32 }
%struct.hdac_stream = type { i32 }
%struct.azx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.azx*, %struct.azx_dev*)* }
%struct.azx_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_bus*, %struct.hdac_stream*)* @stream_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_update(%struct.hdac_bus* %0, %struct.hdac_stream* %1) #0 {
  %3 = alloca %struct.hdac_bus*, align 8
  %4 = alloca %struct.hdac_stream*, align 8
  %5 = alloca %struct.azx*, align 8
  %6 = alloca %struct.azx_dev*, align 8
  store %struct.hdac_bus* %0, %struct.hdac_bus** %3, align 8
  store %struct.hdac_stream* %1, %struct.hdac_stream** %4, align 8
  %7 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %8 = call %struct.azx* @bus_to_azx(%struct.hdac_bus* %7)
  store %struct.azx* %8, %struct.azx** %5, align 8
  %9 = load %struct.hdac_stream*, %struct.hdac_stream** %4, align 8
  %10 = call %struct.azx_dev* @stream_to_azx_dev(%struct.hdac_stream* %9)
  store %struct.azx_dev* %10, %struct.azx_dev** %6, align 8
  %11 = load %struct.azx*, %struct.azx** %5, align 8
  %12 = getelementptr inbounds %struct.azx, %struct.azx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64 (%struct.azx*, %struct.azx_dev*)*, i64 (%struct.azx*, %struct.azx_dev*)** %14, align 8
  %16 = icmp ne i64 (%struct.azx*, %struct.azx_dev*)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.azx*, %struct.azx** %5, align 8
  %19 = getelementptr inbounds %struct.azx, %struct.azx* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64 (%struct.azx*, %struct.azx_dev*)*, i64 (%struct.azx*, %struct.azx_dev*)** %21, align 8
  %23 = load %struct.azx*, %struct.azx** %5, align 8
  %24 = load %struct.azx_dev*, %struct.azx_dev** %6, align 8
  %25 = call i64 %22(%struct.azx* %23, %struct.azx_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %17, %2
  %28 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %29 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.azx_dev*, %struct.azx_dev** %6, align 8
  %32 = call %struct.TYPE_4__* @azx_stream(%struct.azx_dev* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_pcm_period_elapsed(i32 %34)
  %36 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %37 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  br label %39

39:                                               ; preds = %27, %17
  ret void
}

declare dso_local %struct.azx* @bus_to_azx(%struct.hdac_bus*) #1

declare dso_local %struct.azx_dev* @stream_to_azx_dev(%struct.hdac_stream*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local %struct.TYPE_4__* @azx_stream(%struct.azx_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
