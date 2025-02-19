; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_workingset.c_workingset_update_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_workingset.c_workingset_update_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_node = type { i64, i64, i32 }

@shadow_nodes = common dso_local global i32 0, align 4
@WORKINGSET_NODES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workingset_update_node(%struct.xa_node* %0) #0 {
  %2 = alloca %struct.xa_node*, align 8
  store %struct.xa_node* %0, %struct.xa_node** %2, align 8
  %3 = call i32 (...) @irqs_disabled()
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @VM_WARN_ON_ONCE(i32 %6)
  %8 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %9 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %14 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %17 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %22 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %21, i32 0, i32 2
  %23 = call i64 @list_empty(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %27 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %26, i32 0, i32 2
  %28 = call i32 @list_lru_add(i32* @shadow_nodes, i32* %27)
  %29 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %30 = load i32, i32* @WORKINGSET_NODES, align 4
  %31 = call i32 @__inc_lruvec_slab_state(%struct.xa_node* %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %20
  br label %46

33:                                               ; preds = %12, %1
  %34 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %35 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %34, i32 0, i32 2
  %36 = call i64 @list_empty(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %40 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %39, i32 0, i32 2
  %41 = call i32 @list_lru_del(i32* @shadow_nodes, i32* %40)
  %42 = load %struct.xa_node*, %struct.xa_node** %2, align 8
  %43 = load i32, i32* @WORKINGSET_NODES, align 4
  %44 = call i32 @__dec_lruvec_slab_state(%struct.xa_node* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %33
  br label %46

46:                                               ; preds = %45, %32
  ret void
}

declare dso_local i32 @VM_WARN_ON_ONCE(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_lru_add(i32*, i32*) #1

declare dso_local i32 @__inc_lruvec_slab_state(%struct.xa_node*, i32) #1

declare dso_local i32 @list_lru_del(i32*, i32*) #1

declare dso_local i32 @__dec_lruvec_slab_state(%struct.xa_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
