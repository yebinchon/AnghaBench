; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_init_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_init_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { i32, %struct.fw_iso_resources, %struct.fw_iso_resources, %struct.amdtp_stream }
%struct.fw_iso_resources = type { i32 }
%struct.amdtp_stream = type { i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dg00x*, %struct.amdtp_stream*)* @init_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_stream(%struct.snd_dg00x* %0, %struct.amdtp_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_dg00x*, align 8
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca %struct.fw_iso_resources*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %4, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %5, align 8
  %9 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %10 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %11 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %10, i32 0, i32 3
  %12 = icmp eq %struct.amdtp_stream* %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %15 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %14, i32 0, i32 2
  store %struct.fw_iso_resources* %15, %struct.fw_iso_resources** %6, align 8
  %16 = load i32, i32* @AMDTP_IN_STREAM, align 4
  store i32 %16, i32* %7, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %19 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %18, i32 0, i32 1
  store %struct.fw_iso_resources* %19, %struct.fw_iso_resources** %6, align 8
  %20 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %6, align 8
  %23 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %24 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @fw_iso_resources_init(%struct.fw_iso_resources* %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %21
  %32 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %33 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %34 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @amdtp_dot_init(%struct.amdtp_stream* %32, i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %6, align 8
  %42 = call i32 @fw_iso_resources_destroy(%struct.fw_iso_resources* %41)
  br label %43

43:                                               ; preds = %40, %31
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %29
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @fw_iso_resources_init(%struct.fw_iso_resources*, i32) #1

declare dso_local i32 @amdtp_dot_init(%struct.amdtp_stream*, i32, i32) #1

declare dso_local i32 @fw_iso_resources_destroy(%struct.fw_iso_resources*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
