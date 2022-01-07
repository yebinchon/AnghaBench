; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_event.c_pitchbend_decode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_event.c_pitchbend_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_seq_event*, i8*)* @pitchbend_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pitchbend_decode(%struct.snd_seq_event* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_seq_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_seq_event* %0, %struct.snd_seq_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.snd_seq_event*, %struct.snd_seq_event** %3, align 8
  %7 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 8192
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 127
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %14, i8* %16, align 1
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 7
  %19 = and i32 %18, 127
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %20, i8* %22, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
