; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_rseq.c_rseq_ip_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_rseq.c_rseq_ip_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }
%struct.rseq_cs = type { i64, i32, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @rseq_ip_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rseq_ip_fixup(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.rseq_cs, align 8
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %9 = call i64 @instruction_pointer(%struct.pt_regs* %8)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %10, %struct.task_struct** %5, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = call i32 @rseq_get_rseq_cs(%struct.task_struct* %11, %struct.rseq_cs* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %53

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @in_rseq_cs(i64 %18, %struct.rseq_cs* %6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %23 = call i32 @clear_rseq_cs(%struct.task_struct* %22)
  store i32 %23, i32* %2, align 4
  br label %53

24:                                               ; preds = %17
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %6, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @rseq_need_restart(%struct.task_struct* %25, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %53

33:                                               ; preds = %24
  %34 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %35 = call i32 @clear_rseq_cs(%struct.task_struct* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %53

40:                                               ; preds = %33
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %6, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @trace_rseq_ip_fixup(i64 %41, i32 %43, i32 %45, i64 %47)
  %49 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %50 = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @instruction_pointer_set(%struct.pt_regs* %49, i64 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %40, %38, %31, %21, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i32 @rseq_get_rseq_cs(%struct.task_struct*, %struct.rseq_cs*) #1

declare dso_local i32 @in_rseq_cs(i64, %struct.rseq_cs*) #1

declare dso_local i32 @clear_rseq_cs(%struct.task_struct*) #1

declare dso_local i32 @rseq_need_restart(%struct.task_struct*, i32) #1

declare dso_local i32 @trace_rseq_ip_fixup(i64, i32, i32, i64) #1

declare dso_local i32 @instruction_pointer_set(%struct.pt_regs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
