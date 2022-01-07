; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_next_clear_num.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_next_clear_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparsebit = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparsebit_next_clear_num(%struct.sparsebit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sparsebit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sparsebit* %0, %struct.sparsebit** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sge i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.sparsebit*, %struct.sparsebit** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @sparsebit_next_clear(%struct.sparsebit* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %48, %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %23, %24
  br label %26

26:                                               ; preds = %19, %16
  %27 = phi i1 [ false, %16 ], [ %25, %19 ]
  br i1 %27, label %28, label %52

28:                                               ; preds = %26
  %29 = load %struct.sparsebit*, %struct.sparsebit** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @sparsebit_is_clear(%struct.sparsebit* %29, i32 %30)
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.sparsebit*, %struct.sparsebit** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @sparsebit_is_clear_num(%struct.sparsebit* %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %28
  %41 = load %struct.sparsebit*, %struct.sparsebit** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @sparsebit_next_set(%struct.sparsebit* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %53

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.sparsebit*, %struct.sparsebit** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @sparsebit_next_clear(%struct.sparsebit* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %16

52:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %46, %38
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sparsebit_next_clear(%struct.sparsebit*, i32) #1

declare dso_local i32 @sparsebit_is_clear(%struct.sparsebit*, i32) #1

declare dso_local i64 @sparsebit_is_clear_num(%struct.sparsebit*, i32, i32) #1

declare dso_local i32 @sparsebit_next_set(%struct.sparsebit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
