; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c_access_process_vm.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c_access_process_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @access_process_vm(%struct.task_struct* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mm_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* %8, align 8
  %14 = load i32, i32* %10, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %37

20:                                               ; preds = %5
  %21 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %22 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %21)
  store %struct.mm_struct* %22, %struct.mm_struct** %12, align 8
  %23 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %24 = icmp ne %struct.mm_struct* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %37

26:                                               ; preds = %20
  %27 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %28 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @__access_remote_vm(%struct.task_struct* %27, %struct.mm_struct* %28, i64 %29, i8* %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %35 = call i32 @mmput(%struct.mm_struct* %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %26, %25, %19
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @__access_remote_vm(%struct.task_struct*, %struct.mm_struct*, i64, i8*, i32, i32) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
