; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_bitmask.c__setbit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_bitmask.c__setbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmask = type { i32, i64* }

@bitsperlong = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmask*, i32, i32)* @_setbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_setbit(%struct.bitmask* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bitmask*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bitmask* %0, %struct.bitmask** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.bitmask*, %struct.bitmask** %4, align 8
  %9 = getelementptr inbounds %struct.bitmask, %struct.bitmask* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @bitsperlong, align 4
  %18 = urem i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  %21 = load %struct.bitmask*, %struct.bitmask** %4, align 8
  %22 = getelementptr inbounds %struct.bitmask, %struct.bitmask* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @bitsperlong, align 4
  %26 = udiv i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %23, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = or i64 %29, %20
  store i64 %30, i64* %28, align 8
  br label %48

31:                                               ; preds = %12
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @bitsperlong, align 4
  %34 = urem i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = xor i64 %36, -1
  %38 = load %struct.bitmask*, %struct.bitmask** %4, align 8
  %39 = getelementptr inbounds %struct.bitmask, %struct.bitmask* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @bitsperlong, align 4
  %43 = udiv i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %40, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = and i64 %46, %37
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %31, %15
  br label %49

49:                                               ; preds = %48, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
