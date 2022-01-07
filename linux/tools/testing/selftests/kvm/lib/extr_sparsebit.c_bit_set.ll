; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_bit_set.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_bit_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparsebit = type { i32 }
%struct.node = type { i32, i32 }

@MASK_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sparsebit*, i32)* @bit_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bit_set(%struct.sparsebit* %0, i32 %1) #0 {
  %3 = alloca %struct.sparsebit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  store %struct.sparsebit* %0, %struct.sparsebit** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @sparsebit_is_set(%struct.sparsebit* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %67

11:                                               ; preds = %2
  %12 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MASK_BITS, align 4
  %15 = sub nsw i32 0, %14
  %16 = and i32 %13, %15
  %17 = call %struct.node* @node_split(%struct.sparsebit* %12, i32 %16)
  store %struct.node* %17, %struct.node** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.node*, %struct.node** %5, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.node*, %struct.node** %5, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MASK_BITS, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = icmp sle i32 %24, %30
  br label %32

32:                                               ; preds = %23, %11
  %33 = phi i1 [ false, %11 ], [ %31, %23 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.node*, %struct.node** %5, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.node*, %struct.node** %5, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = shl i32 1, %43
  %45 = and i32 %38, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.node*, %struct.node** %5, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = shl i32 1, %54
  %56 = load %struct.node*, %struct.node** %5, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %61 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %65 = load %struct.node*, %struct.node** %5, align 8
  %66 = call i32 @node_reduce(%struct.sparsebit* %64, %struct.node* %65)
  br label %67

67:                                               ; preds = %32, %10
  ret void
}

declare dso_local i64 @sparsebit_is_set(%struct.sparsebit*, i32) #1

declare dso_local %struct.node* @node_split(%struct.sparsebit*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @node_reduce(%struct.sparsebit*, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
