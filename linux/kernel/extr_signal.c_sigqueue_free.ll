; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_sigqueue_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_sigqueue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sigqueue = type { i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@SIGQUEUE_PREALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigqueue_free(%struct.sigqueue* %0) #0 {
  %2 = alloca %struct.sigqueue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store %struct.sigqueue* %0, %struct.sigqueue** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32* %8, i32** %4, align 8
  %9 = load %struct.sigqueue*, %struct.sigqueue** %2, align 8
  %10 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SIGQUEUE_PREALLOC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* @SIGQUEUE_PREALLOC, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.sigqueue*, %struct.sigqueue** %2, align 8
  %24 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.sigqueue*, %struct.sigqueue** %2, align 8
  %28 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %27, i32 0, i32 1
  %29 = call i32 @list_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store %struct.sigqueue* null, %struct.sigqueue** %2, align 8
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.sigqueue*, %struct.sigqueue** %2, align 8
  %37 = icmp ne %struct.sigqueue* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.sigqueue*, %struct.sigqueue** %2, align 8
  %40 = call i32 @__sigqueue_free(%struct.sigqueue* %39)
  br label %41

41:                                               ; preds = %38, %32
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__sigqueue_free(%struct.sigqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
