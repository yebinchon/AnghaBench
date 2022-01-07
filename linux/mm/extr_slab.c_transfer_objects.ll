; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab.c_transfer_objects.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab.c_transfer_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array_cache = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.array_cache*, %struct.array_cache*, i32)* @transfer_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transfer_objects(%struct.array_cache* %0, %struct.array_cache* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.array_cache*, align 8
  %6 = alloca %struct.array_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.array_cache* %0, %struct.array_cache** %5, align 8
  store %struct.array_cache* %1, %struct.array_cache** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.array_cache*, %struct.array_cache** %6, align 8
  %10 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.array_cache*, %struct.array_cache** %5, align 8
  %14 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.array_cache*, %struct.array_cache** %5, align 8
  %17 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = call i32 @min3(i64 %11, i32 %12, i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

24:                                               ; preds = %3
  %25 = load %struct.array_cache*, %struct.array_cache** %5, align 8
  %26 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.array_cache*, %struct.array_cache** %5, align 8
  %29 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.array_cache*, %struct.array_cache** %6, align 8
  %33 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.array_cache*, %struct.array_cache** %6, align 8
  %36 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %38, %40
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 8, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(i64 %31, i64 %41, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.array_cache*, %struct.array_cache** %6, align 8
  %50 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.array_cache*, %struct.array_cache** %5, align 8
  %56 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %24, %23
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @min3(i64, i32, i64) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
