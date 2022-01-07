; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_futex.c_get_futex_key_refs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_futex.c_get_futex_key_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.futex_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CONFIG_MMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.futex_key*)* @get_futex_key_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_futex_key_refs(%union.futex_key* %0) #0 {
  %2 = alloca %union.futex_key*, align 8
  store %union.futex_key* %0, %union.futex_key** %2, align 8
  %3 = load %union.futex_key*, %union.futex_key** %2, align 8
  %4 = bitcast %union.futex_key* %3 to %struct.TYPE_3__*
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %32

9:                                                ; preds = %1
  %10 = load i32, i32* @CONFIG_MMU, align 4
  %11 = call i32 @IS_ENABLED(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 (...) @smp_mb()
  br label %32

15:                                               ; preds = %9
  %16 = load %union.futex_key*, %union.futex_key** %2, align 8
  %17 = bitcast %union.futex_key* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 129
  switch i32 %20, label %30 [
    i32 129, label %21
    i32 128, label %27
  ]

21:                                               ; preds = %15
  %22 = load %union.futex_key*, %union.futex_key** %2, align 8
  %23 = bitcast %union.futex_key* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ihold(i32 %25)
  br label %32

27:                                               ; preds = %15
  %28 = load %union.futex_key*, %union.futex_key** %2, align 8
  %29 = call i32 @futex_get_mm(%union.futex_key* %28)
  br label %32

30:                                               ; preds = %15
  %31 = call i32 (...) @smp_mb()
  br label %32

32:                                               ; preds = %8, %13, %30, %27, %21
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @ihold(i32) #1

declare dso_local i32 @futex_get_mm(%union.futex_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
