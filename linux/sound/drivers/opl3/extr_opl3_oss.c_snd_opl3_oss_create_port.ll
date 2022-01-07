; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_oss.c_snd_opl3_oss_create_port.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_oss.c_snd_opl3_oss_create_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.snd_opl3* }
%struct.snd_seq_port_callback = type { %struct.snd_opl3*, i32, i32, i32 }

@OPL3_HW_OPL3 = common dso_local global i32 0, align 4
@MAX_OPL2_VOICES = common dso_local global i32 0, align 4
@MAX_OPL3_VOICES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@snd_opl3_oss_event_input = common dso_local global i32 0, align 4
@snd_opl3_oss_free_port = common dso_local global i32 0, align 4
@OPL3_HW_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"OPL%i OSS Port\00", align 1
@SNDRV_SEQ_PORT_CAP_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_MIDI_GM = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_HARDWARE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_SYNTHESIZER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opl3*)* @snd_opl3_oss_create_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_oss_create_port(%struct.snd_opl3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca %struct.snd_seq_port_callback, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_opl3* %0, %struct.snd_opl3** %3, align 8
  %9 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %10 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @OPL3_HW_OPL3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @MAX_OPL2_VOICES, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @MAX_OPL3_VOICES, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_3__* @snd_midi_channel_alloc_set(i32 %20)
  %22 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %23 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %22, i32 0, i32 1
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %23, align 8
  %24 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %25 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp eq %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %99

31:                                               ; preds = %18
  %32 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %33 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %34 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store %struct.snd_opl3* %32, %struct.snd_opl3** %36, align 8
  %37 = call i32 @memset(%struct.snd_seq_port_callback* %4, i32 0, i32 24)
  %38 = load i32, i32* @THIS_MODULE, align 4
  %39 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %4, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @snd_opl3_oss_event_input, align 4
  %41 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %4, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @snd_opl3_oss_free_port, align 4
  %43 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %4, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %45 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %4, i32 0, i32 0
  store %struct.snd_opl3* %44, %struct.snd_opl3** %45, align 8
  %46 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %47 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @OPL3_HW_MASK, align 4
  %50 = and i32 %48, %49
  %51 = ashr i32 %50, 8
  store i32 %51, i32* %7, align 4
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %56 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %59 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 4
  %62 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %63 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SNDRV_SEQ_PORT_CAP_WRITE, align 4
  %66 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC, align 4
  %67 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_MIDI_GM, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_HARDWARE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_SYNTHESIZER, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %76 = call i32 @snd_seq_event_port_attach(i32 %64, %struct.snd_seq_port_callback* %4, i32 %65, i32 %72, i32 %73, i32 %74, i8* %75)
  %77 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %78 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  %81 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %82 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %31
  %88 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %89 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %8, align 4
  %93 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %94 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = call i32 @snd_midi_channel_free_set(%struct.TYPE_3__* %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %99

98:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %87, %28
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_3__* @snd_midi_channel_alloc_set(i32) #1

declare dso_local i32 @memset(%struct.snd_seq_port_callback*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_seq_event_port_attach(i32, %struct.snd_seq_port_callback*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @snd_midi_channel_free_set(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
