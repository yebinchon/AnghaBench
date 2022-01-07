; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_ovs_flow_used_time.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_ovs_flow_used_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_flow_used_time(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = call i32 @ktime_get_ts64(%struct.timespec64* %3)
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* %2, align 8
  %9 = sub i64 %7, %8
  %10 = call i32 @jiffies_to_msecs(i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %3, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @MSEC_PER_SEC, align 4
  %15 = mul nsw i32 %13, %14
  %16 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NSEC_PER_MSEC, align 4
  %19 = sdiv i32 %17, %18
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %21, %22
  ret i32 %23
}

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
