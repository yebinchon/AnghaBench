; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_access_vm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_access_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32 }
%struct.mm_struct = type { i32 }

@current = common dso_local global i64 0, align 8
@SUID_DUMP_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_access_vm(%struct.task_struct* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %15 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %14)
  store %struct.mm_struct* %15, %struct.mm_struct** %12, align 8
  %16 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %17 = icmp ne %struct.mm_struct* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %56

19:                                               ; preds = %5
  %20 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load i64, i64* @current, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %32 = call i64 @get_dumpable(%struct.mm_struct* %31)
  %33 = load i64, i64* @SUID_DUMP_USER, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %37 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ptracer_capable(%struct.task_struct* %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35, %24, %19
  %43 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %44 = call i32 @mmput(%struct.mm_struct* %43)
  store i32 0, i32* %6, align 4
  br label %56

45:                                               ; preds = %35, %30
  %46 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %47 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @__access_remote_vm(%struct.task_struct* %46, %struct.mm_struct* %47, i64 %48, i8* %49, i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %54 = call i32 @mmput(%struct.mm_struct* %53)
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %45, %42, %18
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i64 @get_dumpable(%struct.mm_struct*) #1

declare dso_local i32 @ptracer_capable(%struct.task_struct*, i32) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @__access_remote_vm(%struct.task_struct*, %struct.mm_struct*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
