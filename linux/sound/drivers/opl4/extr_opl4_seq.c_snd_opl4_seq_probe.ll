; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_seq.c_snd_opl4_seq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_seq.c_snd_opl4_seq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_seq_device = type { i32 }
%struct.snd_opl4 = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.snd_opl4* }
%struct.snd_seq_port_callback = type { %struct.snd_opl4*, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"OPL4 Wavetable\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@snd_opl4_seq_use = common dso_local global i32 0, align 4
@snd_opl4_seq_unuse = common dso_local global i32 0, align 4
@snd_opl4_seq_event_input = common dso_local global i32 0, align 4
@snd_opl4_seq_free_port = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SUBS_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_MIDI_GM = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_HARDWARE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_SYNTHESIZER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"OPL4 Wavetable Port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @snd_opl4_seq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl4_seq_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_seq_device*, align 8
  %5 = alloca %struct.snd_opl4*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_port_callback, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.snd_seq_device* @to_seq_dev(%struct.device* %9)
  store %struct.snd_seq_device* %10, %struct.snd_seq_device** %4, align 8
  %11 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %12 = call i64 @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device* %11)
  %13 = inttoptr i64 %12 to %struct.snd_opl4**
  %14 = load %struct.snd_opl4*, %struct.snd_opl4** %13, align 8
  store %struct.snd_opl4* %14, %struct.snd_opl4** %5, align 8
  %15 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %16 = icmp ne %struct.snd_opl4* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %119

20:                                               ; preds = %1
  %21 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %22 = call i64 @snd_yrw801_detect(%struct.snd_opl4* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %119

27:                                               ; preds = %20
  %28 = call %struct.TYPE_3__* @snd_midi_channel_alloc_set(i32 16)
  %29 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %30 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %29, i32 0, i32 1
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %30, align 8
  %31 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %32 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %119

38:                                               ; preds = %27
  %39 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %40 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %41 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store %struct.snd_opl4* %39, %struct.snd_opl4** %43, align 8
  %44 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %45 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %48 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snd_seq_create_kernel_client(i32 %46, i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %55 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i32 @snd_midi_channel_free_set(%struct.TYPE_3__* %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %119

59:                                               ; preds = %38
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %62 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %65 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  %68 = call i32 @memset(%struct.snd_seq_port_callback* %7, i32 0, i32 32)
  %69 = load i32, i32* @THIS_MODULE, align 4
  %70 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %7, i32 0, i32 5
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* @snd_opl4_seq_use, align 4
  %72 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %7, i32 0, i32 4
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @snd_opl4_seq_unuse, align 4
  %74 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %7, i32 0, i32 3
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* @snd_opl4_seq_event_input, align 4
  %76 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %7, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @snd_opl4_seq_free_port, align 4
  %78 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %7, i32 0, i32 1
  store i32 %77, i32* %78, align 8
  %79 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %80 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %7, i32 0, i32 0
  store %struct.snd_opl4* %79, %struct.snd_opl4** %80, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @SNDRV_SEQ_PORT_CAP_WRITE, align 4
  %83 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SUBS_WRITE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC, align 4
  %86 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_MIDI_GM, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_HARDWARE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_SYNTHESIZER, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @snd_seq_event_port_attach(i32 %81, %struct.snd_seq_port_callback* %7, i32 %84, i32 %91, i32 16, i32 24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %94 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  %97 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %98 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %59
  %104 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %105 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %8, align 4
  %109 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %110 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = call i32 @snd_midi_channel_free_set(%struct.TYPE_3__* %111)
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @snd_seq_delete_kernel_client(i32 %113)
  %115 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %116 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %115, i32 0, i32 0
  store i32 -1, i32* %116, align 8
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  br label %119

118:                                              ; preds = %59
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %103, %53, %35, %24, %17
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.snd_seq_device* @to_seq_dev(%struct.device*) #1

declare dso_local i64 @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device*) #1

declare dso_local i64 @snd_yrw801_detect(%struct.snd_opl4*) #1

declare dso_local %struct.TYPE_3__* @snd_midi_channel_alloc_set(i32) #1

declare dso_local i32 @snd_seq_create_kernel_client(i32, i32, i8*) #1

declare dso_local i32 @snd_midi_channel_free_set(%struct.TYPE_3__*) #1

declare dso_local i32 @memset(%struct.snd_seq_port_callback*, i32, i32) #1

declare dso_local i32 @snd_seq_event_port_attach(i32, %struct.snd_seq_port_callback*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @snd_seq_delete_kernel_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
