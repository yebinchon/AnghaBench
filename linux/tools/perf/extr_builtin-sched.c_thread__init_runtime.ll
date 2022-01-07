; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_thread__init_runtime.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_thread__init_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_runtime = type { i32 }
%struct.thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread_runtime* (%struct.thread*)* @thread__init_runtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread_runtime* @thread__init_runtime(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread_runtime*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread_runtime*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  %5 = call %struct.thread_runtime* @zalloc(i32 4)
  store %struct.thread_runtime* %5, %struct.thread_runtime** %4, align 8
  %6 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %7 = icmp ne %struct.thread_runtime* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.thread_runtime* null, %struct.thread_runtime** %2, align 8
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %11 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %10, i32 0, i32 0
  %12 = call i32 @init_stats(i32* %11)
  %13 = load %struct.thread*, %struct.thread** %3, align 8
  %14 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %15 = call i32 @thread__set_priv(%struct.thread* %13, %struct.thread_runtime* %14)
  %16 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  store %struct.thread_runtime* %16, %struct.thread_runtime** %2, align 8
  br label %17

17:                                               ; preds = %9, %8
  %18 = load %struct.thread_runtime*, %struct.thread_runtime** %2, align 8
  ret %struct.thread_runtime* %18
}

declare dso_local %struct.thread_runtime* @zalloc(i32) #1

declare dso_local i32 @init_stats(i32*) #1

declare dso_local i32 @thread__set_priv(%struct.thread*, %struct.thread_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
