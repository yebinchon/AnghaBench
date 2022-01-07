; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_next_set.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_next_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparsebit = type { %struct.node* }
%struct.node = type { i32, i32, i32, %struct.node*, %struct.node* }

@MASK_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sparsebit_next_set(%struct.sparsebit* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sparsebit*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.sparsebit* %0, %struct.sparsebit** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %134

17:                                               ; preds = %2
  store %struct.node* null, %struct.node** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %19 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %18, i32 0, i32 0
  %20 = load %struct.node*, %struct.node** %19, align 8
  store %struct.node* %20, %struct.node** %8, align 8
  br label %21

21:                                               ; preds = %55, %17
  %22 = load %struct.node*, %struct.node** %8, align 8
  %23 = icmp ne %struct.node* %22, null
  br i1 %23, label %24, label %56

24:                                               ; preds = %21
  %25 = load %struct.node*, %struct.node** %8, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MASK_BITS, align 4
  %29 = add nsw i32 %27, %28
  %30 = load %struct.node*, %struct.node** %8, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %6, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %24
  %39 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %39, %struct.node** %9, align 8
  %40 = load %struct.node*, %struct.node** %9, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %6, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %56

47:                                               ; preds = %38
  %48 = load %struct.node*, %struct.node** %8, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 4
  %50 = load %struct.node*, %struct.node** %49, align 8
  store %struct.node* %50, %struct.node** %8, align 8
  br label %55

51:                                               ; preds = %24
  %52 = load %struct.node*, %struct.node** %8, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 3
  %54 = load %struct.node*, %struct.node** %53, align 8
  store %struct.node* %54, %struct.node** %8, align 8
  br label %55

55:                                               ; preds = %51, %47
  br label %21

56:                                               ; preds = %46, %21
  %57 = load %struct.node*, %struct.node** %9, align 8
  %58 = icmp ne %struct.node* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i64 0, i64* %3, align 8
  br label %134

60:                                               ; preds = %56
  %61 = load %struct.node*, %struct.node** %9, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %60
  %70 = load %struct.node*, %struct.node** %9, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %6, align 8
  %75 = icmp sgt i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.node*, %struct.node** %9, align 8
  %79 = call i64 @node_first_set(%struct.node* %78, i64 0)
  store i64 %79, i64* %3, align 8
  br label %134

80:                                               ; preds = %60
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.node*, %struct.node** %9, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %81, %85
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* @MASK_BITS, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %80
  %92 = load %struct.node*, %struct.node** %9, align 8
  %93 = getelementptr inbounds %struct.node, %struct.node* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = trunc i64 %95 to i32
  %97 = shl i32 1, %96
  %98 = icmp sge i32 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load %struct.node*, %struct.node** %9, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i64 @node_first_set(%struct.node* %100, i64 %101)
  store i64 %102, i64* %3, align 8
  br label %134

103:                                              ; preds = %91, %80
  %104 = load %struct.node*, %struct.node** %9, align 8
  %105 = getelementptr inbounds %struct.node, %struct.node* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %103
  %109 = load %struct.node*, %struct.node** %9, align 8
  %110 = getelementptr inbounds %struct.node, %struct.node* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @MASK_BITS, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %11, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i64, i64* %11, align 8
  br label %122

120:                                              ; preds = %108
  %121 = load i64, i64* %6, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i64 [ %119, %118 ], [ %121, %120 ]
  store i64 %123, i64* %3, align 8
  br label %134

124:                                              ; preds = %103
  %125 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %126 = load %struct.node*, %struct.node** %9, align 8
  %127 = call %struct.node* @node_next(%struct.sparsebit* %125, %struct.node* %126)
  store %struct.node* %127, %struct.node** %9, align 8
  %128 = load %struct.node*, %struct.node** %9, align 8
  %129 = icmp ne %struct.node* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %124
  store i64 0, i64* %3, align 8
  br label %134

131:                                              ; preds = %124
  %132 = load %struct.node*, %struct.node** %9, align 8
  %133 = call i64 @node_first_set(%struct.node* %132, i64 0)
  store i64 %133, i64* %3, align 8
  br label %134

134:                                              ; preds = %131, %130, %122, %99, %69, %59, %16
  %135 = load i64, i64* %3, align 8
  ret i64 %135
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @node_first_set(%struct.node*, i64) #1

declare dso_local %struct.node* @node_next(%struct.sparsebit*, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
