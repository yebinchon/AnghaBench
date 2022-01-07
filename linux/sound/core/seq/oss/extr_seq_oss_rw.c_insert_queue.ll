; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_rw.c_insert_queue.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_rw.c_insert_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%union.evrec = type { i32 }
%struct.file = type { i32 }
%struct.snd_seq_event = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@SNDRV_SEQ_EVENT_NOTEOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, %union.evrec*, %struct.file*)* @insert_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_queue(%struct.seq_oss_devinfo* %0, %union.evrec* %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_devinfo*, align 8
  %6 = alloca %union.evrec*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_seq_event, align 4
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %5, align 8
  store %union.evrec* %1, %union.evrec** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %11 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = load %union.evrec*, %union.evrec** %6, align 8
  %14 = call i64 @snd_seq_oss_process_timer_event(%struct.TYPE_7__* %12, %union.evrec* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

17:                                               ; preds = %3
  %18 = call i32 @memset(%struct.snd_seq_event* %9, i32 0, i32 8)
  %19 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEOFF, align 4
  %20 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %22 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %23 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %27 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @snd_seq_oss_fill_addr(%struct.seq_oss_devinfo* %21, %struct.snd_seq_event* %9, i32 %25, i32 %29)
  %31 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %32 = load %union.evrec*, %union.evrec** %6, align 8
  %33 = call i64 @snd_seq_oss_process_event(%struct.seq_oss_devinfo* %31, %union.evrec* %32, %struct.snd_seq_event* %9)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %74

36:                                               ; preds = %17
  %37 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %38 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %37, i32 0, i32 2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = call i32 @snd_seq_oss_timer_cur_tick(%struct.TYPE_7__* %39)
  %41 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %44 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %36
  %50 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %51 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49, %36
  %57 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %58 = call i32 @snd_seq_oss_dispatch(%struct.seq_oss_devinfo* %57, %struct.snd_seq_event* %9, i32 0, i32 0)
  br label %72

59:                                               ; preds = %49
  %60 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %61 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.file*, %struct.file** %7, align 8
  %64 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %65 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @is_nonblock_mode(i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @snd_seq_kernel_client_enqueue(i32 %62, %struct.snd_seq_event* %9, %struct.file* %63, i32 %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %59, %56
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %35, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @snd_seq_oss_process_timer_event(%struct.TYPE_7__*, %union.evrec*) #1

declare dso_local i32 @memset(%struct.snd_seq_event*, i32, i32) #1

declare dso_local i32 @snd_seq_oss_fill_addr(%struct.seq_oss_devinfo*, %struct.snd_seq_event*, i32, i32) #1

declare dso_local i64 @snd_seq_oss_process_event(%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*) #1

declare dso_local i32 @snd_seq_oss_timer_cur_tick(%struct.TYPE_7__*) #1

declare dso_local i32 @snd_seq_oss_dispatch(%struct.seq_oss_devinfo*, %struct.snd_seq_event*, i32, i32) #1

declare dso_local i32 @snd_seq_kernel_client_enqueue(i32, %struct.snd_seq_event*, %struct.file*, i32) #1

declare dso_local i32 @is_nonblock_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
