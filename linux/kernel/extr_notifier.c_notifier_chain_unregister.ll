; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_notifier.c_notifier_chain_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_notifier.c_notifier_chain_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { %struct.notifier_block* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block**, %struct.notifier_block*)* @notifier_chain_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notifier_chain_unregister(%struct.notifier_block** %0, %struct.notifier_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.notifier_block**, align 8
  %5 = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block** %0, %struct.notifier_block*** %4, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %5, align 8
  br label %6

6:                                                ; preds = %22, %2
  %7 = load %struct.notifier_block**, %struct.notifier_block*** %4, align 8
  %8 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %9 = icmp ne %struct.notifier_block* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load %struct.notifier_block**, %struct.notifier_block*** %4, align 8
  %12 = load %struct.notifier_block*, %struct.notifier_block** %11, align 8
  %13 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %14 = icmp eq %struct.notifier_block* %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.notifier_block**, %struct.notifier_block*** %4, align 8
  %17 = load %struct.notifier_block*, %struct.notifier_block** %16, align 8
  %18 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %19 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %18, i32 0, i32 0
  %20 = load %struct.notifier_block*, %struct.notifier_block** %19, align 8
  %21 = call i32 @rcu_assign_pointer(%struct.notifier_block* %17, %struct.notifier_block* %20)
  store i32 0, i32* %3, align 4
  br label %29

22:                                               ; preds = %10
  %23 = load %struct.notifier_block**, %struct.notifier_block*** %4, align 8
  %24 = load %struct.notifier_block*, %struct.notifier_block** %23, align 8
  %25 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %24, i32 0, i32 0
  store %struct.notifier_block** %25, %struct.notifier_block*** %4, align 8
  br label %6

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @rcu_assign_pointer(%struct.notifier_block*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
