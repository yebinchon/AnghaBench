; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_smp.c_smp_call_function_any.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_smp.c_smp_call_function_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smp_call_function_any(%struct.cpumask* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpumask*, align 8
  %11 = alloca i32, align 4
  store %struct.cpumask* %0, %struct.cpumask** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 (...) @get_cpu()
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %15 = call i64 @cpumask_test_cpu(i32 %13, %struct.cpumask* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %44

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @cpu_to_node(i32 %19)
  %21 = call %struct.cpumask* @cpumask_of_node(i32 %20)
  store %struct.cpumask* %21, %struct.cpumask** %10, align 8
  %22 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %23 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %24 = call i32 @cpumask_first_and(%struct.cpumask* %22, %struct.cpumask* %23)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %35, %18
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @nr_cpu_ids, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @cpu_online(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %44

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %38 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %39 = call i32 @cpumask_next_and(i32 %36, %struct.cpumask* %37, %struct.cpumask* %38)
  store i32 %39, i32* %9, align 4
  br label %25

40:                                               ; preds = %25
  %41 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %42 = load i32, i32* @cpu_online_mask, align 4
  %43 = call i32 @cpumask_any_and(%struct.cpumask* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %33, %17
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @smp_call_function_single(i32 %45, i32 %46, i8* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = call i32 (...) @put_cpu()
  %51 = load i32, i32* %11, align 4
  ret i32 %51
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @cpumask_test_cpu(i32, %struct.cpumask*) #1

declare dso_local %struct.cpumask* @cpumask_of_node(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @cpumask_first_and(%struct.cpumask*, %struct.cpumask*) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i32 @cpumask_next_and(i32, %struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @cpumask_any_and(%struct.cpumask*, i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, i8*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
