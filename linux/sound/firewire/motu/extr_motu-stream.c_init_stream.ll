; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_init_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_init_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { %struct.TYPE_2__*, i32, %struct.fw_iso_resources, %struct.fw_iso_resources, %struct.amdtp_stream }
%struct.TYPE_2__ = type { i32 }
%struct.fw_iso_resources = type { i32 }
%struct.amdtp_stream = type { i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_motu*, %struct.amdtp_stream*)* @init_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_stream(%struct.snd_motu* %0, %struct.amdtp_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_motu*, align 8
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca %struct.fw_iso_resources*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %4, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %5, align 8
  %9 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %10 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %11 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %10, i32 0, i32 4
  %12 = icmp eq %struct.amdtp_stream* %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %15 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %14, i32 0, i32 3
  store %struct.fw_iso_resources* %15, %struct.fw_iso_resources** %6, align 8
  %16 = load i32, i32* @AMDTP_IN_STREAM, align 4
  store i32 %16, i32* %7, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %19 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %18, i32 0, i32 2
  store %struct.fw_iso_resources* %19, %struct.fw_iso_resources** %6, align 8
  %20 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %6, align 8
  %23 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %24 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @fw_iso_resources_init(%struct.fw_iso_resources* %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %21
  %32 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %33 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %34 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %38 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @amdtp_motu_init(%struct.amdtp_stream* %32, i32 %35, i32 %36, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %6, align 8
  %47 = call i32 @fw_iso_resources_destroy(%struct.fw_iso_resources* %46)
  br label %48

48:                                               ; preds = %45, %31
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %29
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @fw_iso_resources_init(%struct.fw_iso_resources*, i32) #1

declare dso_local i32 @amdtp_motu_init(%struct.amdtp_stream*, i32, i32, i32) #1

declare dso_local i32 @fw_iso_resources_destroy(%struct.fw_iso_resources*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
