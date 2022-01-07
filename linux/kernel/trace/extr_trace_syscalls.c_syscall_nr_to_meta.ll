; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_syscalls.c_syscall_nr_to_meta.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_syscalls.c_syscall_nr_to_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_metadata = type { i32 }

@syscalls_metadata = common dso_local global %struct.syscall_metadata** null, align 8
@NR_syscalls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.syscall_metadata* (i32)* @syscall_nr_to_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.syscall_metadata* @syscall_nr_to_meta(i32 %0) #0 {
  %2 = alloca %struct.syscall_metadata*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load %struct.syscall_metadata**, %struct.syscall_metadata*** @syscalls_metadata, align 8
  %5 = icmp ne %struct.syscall_metadata** %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NR_syscalls, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %6, %1
  store %struct.syscall_metadata* null, %struct.syscall_metadata** %2, align 8
  br label %20

14:                                               ; preds = %10
  %15 = load %struct.syscall_metadata**, %struct.syscall_metadata*** @syscalls_metadata, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.syscall_metadata*, %struct.syscall_metadata** %15, i64 %17
  %19 = load %struct.syscall_metadata*, %struct.syscall_metadata** %18, align 8
  store %struct.syscall_metadata* %19, %struct.syscall_metadata** %2, align 8
  br label %20

20:                                               ; preds = %14, %13
  %21 = load %struct.syscall_metadata*, %struct.syscall_metadata** %2, align 8
  ret %struct.syscall_metadata* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
