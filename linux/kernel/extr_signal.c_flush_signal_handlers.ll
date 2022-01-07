; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_flush_signal_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_flush_signal_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.k_sigaction* }
%struct.k_sigaction = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32*, i64 }

@_NSIG = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@SIG_DFL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_signal_handlers(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.k_sigaction*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.k_sigaction*, %struct.k_sigaction** %10, align 8
  %12 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %11, i64 0
  store %struct.k_sigaction* %12, %struct.k_sigaction** %6, align 8
  %13 = load i32, i32* @_NSIG, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %42, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %22 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SIG_IGN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20, %17
  %28 = load i64, i64* @SIG_DFL, align 8
  %29 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %30 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %34 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %37 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = call i32 @sigemptyset(i32* %38)
  %40 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %41 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %40, i32 1
  store %struct.k_sigaction* %41, %struct.k_sigaction** %6, align 8
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  br label %14

45:                                               ; preds = %14
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
