; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_cpustat_user.c_cpu_stat_inject_cpu_idle_event.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_cpustat_user.c_cpu_stat_inject_cpu_idle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_NPROCESSORS_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpu_stat_inject_cpu_idle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_stat_inject_cpu_idle_event() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @_SC_NPROCESSORS_CONF, align 4
  %8 = call i32 @sysconf(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %43

12:                                               ; preds = %0
  %13 = call i32 (...) @sched_getcpu()
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %1, align 4
  br label %43

17:                                               ; preds = %12
  %18 = call i32 @sched_getaffinity(i32 0, i32 4, i32* %6)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %38, %17
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %38

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @CPU_ISSET(i32 %29, i32* %6)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %38

33:                                               ; preds = %28
  %34 = call i32 @CPU_ZERO(i32* %5)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @CPU_SET(i32 %35, i32* %5)
  %37 = call i32 @sched_setaffinity(i32 0, i32 4, i32* %5)
  br label %38

38:                                               ; preds = %33, %32, %27
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %19

41:                                               ; preds = %19
  %42 = call i32 @sched_setaffinity(i32 0, i32 4, i32* %6)
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %41, %16, %11
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @sched_getcpu(...) #1

declare dso_local i32 @sched_getaffinity(i32, i32, i32*) #1

declare dso_local i32 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @sched_setaffinity(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
