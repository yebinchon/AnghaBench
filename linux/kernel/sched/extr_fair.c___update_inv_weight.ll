; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c___update_inv_weight.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c___update_inv_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.load_weight = type { i32, i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@WMULT_CONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.load_weight*)* @__update_inv_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_inv_weight(%struct.load_weight* %0) #0 {
  %2 = alloca %struct.load_weight*, align 8
  %3 = alloca i64, align 8
  store %struct.load_weight* %0, %struct.load_weight** %2, align 8
  %4 = load %struct.load_weight*, %struct.load_weight** %2, align 8
  %5 = getelementptr inbounds %struct.load_weight, %struct.load_weight* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @likely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.load_weight*, %struct.load_weight** %2, align 8
  %12 = getelementptr inbounds %struct.load_weight, %struct.load_weight* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @scale_load_down(i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i32, i32* @BITS_PER_LONG, align 4
  %16 = icmp sgt i32 %15, 32
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @WMULT_CONST, align 8
  %20 = icmp uge i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.load_weight*, %struct.load_weight** %2, align 8
  %26 = getelementptr inbounds %struct.load_weight, %struct.load_weight* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %47

27:                                               ; preds = %17, %10
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i64, i64* @WMULT_CONST, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.load_weight*, %struct.load_weight** %2, align 8
  %38 = getelementptr inbounds %struct.load_weight, %struct.load_weight* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %46

39:                                               ; preds = %27
  %40 = load i64, i64* @WMULT_CONST, align 8
  %41 = load i64, i64* %3, align 8
  %42 = udiv i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = load %struct.load_weight*, %struct.load_weight** %2, align 8
  %45 = getelementptr inbounds %struct.load_weight, %struct.load_weight* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %34
  br label %47

47:                                               ; preds = %9, %46, %24
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @scale_load_down(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
