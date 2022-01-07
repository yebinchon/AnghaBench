; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_any_set.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_any_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparsebit = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@MASK_BITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparsebit_any_set(%struct.sparsebit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sparsebit*, align 8
  store %struct.sparsebit* %0, %struct.sparsebit** %3, align 8
  %4 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %5 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %11 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %19 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %9
  %23 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %24 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MASK_BITS, align 8
  %29 = sub nsw i64 0, %28
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %33 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, -1
  br label %38

38:                                               ; preds = %31, %22
  %39 = phi i1 [ false, %22 ], [ %37, %31 ]
  br label %40

40:                                               ; preds = %38, %9
  %41 = phi i1 [ true, %9 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %8
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
