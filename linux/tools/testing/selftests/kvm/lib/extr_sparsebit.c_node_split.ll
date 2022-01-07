; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_node_split.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_node_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, i32, i32 }
%struct.sparsebit = type { i32 }

@MASK_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (%struct.sparsebit*, i32)* @node_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @node_split(%struct.sparsebit* %0, i32 %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.sparsebit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sparsebit* %0, %struct.sparsebit** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MASK_BITS, align 4
  %12 = srem i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.node* @node_find(%struct.sparsebit* %17, i32 %18)
  store %struct.node* %19, %struct.node** %6, align 8
  %20 = load %struct.node*, %struct.node** %6, align 8
  %21 = icmp ne %struct.node* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.node* @node_add(%struct.sparsebit* %23, i32 %24)
  store %struct.node* %25, %struct.node** %3, align 8
  br label %81

26:                                               ; preds = %2
  %27 = load %struct.node*, %struct.node** %6, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load %struct.node*, %struct.node** %6, align 8
  store %struct.node* %33, %struct.node** %3, align 8
  br label %81

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.node*, %struct.node** %6, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MASK_BITS, align 4
  %40 = add nsw i32 %38, %39
  %41 = sub nsw i32 %35, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.node*, %struct.node** %6, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.node*, %struct.node** %6, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sparsebit*, %struct.sparsebit** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call %struct.node* @node_add(%struct.sparsebit* %48, i32 %49)
  store %struct.node* %50, %struct.node** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load %struct.node*, %struct.node** %7, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.node*, %struct.node** %7, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MASK_BITS, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %34
  %62 = load %struct.node*, %struct.node** %7, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 2
  store i32 -1, i32* %63, align 4
  %64 = load i32, i32* @MASK_BITS, align 4
  %65 = load %struct.node*, %struct.node** %7, align 8
  %66 = getelementptr inbounds %struct.node, %struct.node* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %79

69:                                               ; preds = %34
  %70 = load %struct.node*, %struct.node** %7, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.node*, %struct.node** %7, align 8
  %76 = getelementptr inbounds %struct.node, %struct.node* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.node*, %struct.node** %7, align 8
  %78 = getelementptr inbounds %struct.node, %struct.node* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %69, %61
  %80 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %80, %struct.node** %3, align 8
  br label %81

81:                                               ; preds = %79, %32, %22
  %82 = load %struct.node*, %struct.node** %3, align 8
  ret %struct.node* %82
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.node* @node_find(%struct.sparsebit*, i32) #1

declare dso_local %struct.node* @node_add(%struct.sparsebit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
