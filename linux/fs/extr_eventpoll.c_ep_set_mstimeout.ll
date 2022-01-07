; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_set_mstimeout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_set_mstimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i64, i64 }

@MSEC_PER_SEC = common dso_local global i64 0, align 8
@NSEC_PER_MSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i64)* @ep_set_mstimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @ep_set_mstimeout(i64 %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  store i64 %0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @MSEC_PER_SEC, align 8
  %9 = sdiv i64 %7, %8
  store i64 %9, i64* %6, align 8
  %10 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 1
  %11 = load i64, i64* @NSEC_PER_MSEC, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @MSEC_PER_SEC, align 8
  %14 = srem i64 %12, %13
  %15 = mul nsw i64 %11, %14
  store i64 %15, i64* %10, align 8
  %16 = call i32 @ktime_get_ts64(%struct.timespec64* %4)
  %17 = bitcast %struct.timespec64* %4 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = bitcast %struct.timespec64* %5 to { i64, i64 }*
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call { i64, i64 } @timespec64_add_safe(i64 %19, i64 %21, i64 %24, i64 %26)
  %28 = bitcast %struct.timespec64* %2 to { i64, i64 }*
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %30 = extractvalue { i64, i64 } %27, 0
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %32 = extractvalue { i64, i64 } %27, 1
  store i64 %32, i64* %31, align 8
  %33 = bitcast %struct.timespec64* %2 to { i64, i64 }*
  %34 = load { i64, i64 }, { i64, i64 }* %33, align 8
  ret { i64, i64 } %34
}

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local { i64, i64 } @timespec64_add_safe(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
