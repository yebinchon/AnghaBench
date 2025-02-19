; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_task_setrlimit.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_task_setrlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rlimit* }
%struct.rlimit = type { i64 }

@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@PROCESS__SETRLIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, %struct.rlimit*)* @selinux_task_setrlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_task_setrlimit(%struct.task_struct* %0, i32 %1, %struct.rlimit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rlimit*, align 8
  %8 = alloca %struct.rlimit*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rlimit* %2, %struct.rlimit** %7, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.rlimit*, %struct.rlimit** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i64 %15
  store %struct.rlimit* %16, %struct.rlimit** %8, align 8
  %17 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %18 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.rlimit*, %struct.rlimit** %7, align 8
  %21 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = call i32 (...) @current_sid()
  %26 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %27 = call i32 @task_sid(%struct.task_struct* %26)
  %28 = load i32, i32* @SECCLASS_PROCESS, align 4
  %29 = load i32, i32* @PROCESS__SETRLIMIT, align 4
  %30 = call i32 @avc_has_perm(i32* @selinux_state, i32 %25, i32 %27, i32 %28, i32 %29, i32* null)
  store i32 %30, i32* %4, align 4
  br label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @current_sid(...) #1

declare dso_local i32 @task_sid(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
