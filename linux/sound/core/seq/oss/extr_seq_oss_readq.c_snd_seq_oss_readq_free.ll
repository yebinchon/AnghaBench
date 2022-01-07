; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_readq = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_oss_readq_free(%struct.seq_oss_readq* %0) #0 {
  %2 = alloca %struct.seq_oss_readq*, align 8
  store %struct.seq_oss_readq* %0, %struct.seq_oss_readq** %2, align 8
  %3 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %2, align 8
  %4 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %2, align 8
  %9 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %2, align 8
  %13 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = srem i32 %11, %14
  %16 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %2, align 8
  %17 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %2, align 8
  %19 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %7, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
