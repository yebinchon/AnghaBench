; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_xtime_add.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_xtime_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timekeeper = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timespec64 = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timekeeper*, %struct.timespec64*)* @tk_xtime_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tk_xtime_add(%struct.timekeeper* %0, %struct.timespec64* %1) #0 {
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca %struct.timespec64*, align 8
  store %struct.timekeeper* %0, %struct.timekeeper** %3, align 8
  store %struct.timespec64* %1, %struct.timespec64** %4, align 8
  %5 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %6 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %9 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %15 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %19 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %17, %21
  %23 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %24 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %29 = call i32 @tk_normalize_xtime(%struct.timekeeper* %28)
  ret void
}

declare dso_local i32 @tk_normalize_xtime(%struct.timekeeper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
