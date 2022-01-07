; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_posix_cpu_timers_init_group.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_posix_cpu_timers_init_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signal_struct = type { %struct.TYPE_2__*, %struct.posix_cputimers }
%struct.TYPE_2__ = type { i32 }
%struct.posix_cputimers = type { i32 }

@RLIMIT_CPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.signal_struct*)* @posix_cpu_timers_init_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @posix_cpu_timers_init_group(%struct.signal_struct* %0) #0 {
  %2 = alloca %struct.signal_struct*, align 8
  %3 = alloca %struct.posix_cputimers*, align 8
  %4 = alloca i64, align 8
  store %struct.signal_struct* %0, %struct.signal_struct** %2, align 8
  %5 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %6 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i32 0, i32 1
  store %struct.posix_cputimers* %6, %struct.posix_cputimers** %3, align 8
  %7 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %8 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i64, i64* @RLIMIT_CPU, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @READ_ONCE(i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load %struct.posix_cputimers*, %struct.posix_cputimers** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @posix_cputimers_group_init(%struct.posix_cputimers* %15, i64 %16)
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @posix_cputimers_group_init(%struct.posix_cputimers*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
