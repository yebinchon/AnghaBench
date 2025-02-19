; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_eligible_pid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_eligible_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wait_opts = type { i64, i64 }
%struct.task_struct = type { i32 }

@PIDTYPE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wait_opts*, %struct.task_struct*)* @eligible_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eligible_pid(%struct.wait_opts* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.wait_opts*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.wait_opts* %0, %struct.wait_opts** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = load %struct.wait_opts*, %struct.wait_opts** %3, align 8
  %6 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PIDTYPE_MAX, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = load %struct.wait_opts*, %struct.wait_opts** %3, align 8
  %13 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @task_pid_type(%struct.task_struct* %11, i64 %14)
  %16 = load %struct.wait_opts*, %struct.wait_opts** %3, align 8
  %17 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br label %20

20:                                               ; preds = %10, %2
  %21 = phi i1 [ true, %2 ], [ %19, %10 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i64 @task_pid_type(%struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
