; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c___module_address.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c___module_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i64 }

@module_addr_min = common dso_local global i64 0, align 8
@module_addr_max = common dso_local global i64 0, align 8
@MODULE_STATE_UNFORMED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.module* @__module_address(i64 %0) #0 {
  %2 = alloca %struct.module*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.module*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @module_addr_min, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @module_addr_max, align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store %struct.module* null, %struct.module** %2, align 8
  br label %36

13:                                               ; preds = %8
  %14 = call i32 (...) @module_assert_mutex_or_preempt()
  %15 = load i64, i64* %3, align 8
  %16 = call %struct.module* @mod_find(i64 %15)
  store %struct.module* %16, %struct.module** %4, align 8
  %17 = load %struct.module*, %struct.module** %4, align 8
  %18 = icmp ne %struct.module* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.module*, %struct.module** %4, align 8
  %22 = call i32 @within_module(i64 %20, %struct.module* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.module*, %struct.module** %4, align 8
  %28 = getelementptr inbounds %struct.module, %struct.module* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MODULE_STATE_UNFORMED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store %struct.module* null, %struct.module** %4, align 8
  br label %33

33:                                               ; preds = %32, %19
  br label %34

34:                                               ; preds = %33, %13
  %35 = load %struct.module*, %struct.module** %4, align 8
  store %struct.module* %35, %struct.module** %2, align 8
  br label %36

36:                                               ; preds = %34, %12
  %37 = load %struct.module*, %struct.module** %2, align 8
  ret %struct.module* %37
}

declare dso_local i32 @module_assert_mutex_or_preempt(...) #1

declare dso_local %struct.module* @mod_find(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @within_module(i64, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
