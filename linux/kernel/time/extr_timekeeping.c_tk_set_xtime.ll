; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_set_xtime.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_set_xtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timekeeper = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timespec64 = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timekeeper*, %struct.timespec64*)* @tk_set_xtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tk_set_xtime(%struct.timekeeper* %0, %struct.timespec64* %1) #0 {
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca %struct.timespec64*, align 8
  store %struct.timekeeper* %0, %struct.timekeeper** %3, align 8
  store %struct.timespec64* %1, %struct.timespec64** %4, align 8
  %5 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %6 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %9 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %11 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %15 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %13, %17
  %19 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %20 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
