; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_skb_ctx.c_process.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_skb_ctx.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 5
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %37

20:                                               ; preds = %8
  %21 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5, !llvm.loop !2

32:                                               ; preds = %5
  %33 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %19
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.full"}
