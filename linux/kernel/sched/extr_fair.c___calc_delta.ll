; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c___calc_delta.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c___calc_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.load_weight = type { i32 }

@WMULT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.load_weight*)* @__calc_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__calc_delta(i32 %0, i64 %1, %struct.load_weight* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.load_weight*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.load_weight* %2, %struct.load_weight** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @scale_load_down(i64 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @WMULT_SHIFT, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.load_weight*, %struct.load_weight** %6, align 8
  %13 = call i32 @__update_inv_weight(%struct.load_weight* %12)
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, 32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %23, %18
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %8, align 4
  br label %19

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = trunc i64 %31 to i32
  %33 = load %struct.load_weight*, %struct.load_weight** %6, align 8
  %34 = getelementptr inbounds %struct.load_weight, %struct.load_weight* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %41, %29
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  br label %37

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @mul_u64_u32_shr(i32 %47, i32 %48, i32 %49)
  ret i32 %50
}

declare dso_local i32 @scale_load_down(i64) #1

declare dso_local i32 @__update_inv_weight(%struct.load_weight*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mul_u64_u32_shr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
