; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_sigchain.c_sigchain_pop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_sigchain.c_sigchain_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigchain_signal = type { i32, i32* }

@signals = common dso_local global %struct.sigchain_signal* null, align 8
@SIG_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sigchain_pop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigchain_signal*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.sigchain_signal*, %struct.sigchain_signal** @signals, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %5, i64 %7
  store %struct.sigchain_signal* %8, %struct.sigchain_signal** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @check_signum(i32 %9)
  %11 = load %struct.sigchain_signal*, %struct.sigchain_signal** %4, align 8
  %12 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.sigchain_signal*, %struct.sigchain_signal** %4, align 8
  %19 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.sigchain_signal*, %struct.sigchain_signal** %4, align 8
  %22 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @signal(i32 %17, i32 %27)
  %29 = load i64, i64* @SIG_ERR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %37

32:                                               ; preds = %16
  %33 = load %struct.sigchain_signal*, %struct.sigchain_signal** %4, align 8
  %34 = getelementptr inbounds %struct.sigchain_signal, %struct.sigchain_signal* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %31, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @check_signum(i32) #1

declare dso_local i64 @signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
