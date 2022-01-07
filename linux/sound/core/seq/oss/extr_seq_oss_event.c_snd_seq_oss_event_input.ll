; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_event.c_snd_seq_oss_event_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_event.c_snd_seq_oss_event_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.seq_oss_devinfo = type { i64, i32*, i32 }
%union.evrec = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@SNDRV_SEQ_EVENT_ECHO = common dso_local global i64 0, align 8
@SEQ_SYNCTIMER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_event_input(%struct.snd_seq_event* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.seq_oss_devinfo*, align 8
  %13 = alloca %union.evrec*, align 8
  store %struct.snd_seq_event* %0, %struct.snd_seq_event** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.seq_oss_devinfo*
  store %struct.seq_oss_devinfo* %15, %struct.seq_oss_devinfo** %12, align 8
  %16 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %17 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNDRV_SEQ_EVENT_ECHO, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @snd_seq_oss_midi_input(%struct.snd_seq_event* %22, i32 %23, i8* %24)
  store i32 %25, i32* %6, align 4
  br label %68

26:                                               ; preds = %5
  %27 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %28 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %12, align 8
  %32 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %68

36:                                               ; preds = %26
  %37 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %38 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %37, i32 0, i32 1
  %39 = bitcast i32* %38 to %union.evrec*
  store %union.evrec* %39, %union.evrec** %13, align 8
  %40 = load %union.evrec*, %union.evrec** %13, align 8
  %41 = bitcast %union.evrec* %40 to %struct.TYPE_5__*
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SEQ_SYNCTIMER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %36
  %47 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %12, align 8
  %48 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %union.evrec*, %union.evrec** %13, align 8
  %51 = bitcast %union.evrec* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @snd_seq_oss_writeq_wakeup(i32 %49, i32 %53)
  br label %67

55:                                               ; preds = %36
  %56 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %12, align 8
  %57 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %68

61:                                               ; preds = %55
  %62 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %12, align 8
  %63 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %union.evrec*, %union.evrec** %13, align 8
  %66 = call i32 @snd_seq_oss_readq_put_event(i32* %64, %union.evrec* %65)
  br label %67

67:                                               ; preds = %61, %46
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %60, %35, %21
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @snd_seq_oss_midi_input(%struct.snd_seq_event*, i32, i8*) #1

declare dso_local i32 @snd_seq_oss_writeq_wakeup(i32, i32) #1

declare dso_local i32 @snd_seq_oss_readq_put_event(i32*, %union.evrec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
