; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcuperf.c_rcuperf_seq_diff.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcuperf.c_rcuperf_seq_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i64)* }

@cur_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @rcuperf_seq_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rcuperf_seq_diff(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64 (i64, i64)*, i64 (i64, i64)** %7, align 8
  %9 = icmp ne i64 (i64, i64)* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = sub i64 %11, %12
  store i64 %13, i64* %3, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (i64, i64)*, i64 (i64, i64)** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 %17(i64 %18, i64 %19)
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %14, %10
  %22 = load i64, i64* %3, align 8
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
