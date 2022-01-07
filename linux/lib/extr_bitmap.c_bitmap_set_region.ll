; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_set_region.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_set_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.region = type { i32, i32, i32, i64 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.region*, i64*, i32)* @bitmap_set_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_set_region(%struct.region* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.region*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.region* %0, %struct.region** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.region*, %struct.region** %5, align 8
  %10 = getelementptr inbounds %struct.region, %struct.region* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ERANGE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load %struct.region*, %struct.region** %5, align 8
  %19 = getelementptr inbounds %struct.region, %struct.region* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %41, %17
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.region*, %struct.region** %5, align 8
  %24 = getelementptr inbounds %struct.region, %struct.region* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ule i32 %22, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.region*, %struct.region** %5, align 8
  %31 = getelementptr inbounds %struct.region, %struct.region* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub i32 %32, %33
  %35 = add i32 %34, 1
  %36 = load %struct.region*, %struct.region** %5, align 8
  %37 = getelementptr inbounds %struct.region, %struct.region* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @min(i32 %35, i32 %38)
  %40 = call i32 @bitmap_set(i64* %28, i32 %29, i32 %39)
  br label %41

41:                                               ; preds = %27
  %42 = load %struct.region*, %struct.region** %5, align 8
  %43 = getelementptr inbounds %struct.region, %struct.region* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  br label %21

49:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @bitmap_set(i64*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
