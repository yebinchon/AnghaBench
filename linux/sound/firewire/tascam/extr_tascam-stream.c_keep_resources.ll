; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_keep_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_keep_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { i32, %struct.fw_iso_resources, %struct.fw_iso_resources, %struct.amdtp_stream }
%struct.fw_iso_resources = type { i32 }
%struct.amdtp_stream = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tscm*, i32, %struct.amdtp_stream*)* @keep_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keep_resources(%struct.snd_tscm* %0, i32 %1, %struct.amdtp_stream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_tscm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdtp_stream*, align 8
  %8 = alloca %struct.fw_iso_resources*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.amdtp_stream* %2, %struct.amdtp_stream** %7, align 8
  %10 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %11 = load %struct.snd_tscm*, %struct.snd_tscm** %5, align 8
  %12 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %11, i32 0, i32 3
  %13 = icmp eq %struct.amdtp_stream* %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.snd_tscm*, %struct.snd_tscm** %5, align 8
  %16 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %15, i32 0, i32 2
  store %struct.fw_iso_resources* %16, %struct.fw_iso_resources** %8, align 8
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.snd_tscm*, %struct.snd_tscm** %5, align 8
  %19 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %18, i32 0, i32 1
  store %struct.fw_iso_resources* %19, %struct.fw_iso_resources** %8, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @amdtp_tscm_set_parameters(%struct.amdtp_stream* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %39

28:                                               ; preds = %20
  %29 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %8, align 8
  %30 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %31 = call i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream* %30)
  %32 = load %struct.snd_tscm*, %struct.snd_tscm** %5, align 8
  %33 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_2__* @fw_parent_device(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fw_iso_resources_allocate(%struct.fw_iso_resources* %29, i32 %31, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %28, %26
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @amdtp_tscm_set_parameters(%struct.amdtp_stream*, i32) #1

declare dso_local i32 @fw_iso_resources_allocate(%struct.fw_iso_resources*, i32, i32) #1

declare dso_local i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream*) #1

declare dso_local %struct.TYPE_2__* @fw_parent_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
