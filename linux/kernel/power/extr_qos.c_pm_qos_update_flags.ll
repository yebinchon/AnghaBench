; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_pm_qos_update_flags.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_pm_qos_update_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm_qos_flags = type { i64, i32 }
%struct.pm_qos_flags_request = type { i32, i64 }

@pm_qos_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_qos_update_flags(%struct.pm_qos_flags* %0, %struct.pm_qos_flags_request* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.pm_qos_flags*, align 8
  %6 = alloca %struct.pm_qos_flags_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pm_qos_flags* %0, %struct.pm_qos_flags** %5, align 8
  store %struct.pm_qos_flags_request* %1, %struct.pm_qos_flags_request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @pm_qos_lock, i64 %12)
  %14 = load %struct.pm_qos_flags*, %struct.pm_qos_flags** %5, align 8
  %15 = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %14, i32 0, i32 1
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %23

19:                                               ; preds = %4
  %20 = load %struct.pm_qos_flags*, %struct.pm_qos_flags** %5, align 8
  %21 = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  br label %23

23:                                               ; preds = %19, %18
  %24 = phi i64 [ 0, %18 ], [ %22, %19 ]
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %51 [
    i32 129, label %26
    i32 128, label %30
    i32 130, label %34
  ]

26:                                               ; preds = %23
  %27 = load %struct.pm_qos_flags*, %struct.pm_qos_flags** %5, align 8
  %28 = load %struct.pm_qos_flags_request*, %struct.pm_qos_flags_request** %6, align 8
  %29 = call i32 @pm_qos_flags_remove_req(%struct.pm_qos_flags* %27, %struct.pm_qos_flags_request* %28)
  br label %52

30:                                               ; preds = %23
  %31 = load %struct.pm_qos_flags*, %struct.pm_qos_flags** %5, align 8
  %32 = load %struct.pm_qos_flags_request*, %struct.pm_qos_flags_request** %6, align 8
  %33 = call i32 @pm_qos_flags_remove_req(%struct.pm_qos_flags* %31, %struct.pm_qos_flags_request* %32)
  br label %34

34:                                               ; preds = %23, %30
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.pm_qos_flags_request*, %struct.pm_qos_flags_request** %6, align 8
  %37 = getelementptr inbounds %struct.pm_qos_flags_request, %struct.pm_qos_flags_request* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.pm_qos_flags_request*, %struct.pm_qos_flags_request** %6, align 8
  %39 = getelementptr inbounds %struct.pm_qos_flags_request, %struct.pm_qos_flags_request* %38, i32 0, i32 0
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.pm_qos_flags_request*, %struct.pm_qos_flags_request** %6, align 8
  %42 = getelementptr inbounds %struct.pm_qos_flags_request, %struct.pm_qos_flags_request* %41, i32 0, i32 0
  %43 = load %struct.pm_qos_flags*, %struct.pm_qos_flags** %5, align 8
  %44 = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %43, i32 0, i32 1
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.pm_qos_flags*, %struct.pm_qos_flags** %5, align 8
  %48 = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %52

51:                                               ; preds = %23
  br label %52

52:                                               ; preds = %51, %34, %26
  %53 = load %struct.pm_qos_flags*, %struct.pm_qos_flags** %5, align 8
  %54 = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %53, i32 0, i32 1
  %55 = call i64 @list_empty(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %62

58:                                               ; preds = %52
  %59 = load %struct.pm_qos_flags*, %struct.pm_qos_flags** %5, align 8
  %60 = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = phi i64 [ 0, %57 ], [ %61, %58 ]
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* @pm_qos_lock, i64 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @trace_pm_qos_update_flags(i32 %66, i64 %67, i64 %68)
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  ret i32 %73
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @pm_qos_flags_remove_req(%struct.pm_qos_flags*, %struct.pm_qos_flags_request*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @trace_pm_qos_update_flags(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
