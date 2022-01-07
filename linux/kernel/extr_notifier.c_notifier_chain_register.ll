; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_notifier.c_notifier_chain_register.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_notifier.c_notifier_chain_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i64, %struct.notifier_block* }

@.str = private unnamed_addr constant [25 x i8] c"double register detected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block**, %struct.notifier_block*)* @notifier_chain_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notifier_chain_register(%struct.notifier_block** %0, %struct.notifier_block* %1) #0 {
  %3 = alloca %struct.notifier_block**, align 8
  %4 = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block** %0, %struct.notifier_block*** %3, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %4, align 8
  br label %5

5:                                                ; preds = %25, %2
  %6 = load %struct.notifier_block**, %struct.notifier_block*** %3, align 8
  %7 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %8 = icmp ne %struct.notifier_block* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = load %struct.notifier_block**, %struct.notifier_block*** %3, align 8
  %11 = load %struct.notifier_block*, %struct.notifier_block** %10, align 8
  %12 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %13 = icmp eq %struct.notifier_block* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ONCE(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %17 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.notifier_block**, %struct.notifier_block*** %3, align 8
  %20 = load %struct.notifier_block*, %struct.notifier_block** %19, align 8
  %21 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  br label %29

25:                                               ; preds = %9
  %26 = load %struct.notifier_block**, %struct.notifier_block*** %3, align 8
  %27 = load %struct.notifier_block*, %struct.notifier_block** %26, align 8
  %28 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %27, i32 0, i32 1
  store %struct.notifier_block** %28, %struct.notifier_block*** %3, align 8
  br label %5

29:                                               ; preds = %24, %5
  %30 = load %struct.notifier_block**, %struct.notifier_block*** %3, align 8
  %31 = load %struct.notifier_block*, %struct.notifier_block** %30, align 8
  %32 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %33 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %32, i32 0, i32 1
  store %struct.notifier_block* %31, %struct.notifier_block** %33, align 8
  %34 = load %struct.notifier_block**, %struct.notifier_block*** %3, align 8
  %35 = load %struct.notifier_block*, %struct.notifier_block** %34, align 8
  %36 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %37 = call i32 @rcu_assign_pointer(%struct.notifier_block* %35, %struct.notifier_block* %36)
  ret i32 0
}

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.notifier_block*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
