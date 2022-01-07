; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_smp.c_smp_call_function_single.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_smp.c_smp_call_function_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@CSD_FLAG_LOCK = common dso_local global i32 0, align 4
@CSD_FLAG_SYNCHRONOUS = common dso_local global i32 0, align 4
@oops_in_progress = common dso_local global i32 0, align 4
@csd_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smp_call_function_single(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %14 = load i32, i32* @CSD_FLAG_LOCK, align 4
  %15 = load i32, i32* @CSD_FLAG_SYNCHRONOUS, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = call i32 (...) @get_cpu()
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @cpu_online(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = call i64 (...) @irqs_disabled()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @oops_in_progress, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %21, %4
  %29 = phi i1 [ false, %21 ], [ false, %4 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON_ONCE(i32 %30)
  %32 = call i32 (...) @in_task()
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON_ONCE(i32 %35)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %28
  %40 = call %struct.TYPE_6__* @this_cpu_ptr(i32* @csd_data)
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %9, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = call i32 @csd_lock(%struct.TYPE_6__* %41)
  br label %43

43:                                               ; preds = %39, %28
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @generic_exec_single(i32 %44, %struct.TYPE_6__* %45, i32 %46, i8* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = call i32 @csd_lock_wait(%struct.TYPE_6__* %52)
  br label %54

54:                                               ; preds = %51, %43
  %55 = call i32 (...) @put_cpu()
  %56 = load i32, i32* %12, align 4
  ret i32 %56
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local i32 @in_task(...) #1

declare dso_local %struct.TYPE_6__* @this_cpu_ptr(i32*) #1

declare dso_local i32 @csd_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @generic_exec_single(i32, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @csd_lock_wait(%struct.TYPE_6__*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
