; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_add_child.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, %struct.node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_child(%struct.node* %0, %struct.node* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node**, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  store %struct.node* %1, %struct.node** %4, align 8
  %6 = load %struct.node*, %struct.node** %4, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  store %struct.node* null, %struct.node** %7, align 8
  %8 = load %struct.node*, %struct.node** %3, align 8
  %9 = load %struct.node*, %struct.node** %4, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 2
  store %struct.node* %8, %struct.node** %10, align 8
  %11 = load %struct.node*, %struct.node** %3, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 1
  store %struct.node** %12, %struct.node*** %5, align 8
  br label %13

13:                                               ; preds = %17, %2
  %14 = load %struct.node**, %struct.node*** %5, align 8
  %15 = load %struct.node*, %struct.node** %14, align 8
  %16 = icmp ne %struct.node* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.node**, %struct.node*** %5, align 8
  %19 = load %struct.node*, %struct.node** %18, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  store %struct.node** %20, %struct.node*** %5, align 8
  br label %13

21:                                               ; preds = %13
  %22 = load %struct.node*, %struct.node** %4, align 8
  %23 = load %struct.node**, %struct.node*** %5, align 8
  store %struct.node* %22, %struct.node** %23, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
