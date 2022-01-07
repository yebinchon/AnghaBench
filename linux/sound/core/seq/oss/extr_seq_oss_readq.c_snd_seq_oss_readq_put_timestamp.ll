; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_put_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_put_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_readq = type { i64 }
%union.evrec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@SEQ_WAIT = common dso_local global i64 0, align 8
@EV_TIMING = common dso_local global i32 0, align 4
@TMR_WAIT_ABS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_readq_put_timestamp(%struct.seq_oss_readq* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.seq_oss_readq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.evrec, align 8
  store %struct.seq_oss_readq* %0, %struct.seq_oss_readq** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %10 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = call i32 @memset(%union.evrec* %7, i32 0, i32 16)
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %36 [
    i32 128, label %16
    i32 129, label %24
  ]

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = shl i64 %17, 8
  %19 = load i64, i64* @SEQ_WAIT, align 8
  %20 = or i64 %18, %19
  %21 = bitcast %union.evrec* %7 to i64*
  store i64 %20, i64* %21, align 8
  %22 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %23 = call i32 @snd_seq_oss_readq_put_event(%struct.seq_oss_readq* %22, %union.evrec* %7)
  br label %36

24:                                               ; preds = %13
  %25 = load i32, i32* @EV_TIMING, align 4
  %26 = bitcast %union.evrec* %7 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @TMR_WAIT_ABS, align 4
  %29 = bitcast %union.evrec* %7 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = bitcast %union.evrec* %7 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %35 = call i32 @snd_seq_oss_readq_put_event(%struct.seq_oss_readq* %34, %union.evrec* %7)
  br label %36

36:                                               ; preds = %13, %24, %16
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %39 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %3
  ret i32 0
}

declare dso_local i32 @memset(%union.evrec*, i32, i32) #1

declare dso_local i32 @snd_seq_oss_readq_put_event(%struct.seq_oss_readq*, %union.evrec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
