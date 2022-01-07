; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_stat.c_get_idle_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_stat.c_get_idle_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_cpustat = type { i64* }

@CPUTIME_IDLE = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernel_cpustat*, i32)* @get_idle_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_idle_time(%struct.kernel_cpustat* %0, i32 %1) #0 {
  %3 = alloca %struct.kernel_cpustat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.kernel_cpustat* %0, %struct.kernel_cpustat** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 -1, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @cpu_online(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @get_cpu_idle_time_us(i32 %11, i32* null)
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.kernel_cpustat*, %struct.kernel_cpustat** %3, align 8
  %18 = getelementptr inbounds %struct.kernel_cpustat, %struct.kernel_cpustat* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @CPUTIME_IDLE, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  br label %27

23:                                               ; preds = %13
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @NSEC_PER_USEC, align 8
  %26 = mul i64 %24, %25
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %23, %16
  %28 = load i64, i64* %5, align 8
  ret i64 %28
}

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i64 @get_cpu_idle_time_us(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
