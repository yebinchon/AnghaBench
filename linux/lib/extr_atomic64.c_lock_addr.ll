; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_atomic64.c_lock_addr.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_atomic64.c_lock_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@L1_CACHE_SHIFT = common dso_local global i64 0, align 8
@atomic64_lock = common dso_local global %struct.TYPE_2__* null, align 8
@NR_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @lock_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @lock_addr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = ptrtoint i32* %4 to i64
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @L1_CACHE_SHIFT, align 8
  %7 = load i64, i64* %3, align 8
  %8 = lshr i64 %7, %6
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = lshr i64 %9, 8
  %11 = load i64, i64* %3, align 8
  %12 = lshr i64 %11, 16
  %13 = xor i64 %10, %12
  %14 = load i64, i64* %3, align 8
  %15 = xor i64 %14, %13
  store i64 %15, i64* %3, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @atomic64_lock, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @NR_LOCKS, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = and i64 %17, %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  ret i32* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
