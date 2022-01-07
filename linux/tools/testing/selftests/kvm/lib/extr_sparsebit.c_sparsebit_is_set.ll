; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_is_set.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_is_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparsebit = type { %struct.node* }
%struct.node = type { i32, i32, i32, %struct.node*, %struct.node* }

@MASK_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparsebit_is_set(%struct.sparsebit* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sparsebit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  store %struct.sparsebit* %0, %struct.sparsebit** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %8 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %7, i32 0, i32 0
  %9 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %9, %struct.node** %6, align 8
  br label %10

10:                                               ; preds = %48, %2
  %11 = load %struct.node*, %struct.node** %6, align 8
  %12 = icmp ne %struct.node* %11, null
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.node*, %struct.node** %6, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.node*, %struct.node** %6, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MASK_BITS, align 4
  %25 = add nsw i32 %23, %24
  %26 = load %struct.node*, %struct.node** %6, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = sub nsw i32 %29, 1
  %31 = icmp sle i32 %20, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %51

33:                                               ; preds = %19, %13
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.node*, %struct.node** %6, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.node*, %struct.node** %6, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 4
  %43 = load %struct.node*, %struct.node** %42, align 8
  br label %48

44:                                               ; preds = %34
  %45 = load %struct.node*, %struct.node** %6, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 3
  %47 = load %struct.node*, %struct.node** %46, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi %struct.node* [ %43, %40 ], [ %47, %44 ]
  store %struct.node* %49, %struct.node** %6, align 8
  br label %10

50:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %97

51:                                               ; preds = %32
  %52 = load %struct.node*, %struct.node** %6, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.node*, %struct.node** %6, align 8
  %59 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MASK_BITS, align 4
  %62 = add nsw i32 %60, %61
  %63 = icmp sge i32 %57, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %97

65:                                               ; preds = %56, %51
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.node*, %struct.node** %6, align 8
  %68 = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.node*, %struct.node** %6, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %72, %75
  %77 = load i32, i32* @MASK_BITS, align 4
  %78 = icmp slt i32 %76, %77
  br label %79

79:                                               ; preds = %71, %65
  %80 = phi i1 [ false, %65 ], [ %78, %71 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.node*, %struct.node** %6, align 8
  %84 = getelementptr inbounds %struct.node, %struct.node* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.node*, %struct.node** %6, align 8
  %88 = getelementptr inbounds %struct.node, %struct.node* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %86, %89
  %91 = shl i32 1, %90
  %92 = and i32 %85, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %79, %64, %50
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
