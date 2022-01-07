; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_smp.c_smp_call_on_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_smp.c_smp_call_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_call_on_cpu_struct = type { i32 (i8*)*, i8*, i32, i32, i32, i32 }

@smp_call_on_cpu_callback = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smp_call_on_cpu(i32 %0, i32 (i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32 (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smp_call_on_cpu_struct, align 8
  store i32 %0, i32* %6, align 4
  store i32 (i8*)* %1, i32 (i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %10, i32 0, i32 0
  %12 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  store i32 (i8*)* %12, i32 (i8*)** %11, align 8
  %13 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %10, i32 0, i32 1
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %10, i32 0, i32 2
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  br label %21

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ -1, %20 ]
  store i32 %22, i32* %15, align 8
  %23 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %10, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %10, i32 0, i32 4
  %25 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %10, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @COMPLETION_INITIALIZER_ONSTACK(i32 %26)
  store i32 %27, i32* %24, align 8
  %28 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %10, i32 0, i32 5
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %10, i32 0, i32 5
  %30 = load i32, i32* @smp_call_on_cpu_callback, align 4
  %31 = call i32 @INIT_WORK_ONSTACK(i32* %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @nr_cpu_ids, align 4
  %34 = icmp uge i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @cpu_online(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35, %21
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @system_wq, align 4
  %45 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %10, i32 0, i32 5
  %46 = call i32 @queue_work_on(i32 %43, i32 %44, i32* %45)
  %47 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %10, i32 0, i32 4
  %48 = call i32 @wait_for_completion(i32* %47)
  %49 = getelementptr inbounds %struct.smp_call_on_cpu_struct, %struct.smp_call_on_cpu_struct* %10, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %39
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @COMPLETION_INITIALIZER_ONSTACK(i32) #1

declare dso_local i32 @INIT_WORK_ONSTACK(i32*, i32) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
