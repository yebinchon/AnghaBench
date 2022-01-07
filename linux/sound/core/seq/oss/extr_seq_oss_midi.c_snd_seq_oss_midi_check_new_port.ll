; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_check_new_port.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_check_new_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_midi = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.snd_seq_port_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC = common dso_local global i32 0, align 4
@PERM_WRITE = common dso_local global i32 0, align 4
@PERM_READ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_MIDI_EVENT_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ALSA: seq_oss: can't malloc midi coder\0A\00", align 1
@register_lock = common dso_local global i32 0, align 4
@max_midi_devs = common dso_local global i32 0, align 4
@midi_devs = common dso_local global %struct.seq_oss_midi** null, align 8
@SNDRV_SEQ_OSS_MAX_MIDI_DEVS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_midi_check_new_port(%struct.snd_seq_port_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_port_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_midi*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_seq_port_info* %0, %struct.snd_seq_port_info** %3, align 8
  %7 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %3, align 8
  %8 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %153

14:                                               ; preds = %1
  %15 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %3, align 8
  %16 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PERM_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @PERM_WRITE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %3, align 8
  %24 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PERM_READ, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @PERM_READ, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %153

31:                                               ; preds = %22, %14
  %32 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %3, align 8
  %33 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %3, align 8
  %37 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.seq_oss_midi* @find_slot(i32 %35, i32 %39)
  store %struct.seq_oss_midi* %40, %struct.seq_oss_midi** %5, align 8
  %41 = icmp ne %struct.seq_oss_midi* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %44 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %43, i32 0, i32 4
  %45 = call i32 @snd_use_lock_free(i32* %44)
  store i32 0, i32* %2, align 4
  br label %153

46:                                               ; preds = %31
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.seq_oss_midi* @kzalloc(i32 40, i32 %47)
  store %struct.seq_oss_midi* %48, %struct.seq_oss_midi** %5, align 8
  %49 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %50 = icmp ne %struct.seq_oss_midi* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %153

54:                                               ; preds = %46
  %55 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %3, align 8
  %56 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %60 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %3, align 8
  %62 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %66 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %3, align 8
  %68 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %71 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %73 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %75 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %74, i32 0, i32 4
  %76 = call i32 @snd_use_lock_init(i32* %75)
  %77 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %78 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %3, align 8
  %81 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @strlcpy(i32 %79, i32 %82, i32 4)
  %84 = load i32, i32* @MAX_MIDI_EVENT_BUF, align 4
  %85 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %86 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %85, i32 0, i32 2
  %87 = call i64 @snd_midi_event_new(i32 %84, i32* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %54
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %92 = call i32 @kfree(%struct.seq_oss_midi* %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %153

95:                                               ; preds = %54
  %96 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %97 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @snd_midi_event_no_status(i32 %98, i32 1)
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @spin_lock_irqsave(i32* @register_lock, i64 %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %115, %95
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @max_midi_devs, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load %struct.seq_oss_midi**, %struct.seq_oss_midi*** @midi_devs, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.seq_oss_midi*, %struct.seq_oss_midi** %107, i64 %109
  %111 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %110, align 8
  %112 = icmp eq %struct.seq_oss_midi* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %118

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %102

118:                                              ; preds = %113, %102
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @max_midi_devs, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  %123 = load i32, i32* @max_midi_devs, align 4
  %124 = load i32, i32* @SNDRV_SEQ_OSS_MAX_MIDI_DEVS, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %122
  %127 = load i64, i64* %6, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* @register_lock, i64 %127)
  %129 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %130 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @snd_midi_event_free(i32 %131)
  %133 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %134 = call i32 @kfree(%struct.seq_oss_midi* %133)
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %153

137:                                              ; preds = %122
  %138 = load i32, i32* @max_midi_devs, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @max_midi_devs, align 4
  br label %140

140:                                              ; preds = %137, %118
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %143 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %145 = load %struct.seq_oss_midi**, %struct.seq_oss_midi*** @midi_devs, align 8
  %146 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %147 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.seq_oss_midi*, %struct.seq_oss_midi** %145, i64 %149
  store %struct.seq_oss_midi* %144, %struct.seq_oss_midi** %150, align 8
  %151 = load i64, i64* %6, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* @register_lock, i64 %151)
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %140, %126, %89, %51, %42, %30, %13
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.seq_oss_midi* @find_slot(i32, i32) #1

declare dso_local i32 @snd_use_lock_free(i32*) #1

declare dso_local %struct.seq_oss_midi* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_use_lock_init(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @snd_midi_event_new(i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.seq_oss_midi*) #1

declare dso_local i32 @snd_midi_event_no_status(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_midi_event_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
