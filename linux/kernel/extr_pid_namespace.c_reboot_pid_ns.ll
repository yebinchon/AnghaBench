; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_reboot_pid_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_reboot_pid_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { i32, i32 }

@init_pid_ns = common dso_local global %struct.pid_namespace zeroinitializer, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reboot_pid_ns(%struct.pid_namespace* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pid_namespace*, align 8
  %5 = alloca i32, align 4
  store %struct.pid_namespace* %0, %struct.pid_namespace** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %7 = icmp eq %struct.pid_namespace* %6, @init_pid_ns
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %19 [
    i32 128, label %11
    i32 129, label %11
    i32 130, label %15
    i32 131, label %15
  ]

11:                                               ; preds = %9, %9
  %12 = load i32, i32* @SIGHUP, align 4
  %13 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %14 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %22

15:                                               ; preds = %9, %9
  %16 = load i32, i32* @SIGINT, align 4
  %17 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %18 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %22

19:                                               ; preds = %9
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %15, %11
  %23 = call i32 @read_lock(i32* @tasklist_lock)
  %24 = load i32, i32* @SIGKILL, align 4
  %25 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %26 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @send_sig(i32 %24, i32 %27, i32 1)
  %29 = call i32 @read_unlock(i32* @tasklist_lock)
  %30 = call i32 @do_exit(i32 0)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %19, %8
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
