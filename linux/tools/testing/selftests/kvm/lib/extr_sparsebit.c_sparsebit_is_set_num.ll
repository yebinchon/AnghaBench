; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_is_set_num.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_is_set_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparsebit = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparsebit_is_set_num(%struct.sparsebit* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sparsebit*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sparsebit* %0, %struct.sparsebit** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add nsw i64 %13, %14
  %16 = sub nsw i64 %15, 1
  %17 = load i64, i64* %6, align 8
  %18 = icmp sge i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.sparsebit*, %struct.sparsebit** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @sparsebit_is_set(%struct.sparsebit* %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

26:                                               ; preds = %3
  %27 = load %struct.sparsebit*, %struct.sparsebit** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @sparsebit_next_clear(%struct.sparsebit* %27, i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub nsw i64 %33, %34
  %36 = load i64, i64* %7, align 8
  %37 = icmp sge i64 %35, %36
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i1 [ true, %26 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %25
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sparsebit_is_set(%struct.sparsebit*, i64) #1

declare dso_local i64 @sparsebit_next_clear(%struct.sparsebit*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
