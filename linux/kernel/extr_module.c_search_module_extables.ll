; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_search_module_extables.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_search_module_extables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i32 }
%struct.module = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.exception_table_entry* @search_module_extables(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.exception_table_entry*, align 8
  %4 = alloca %struct.module*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.exception_table_entry* null, %struct.exception_table_entry** %3, align 8
  %5 = call i32 (...) @preempt_disable()
  %6 = load i64, i64* %2, align 8
  %7 = call %struct.module* @__module_address(i64 %6)
  store %struct.module* %7, %struct.module** %4, align 8
  %8 = load %struct.module*, %struct.module** %4, align 8
  %9 = icmp ne %struct.module* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.module*, %struct.module** %4, align 8
  %13 = getelementptr inbounds %struct.module, %struct.module* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %26

17:                                               ; preds = %11
  %18 = load %struct.module*, %struct.module** %4, align 8
  %19 = getelementptr inbounds %struct.module, %struct.module* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.module*, %struct.module** %4, align 8
  %22 = getelementptr inbounds %struct.module, %struct.module* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %2, align 8
  %25 = call %struct.exception_table_entry* @search_extable(i32 %20, i32 %23, i64 %24)
  store %struct.exception_table_entry* %25, %struct.exception_table_entry** %3, align 8
  br label %26

26:                                               ; preds = %17, %16, %10
  %27 = call i32 (...) @preempt_enable()
  %28 = load %struct.exception_table_entry*, %struct.exception_table_entry** %3, align 8
  ret %struct.exception_table_entry* %28
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.module* @__module_address(i64) #1

declare dso_local %struct.exception_table_entry* @search_extable(i32, i32, i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
