; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_check_region.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_check_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.region = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.region*)* @bitmap_check_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_check_region(%struct.region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.region*, align 8
  store %struct.region* %0, %struct.region** %3, align 8
  %4 = load %struct.region*, %struct.region** %3, align 8
  %5 = getelementptr inbounds %struct.region, %struct.region* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.region*, %struct.region** %3, align 8
  %8 = getelementptr inbounds %struct.region, %struct.region* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %6, %9
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = load %struct.region*, %struct.region** %3, align 8
  %13 = getelementptr inbounds %struct.region, %struct.region* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load %struct.region*, %struct.region** %3, align 8
  %18 = getelementptr inbounds %struct.region, %struct.region* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.region*, %struct.region** %3, align 8
  %21 = getelementptr inbounds %struct.region, %struct.region* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16, %11, %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
