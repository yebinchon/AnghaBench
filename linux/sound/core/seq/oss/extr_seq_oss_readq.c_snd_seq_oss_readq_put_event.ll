; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_put_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_put_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_readq = type { i32, i32, i64, i32, i32, i32* }
%union.evrec = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_readq_put_event(%struct.seq_oss_readq* %0, %union.evrec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_oss_readq*, align 8
  %5 = alloca %union.evrec*, align 8
  %6 = alloca i64, align 8
  store %struct.seq_oss_readq* %0, %struct.seq_oss_readq** %4, align 8
  store %union.evrec* %1, %union.evrec** %5, align 8
  %7 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %8 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %7, i32 0, i32 3
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %12 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %15 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %21 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %20, i32 0, i32 3
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %2
  %27 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %28 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %31 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load %union.evrec*, %union.evrec** %5, align 8
  %35 = call i32 @memcpy(i32* %33, %union.evrec* %34, i32 4)
  %36 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %37 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  %40 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %41 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = urem i64 %39, %43
  %45 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %46 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %48 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %52 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %51, i32 0, i32 4
  %53 = call i32 @wake_up(i32* %52)
  %54 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %4, align 8
  %55 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %54, i32 0, i32 3
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %26, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, %union.evrec*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
