; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_rings_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_rings_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_rings = type { i32 }

@cqes = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@SMP_CACHE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64*)* @rings_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rings_size(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.io_rings*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.io_rings*, %struct.io_rings** %8, align 8
  %12 = load i32, i32* @cqes, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @struct_size(%struct.io_rings* %11, i32 %12, i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @SIZE_MAX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @SIZE_MAX, align 8
  store i64 %19, i64* %4, align 8
  br label %43

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @array_size(i32 4, i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @SIZE_MAX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* @SIZE_MAX, align 8
  store i64 %27, i64* %4, align 8
  br label %43

28:                                               ; preds = %20
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @check_add_overflow(i64 %29, i64 %30, i64* %9)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* @SIZE_MAX, align 8
  store i64 %34, i64* %4, align 8
  br label %43

35:                                               ; preds = %28
  %36 = load i64*, i64** %7, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* %9, align 8
  %40 = load i64*, i64** %7, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %41, %33, %26, %18
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i64 @struct_size(%struct.io_rings*, i32, i32) #1

declare dso_local i64 @array_size(i32, i32) #1

declare dso_local i64 @check_add_overflow(i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
