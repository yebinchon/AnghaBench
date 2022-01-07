; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore_copy__map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore_copy__map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcore_copy_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kcore_copy_info*, i64, i64, i64, i64, i64)* @kcore_copy__map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcore_copy__map(%struct.kcore_copy_info* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kcore_copy_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.kcore_copy_info* %0, %struct.kcore_copy_info** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %6
  store i32 0, i32* %7, align 4
  br label %51

24:                                               ; preds = %19
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load i64, i64* %11, align 8
  %29 = add nsw i64 %27, %28
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %12, align 8
  %36 = sub nsw i64 %34, %35
  br label %41

37:                                               ; preds = %24
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = sub nsw i64 %38, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i64 [ %36, %33 ], [ %40, %37 ]
  store i64 %42, i64* %14, align 8
  %43 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %8, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %15, align 8
  %47 = call i64 @kcore_copy_info__addnew(%struct.kcore_copy_info* %43, i64 %44, i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 -1
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %41, %23
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i64 @kcore_copy_info__addnew(%struct.kcore_copy_info*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
