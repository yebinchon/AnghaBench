; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_emul.c_nrpn.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_emul.c_nrpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_op = type { i32 (i8*, %struct.snd_midi_channel*, %struct.snd_midi_channel_set*)* }
%struct.snd_midi_channel = type opaque
%struct.snd_midi_channel_set = type opaque
%struct.snd_midi_channel.0 = type { i32 }
%struct.snd_midi_channel_set.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.0*, %struct.snd_midi_channel_set.1*)* @nrpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nrpn(%struct.snd_midi_op* %0, i8* %1, %struct.snd_midi_channel.0* %2, %struct.snd_midi_channel_set.1* %3) #0 {
  %5 = alloca %struct.snd_midi_op*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_midi_channel.0*, align 8
  %8 = alloca %struct.snd_midi_channel_set.1*, align 8
  store %struct.snd_midi_op* %0, %struct.snd_midi_op** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.snd_midi_channel.0* %2, %struct.snd_midi_channel.0** %7, align 8
  store %struct.snd_midi_channel_set.1* %3, %struct.snd_midi_channel_set.1** %8, align 8
  %9 = load %struct.snd_midi_op*, %struct.snd_midi_op** %5, align 8
  %10 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %9, i32 0, i32 0
  %11 = load i32 (i8*, %struct.snd_midi_channel*, %struct.snd_midi_channel_set*)*, i32 (i8*, %struct.snd_midi_channel*, %struct.snd_midi_channel_set*)** %10, align 8
  %12 = icmp ne i32 (i8*, %struct.snd_midi_channel*, %struct.snd_midi_channel_set*)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = load %struct.snd_midi_op*, %struct.snd_midi_op** %5, align 8
  %15 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %14, i32 0, i32 0
  %16 = load i32 (i8*, %struct.snd_midi_channel*, %struct.snd_midi_channel_set*)*, i32 (i8*, %struct.snd_midi_channel*, %struct.snd_midi_channel_set*)** %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.snd_midi_channel.0*, %struct.snd_midi_channel.0** %7, align 8
  %19 = bitcast %struct.snd_midi_channel.0* %18 to %struct.snd_midi_channel*
  %20 = load %struct.snd_midi_channel_set.1*, %struct.snd_midi_channel_set.1** %8, align 8
  %21 = bitcast %struct.snd_midi_channel_set.1* %20 to %struct.snd_midi_channel_set*
  %22 = call i32 %16(i8* %17, %struct.snd_midi_channel* %19, %struct.snd_midi_channel_set* %21)
  br label %23

23:                                               ; preds = %13, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
