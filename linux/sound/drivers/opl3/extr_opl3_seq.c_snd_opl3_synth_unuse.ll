; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_seq.c_snd_opl3_synth_unuse.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_seq.c_snd_opl3_synth_unuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_subscribe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.snd_opl3 = type { i32 }

@SNDRV_SEQ_CLIENT_SYSTEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.snd_seq_port_subscribe*)* @snd_opl3_synth_unuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_synth_unuse(i8* %0, %struct.snd_seq_port_subscribe* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.snd_seq_port_subscribe*, align 8
  %5 = alloca %struct.snd_opl3*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.snd_seq_port_subscribe* %1, %struct.snd_seq_port_subscribe** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.snd_opl3*
  store %struct.snd_opl3* %7, %struct.snd_opl3** %5, align 8
  %8 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %9 = call i32 @snd_opl3_synth_cleanup(%struct.snd_opl3* %8)
  %10 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %4, align 8
  %11 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_SEQ_CLIENT_SYSTEM, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %18 = call i32 @snd_opl3_synth_use_dec(%struct.snd_opl3* %17)
  br label %19

19:                                               ; preds = %16, %2
  ret i32 0
}

declare dso_local i32 @snd_opl3_synth_cleanup(%struct.snd_opl3*) #1

declare dso_local i32 @snd_opl3_synth_use_dec(%struct.snd_opl3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
