; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_node_first.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_sparsebit.c_node_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node* }
%struct.sparsebit = type { %struct.node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (%struct.sparsebit*)* @node_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @node_first(%struct.sparsebit* %0) #0 {
  %2 = alloca %struct.sparsebit*, align 8
  %3 = alloca %struct.node*, align 8
  store %struct.sparsebit* %0, %struct.sparsebit** %2, align 8
  %4 = load %struct.sparsebit*, %struct.sparsebit** %2, align 8
  %5 = getelementptr inbounds %struct.sparsebit, %struct.sparsebit* %4, i32 0, i32 0
  %6 = load %struct.node*, %struct.node** %5, align 8
  store %struct.node* %6, %struct.node** %3, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.node*, %struct.node** %3, align 8
  %9 = icmp ne %struct.node* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.node*, %struct.node** %3, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  %13 = load %struct.node*, %struct.node** %12, align 8
  %14 = icmp ne %struct.node* %13, null
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.node*, %struct.node** %3, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  %21 = load %struct.node*, %struct.node** %20, align 8
  store %struct.node* %21, %struct.node** %3, align 8
  br label %7

22:                                               ; preds = %15
  %23 = load %struct.node*, %struct.node** %3, align 8
  ret %struct.node* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
