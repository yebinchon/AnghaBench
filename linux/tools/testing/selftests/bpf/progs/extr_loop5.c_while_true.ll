; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_loop5.c_while_true.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_loop5.c_while_true.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @while_true(%struct.__sk_buff* %0) #0 {
  %2 = alloca %struct.__sk_buff*, align 8
  %3 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %1, %34
  %5 = load %struct.__sk_buff*, %struct.__sk_buff** %2, align 8
  %6 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %5, i32 0, i32 0
  %7 = load volatile i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 3
  store i32 %11, i32* %3, align 4
  br label %15

12:                                               ; preds = %4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 7
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %35

19:                                               ; preds = %15
  %20 = call i32 (...) @barrier()
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %35

24:                                               ; preds = %19
  %25 = call i32 (...) @barrier()
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 13
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %35

29:                                               ; preds = %24
  %30 = call i32 (...) @barrier()
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 14
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %35

34:                                               ; preds = %29
  br label %4

35:                                               ; preds = %33, %28, %23, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
