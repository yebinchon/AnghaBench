; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cake_tin_data = type { i32, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i8* }

@cake_set_rate.MIN_RATE = internal constant i64 64, align 8
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cake_tin_data*, i64, i64, i64, i64)* @cake_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cake_set_rate(%struct.cake_tin_data* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.cake_tin_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.cake_tin_data* %0, %struct.cake_tin_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load %struct.cake_tin_data*, %struct.cake_tin_data** %6, align 8
  %17 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %16, i32 0, i32 0
  store i32 1514, i32* %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %5
  %21 = load i64, i64* %7, align 8
  %22 = ashr i64 %21, 12
  %23 = call i64 @min(i64 %22, i64 1514)
  %24 = call i8* @max(i64 %23, i32 300)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.cake_tin_data*, %struct.cake_tin_data** %6, align 8
  %27 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i64 34, i64* %13, align 8
  %28 = load i64, i64* @NSEC_PER_SEC, align 8
  %29 = load i64, i64* %13, align 8
  %30 = shl i64 %28, %29
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i8* @max(i64 64, i32 %33)
  %35 = call i64 @div64_u64(i64 %31, i8* %34)
  store i64 %35, i64* %14, align 8
  br label %36

36:                                               ; preds = %42, %20
  %37 = load i64, i64* %14, align 8
  %38 = ashr i64 %37, 34
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i64, i64* %14, align 8
  %44 = ashr i64 %43, 1
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %13, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %13, align 8
  br label %36

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %5
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.cake_tin_data*, %struct.cake_tin_data** %6, align 8
  %51 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.cake_tin_data*, %struct.cake_tin_data** %6, align 8
  %54 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load %struct.cake_tin_data*, %struct.cake_tin_data** %6, align 8
  %57 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %14, align 8
  %60 = mul nsw i64 %58, %59
  %61 = load i64, i64* %13, align 8
  %62 = ashr i64 %60, %61
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = mul nsw i64 %63, 3
  %65 = sdiv i64 %64, 2
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i8* @max(i64 %65, i32 %67)
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.cake_tin_data*, %struct.cake_tin_data** %6, align 8
  %71 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.cake_tin_data*, %struct.cake_tin_data** %6, align 8
  %75 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %73, %77
  %79 = load i64, i64* %9, align 8
  %80 = sub nsw i64 %78, %79
  %81 = load %struct.cake_tin_data*, %struct.cake_tin_data** %6, align 8
  %82 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = mul nsw i64 %84, 2
  %86 = trunc i64 %85 to i32
  %87 = call i8* @max(i64 %80, i32 %86)
  %88 = load %struct.cake_tin_data*, %struct.cake_tin_data** %6, align 8
  %89 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  store i8* %87, i8** %90, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.cake_tin_data*, %struct.cake_tin_data** %6, align 8
  %93 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i64 %91, i64* %94, align 8
  %95 = load %struct.cake_tin_data*, %struct.cake_tin_data** %6, align 8
  %96 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i32 16777216, i32* %97, align 8
  %98 = load %struct.cake_tin_data*, %struct.cake_tin_data** %6, align 8
  %99 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  store i32 1048576, i32* %100, align 4
  ret void
}

declare dso_local i8* @max(i64, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @div64_u64(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
