; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_node_find.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_node_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, i32, %struct.node*, %struct.node* }
%struct.sparsebit = type { %struct.node* }

@MASK_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (%struct.sparsebit*, i32)* @node_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @node_find(%struct.sparsebit* %0, i32 %1) #0 {
  %3 = alloca %struct.sparsebit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  store %struct.sparsebit* %0, %struct.sparsebit** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sparsebit*, %struct.sparsebit** %3, align 8
  %7 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %6, i32 0, i32 0
  %8 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %8, %struct.node** %5, align 8
  br label %9

9:                                                ; preds = %47, %2
  %10 = load %struct.node*, %struct.node** %5, align 8
  %11 = icmp ne %struct.node* %10, null
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.node*, %struct.node** %5, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.node*, %struct.node** %5, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MASK_BITS, align 4
  %24 = add nsw i32 %22, %23
  %25 = load %struct.node*, %struct.node** %5, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = sub nsw i32 %28, 1
  %30 = icmp sle i32 %19, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %49

32:                                               ; preds = %18, %12
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.node*, %struct.node** %5, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.node*, %struct.node** %5, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 3
  %42 = load %struct.node*, %struct.node** %41, align 8
  br label %47

43:                                               ; preds = %33
  %44 = load %struct.node*, %struct.node** %5, align 8
  %45 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 2
  %46 = load %struct.node*, %struct.node** %45, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi %struct.node* [ %42, %39 ], [ %46, %43 ]
  store %struct.node* %48, %struct.node** %5, align 8
  br label %9

49:                                               ; preds = %31, %9
  %50 = load %struct.node*, %struct.node** %5, align 8
  ret %struct.node* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
