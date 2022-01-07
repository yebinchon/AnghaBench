; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_next_clear.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_sparsebit_next_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparsebit = type { i32 }
%struct.node = type { i64, i32, i64 }

@MASK_BITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sparsebit_next_clear(%struct.sparsebit* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sparsebit*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  store %struct.sparsebit* %0, %struct.sparsebit** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %95

15:                                               ; preds = %2
  %16 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.node* @node_find(%struct.sparsebit* %16, i64 %17)
  store %struct.node* %18, %struct.node** %8, align 8
  %19 = load %struct.node*, %struct.node** %8, align 8
  %20 = icmp ne %struct.node* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  store i64 %22, i64* %3, align 8
  br label %95

23:                                               ; preds = %15
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.node*, %struct.node** %8, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %49, %23
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @MASK_BITS, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.node*, %struct.node** %8, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 1, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %33
  %43 = load %struct.node*, %struct.node** %8, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %45, %46
  store i64 %47, i64* %3, align 8
  br label %95

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %29

52:                                               ; preds = %29
  %53 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %54 = load %struct.node*, %struct.node** %8, align 8
  %55 = call %struct.node* @node_next(%struct.sparsebit* %53, %struct.node* %54)
  store %struct.node* %55, %struct.node** %9, align 8
  %56 = load %struct.node*, %struct.node** %9, align 8
  %57 = icmp ne %struct.node* %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %52
  %59 = load %struct.node*, %struct.node** %8, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MASK_BITS, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.node*, %struct.node** %8, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  store i64 %67, i64* %3, align 8
  br label %95

68:                                               ; preds = %52
  %69 = load %struct.node*, %struct.node** %8, align 8
  %70 = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MASK_BITS, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.node*, %struct.node** %8, align 8
  %75 = getelementptr inbounds %struct.node, %struct.node* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.node*, %struct.node** %9, align 8
  %79 = getelementptr inbounds %struct.node, %struct.node* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %68
  %83 = load %struct.node*, %struct.node** %8, align 8
  %84 = getelementptr inbounds %struct.node, %struct.node* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MASK_BITS, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.node*, %struct.node** %8, align 8
  %89 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  store i64 %91, i64* %3, align 8
  br label %95

92:                                               ; preds = %68
  %93 = load %struct.node*, %struct.node** %9, align 8
  %94 = call i64 @node_first_clear(%struct.node* %93, i32 0)
  store i64 %94, i64* %3, align 8
  br label %95

95:                                               ; preds = %92, %82, %58, %42, %21, %14
  %96 = load i64, i64* %3, align 8
  ret i64 %96
}

declare dso_local %struct.node* @node_find(%struct.sparsebit*, i64) #1

declare dso_local %struct.node* @node_next(%struct.sparsebit*, %struct.node*) #1

declare dso_local i64 @node_first_clear(%struct.node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
