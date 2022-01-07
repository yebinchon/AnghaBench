; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_syscall.c_collect_syscall.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_syscall.c_collect_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.syscall_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.pt_regs = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.syscall_info*)* @collect_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_syscall(%struct.task_struct* %0, %struct.syscall_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.syscall_info*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.syscall_info* %1, %struct.syscall_info** %5, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = call i32 @try_get_task_stack(%struct.task_struct* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.syscall_info*, %struct.syscall_info** %5, align 8
  %12 = call i32 @memset(%struct.syscall_info* %11, i32 0, i32 32)
  %13 = load %struct.syscall_info*, %struct.syscall_info** %5, align 8
  %14 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  store i32 0, i32* %3, align 4
  br label %65

16:                                               ; preds = %2
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %17)
  store %struct.pt_regs* %18, %struct.pt_regs** %6, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %20 = icmp ne %struct.pt_regs* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %27 = call i32 @put_task_stack(%struct.task_struct* %26)
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %16
  %31 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %32 = call i32 @user_stack_pointer(%struct.pt_regs* %31)
  %33 = load %struct.syscall_info*, %struct.syscall_info** %5, align 8
  %34 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %36 = call i32 @instruction_pointer(%struct.pt_regs* %35)
  %37 = load %struct.syscall_info*, %struct.syscall_info** %5, align 8
  %38 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %41 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %42 = call i32 @syscall_get_nr(%struct.task_struct* %40, %struct.pt_regs* %41)
  %43 = load %struct.syscall_info*, %struct.syscall_info** %5, align 8
  %44 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.syscall_info*, %struct.syscall_info** %5, align 8
  %47 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, -1
  br i1 %51, label %52, label %62

52:                                               ; preds = %30
  %53 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %54 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %55 = load %struct.syscall_info*, %struct.syscall_info** %5, align 8
  %56 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = bitcast i32* %59 to i64*
  %61 = call i32 @syscall_get_arguments(%struct.task_struct* %53, %struct.pt_regs* %54, i64* %60)
  br label %62

62:                                               ; preds = %52, %30
  %63 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %64 = call i32 @put_task_stack(%struct.task_struct* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %25, %10
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @try_get_task_stack(%struct.task_struct*) #1

declare dso_local i32 @memset(%struct.syscall_info*, i32, i32) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @put_task_stack(%struct.task_struct*) #1

declare dso_local i32 @user_stack_pointer(%struct.pt_regs*) #1

declare dso_local i32 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i32 @syscall_get_nr(%struct.task_struct*, %struct.pt_regs*) #1

declare dso_local i32 @syscall_get_arguments(%struct.task_struct*, %struct.pt_regs*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
