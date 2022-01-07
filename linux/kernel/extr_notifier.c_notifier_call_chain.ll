; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_notifier.c_notifier_call_chain.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_notifier.c_notifier_call_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block* }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_STOP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block**, i64, i8*, i32, i32*)* @notifier_call_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notifier_call_chain(%struct.notifier_block** %0, i64 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.notifier_block**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.notifier_block*, align 8
  %13 = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block** %0, %struct.notifier_block*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.notifier_block**, %struct.notifier_block*** %6, align 8
  %16 = load %struct.notifier_block*, %struct.notifier_block** %15, align 8
  %17 = call %struct.notifier_block* @rcu_dereference_raw(%struct.notifier_block* %16)
  store %struct.notifier_block* %17, %struct.notifier_block** %12, align 8
  br label %18

18:                                               ; preds = %50, %5
  %19 = load %struct.notifier_block*, %struct.notifier_block** %12, align 8
  %20 = icmp ne %struct.notifier_block* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %54

26:                                               ; preds = %24
  %27 = load %struct.notifier_block*, %struct.notifier_block** %12, align 8
  %28 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %27, i32 0, i32 1
  %29 = load %struct.notifier_block*, %struct.notifier_block** %28, align 8
  %30 = call %struct.notifier_block* @rcu_dereference_raw(%struct.notifier_block* %29)
  store %struct.notifier_block* %30, %struct.notifier_block** %13, align 8
  %31 = load %struct.notifier_block*, %struct.notifier_block** %12, align 8
  %32 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %31, i32 0, i32 0
  %33 = load i32 (%struct.notifier_block*, i64, i8*)*, i32 (%struct.notifier_block*, i64, i8*)** %32, align 8
  %34 = load %struct.notifier_block*, %struct.notifier_block** %12, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 %33(%struct.notifier_block* %34, i64 %35, i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %40, %26
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @NOTIFY_STOP_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %54

50:                                               ; preds = %44
  %51 = load %struct.notifier_block*, %struct.notifier_block** %13, align 8
  store %struct.notifier_block* %51, %struct.notifier_block** %12, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %9, align 4
  br label %18

54:                                               ; preds = %49, %24
  %55 = load i32, i32* %11, align 4
  ret i32 %55
}

declare dso_local %struct.notifier_block* @rcu_dereference_raw(%struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
