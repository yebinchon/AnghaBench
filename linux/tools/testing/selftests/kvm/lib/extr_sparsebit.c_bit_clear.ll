; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_bit_clear.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_bit_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparsebit = type { i64 }
%struct.node = type { i32, i32 }

@MASK_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sparsebit*, i32)* @bit_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bit_clear(%struct.sparsebit* %0, i32 %1) #0 {
  %3 = alloca %struct.sparsebit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  store %struct.sparsebit* %0, %struct.sparsebit** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @sparsebit_is_set(%struct.sparsebit* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %93

11:                                               ; preds = %2
  %12 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.node* @node_find(%struct.sparsebit* %12, i32 %13)
  store %struct.node* %14, %struct.node** %5, align 8
  %15 = load %struct.node*, %struct.node** %5, align 8
  %16 = icmp ne %struct.node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %93

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.node*, %struct.node** %5, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MASK_BITS, align 4
  %24 = add nsw i32 %22, %23
  %25 = icmp sge i32 %19, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MASK_BITS, align 4
  %30 = sub nsw i32 0, %29
  %31 = and i32 %28, %30
  %32 = call %struct.node* @node_split(%struct.sparsebit* %27, i32 %31)
  store %struct.node* %32, %struct.node** %5, align 8
  br label %33

33:                                               ; preds = %26, %18
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.node*, %struct.node** %5, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.node*, %struct.node** %5, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MASK_BITS, align 4
  %45 = add nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  %47 = icmp sle i32 %40, %46
  br label %48

48:                                               ; preds = %39, %33
  %49 = phi i1 [ false, %33 ], [ %47, %39 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.node*, %struct.node** %5, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.node*, %struct.node** %5, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %55, %58
  %60 = shl i32 1, %59
  %61 = and i32 %54, %60
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.node*, %struct.node** %5, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  %68 = shl i32 1, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.node*, %struct.node** %5, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %75 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %48
  %79 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %80 = call i64 @sparsebit_all_set(%struct.sparsebit* %79)
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %78, %48
  %83 = phi i1 [ true, %48 ], [ %81, %78 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %87 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %91 = load %struct.node*, %struct.node** %5, align 8
  %92 = call i32 @node_reduce(%struct.sparsebit* %90, %struct.node* %91)
  br label %93

93:                                               ; preds = %82, %17, %10
  ret void
}

declare dso_local i32 @sparsebit_is_set(%struct.sparsebit*, i32) #1

declare dso_local %struct.node* @node_find(%struct.sparsebit*, i32) #1

declare dso_local %struct.node* @node_split(%struct.sparsebit*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sparsebit_all_set(%struct.sparsebit*) #1

declare dso_local i32 @node_reduce(%struct.sparsebit*, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
