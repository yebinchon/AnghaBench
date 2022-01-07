; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_keep_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_keep_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { i32, %struct.fw_iso_resources, %struct.fw_iso_resources, %struct.amdtp_stream }
%struct.fw_iso_resources = type { i32 }
%struct.amdtp_stream = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SND_DG00X_RATE_COUNT = common dso_local global i32 0, align 4
@snd_dg00x_stream_rates = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@snd_dg00x_stream_pcm_channels = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dg00x*, %struct.amdtp_stream*, i32)* @keep_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keep_resources(%struct.snd_dg00x* %0, %struct.amdtp_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_dg00x*, align 8
  %6 = alloca %struct.amdtp_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_iso_resources*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %5, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %25, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @SND_DG00X_RATE_COUNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load i32*, i32** @snd_dg00x_stream_rates, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %11

28:                                               ; preds = %23, %11
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @SND_DG00X_RATE_COUNT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %70

35:                                               ; preds = %28
  %36 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %37 = load %struct.snd_dg00x*, %struct.snd_dg00x** %5, align 8
  %38 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %37, i32 0, i32 3
  %39 = icmp eq %struct.amdtp_stream* %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.snd_dg00x*, %struct.snd_dg00x** %5, align 8
  %42 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %41, i32 0, i32 2
  store %struct.fw_iso_resources* %42, %struct.fw_iso_resources** %8, align 8
  br label %46

43:                                               ; preds = %35
  %44 = load %struct.snd_dg00x*, %struct.snd_dg00x** %5, align 8
  %45 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %44, i32 0, i32 1
  store %struct.fw_iso_resources* %45, %struct.fw_iso_resources** %8, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** @snd_dg00x_stream_pcm_channels, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @amdtp_dot_set_parameters(%struct.amdtp_stream* %47, i32 %48, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %70

59:                                               ; preds = %46
  %60 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %8, align 8
  %61 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %62 = call i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream* %61)
  %63 = load %struct.snd_dg00x*, %struct.snd_dg00x** %5, align 8
  %64 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_2__* @fw_parent_device(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @fw_iso_resources_allocate(%struct.fw_iso_resources* %60, i32 %62, i32 %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %59, %57, %32
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @amdtp_dot_set_parameters(%struct.amdtp_stream*, i32, i32) #1

declare dso_local i32 @fw_iso_resources_allocate(%struct.fw_iso_resources*, i32, i32) #1

declare dso_local i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream*) #1

declare dso_local %struct.TYPE_2__* @fw_parent_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
