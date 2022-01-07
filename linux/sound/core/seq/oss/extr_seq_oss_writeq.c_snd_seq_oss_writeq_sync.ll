; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_writeq.c_snd_seq_oss_writeq_sync.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_writeq.c_snd_seq_oss_writeq_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_writeq = type { i64, i32, i32, %struct.seq_oss_devinfo* }
%struct.seq_oss_devinfo = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.snd_seq_event = type { i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%union.evrec = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@SNDRV_SEQ_EVENT_ECHO = common dso_local global i32 0, align 4
@SEQ_SYNCTIMER = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_writeq_sync(%struct.seq_oss_writeq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.seq_oss_writeq*, align 8
  %4 = alloca %struct.seq_oss_devinfo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_seq_event, align 8
  %7 = alloca %union.evrec*, align 8
  store %struct.seq_oss_writeq* %0, %struct.seq_oss_writeq** %3, align 8
  %8 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %9 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %8, i32 0, i32 3
  %10 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %9, align 8
  store %struct.seq_oss_devinfo* %10, %struct.seq_oss_devinfo** %4, align 8
  %11 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %12 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @snd_seq_oss_timer_cur_tick(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %16 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

21:                                               ; preds = %1
  %22 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %23 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %21
  %27 = call i32 @memset(%struct.snd_seq_event* %6, i32 0, i32 32)
  %28 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @SNDRV_SEQ_EVENT_ECHO, align 4
  %30 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %35 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %36 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %40 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_seq_oss_fill_addr(%struct.seq_oss_devinfo* %34, %struct.snd_seq_event* %6, i32 %38, i32 %42)
  %44 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 0
  %45 = bitcast i32* %44 to %union.evrec*
  store %union.evrec* %45, %union.evrec** %7, align 8
  %46 = load i32, i32* @SEQ_SYNCTIMER, align 4
  %47 = load %union.evrec*, %union.evrec** %7, align 8
  %48 = bitcast %union.evrec* %47 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %union.evrec*, %union.evrec** %7, align 8
  %52 = bitcast %union.evrec* %51 to %struct.TYPE_6__*
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %55 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  %56 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %57 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snd_seq_kernel_client_enqueue(i32 %58, %struct.snd_seq_event* %6, i32* null, i32 1)
  br label %60

60:                                               ; preds = %26, %21
  %61 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %62 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %65 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @HZ, align 4
  %71 = call i32 @wait_event_interruptible_timeout(i32 %63, i32 %69, i32 %70)
  %72 = load i32, i32* @current, align 4
  %73 = call i64 @signal_pending(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %77 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %60
  %79 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %80 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %85 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %78
  store i32 0, i32* %2, align 4
  br label %91

90:                                               ; preds = %83
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %89, %20
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @snd_seq_oss_timer_cur_tick(i32) #1

declare dso_local i32 @memset(%struct.snd_seq_event*, i32, i32) #1

declare dso_local i32 @snd_seq_oss_fill_addr(%struct.seq_oss_devinfo*, %struct.snd_seq_event*, i32, i32) #1

declare dso_local i32 @snd_seq_kernel_client_enqueue(i32, %struct.snd_seq_event*, i32*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
