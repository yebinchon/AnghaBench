; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_soft_limit_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_soft_limit_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mem_cgroup_per_node = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.mem_cgroup_tree_per_node = type { i32, i32 }

@MEM_CGROUP_MAX_SOFT_LIMIT_RECLAIM_LOOPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mem_cgroup_soft_limit_reclaim(%struct.TYPE_6__* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mem_cgroup_per_node*, align 8
  %12 = alloca %struct.mem_cgroup_per_node*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mem_cgroup_tree_per_node*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.mem_cgroup_per_node* null, %struct.mem_cgroup_per_node** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %117

21:                                               ; preds = %4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.mem_cgroup_tree_per_node* @soft_limit_tree_node(i32 %24)
  store %struct.mem_cgroup_tree_per_node* %25, %struct.mem_cgroup_tree_per_node** %15, align 8
  %26 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %15, align 8
  %27 = icmp ne %struct.mem_cgroup_tree_per_node* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %15, align 8
  %30 = getelementptr inbounds %struct.mem_cgroup_tree_per_node, %struct.mem_cgroup_tree_per_node* %29, i32 0, i32 1
  %31 = call i64 @RB_EMPTY_ROOT(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %21
  store i64 0, i64* %5, align 8
  br label %117

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %102, %34
  %36 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %12, align 8
  %37 = icmp ne %struct.mem_cgroup_per_node* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %12, align 8
  store %struct.mem_cgroup_per_node* %39, %struct.mem_cgroup_per_node** %11, align 8
  br label %43

40:                                               ; preds = %35
  %41 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %15, align 8
  %42 = call %struct.mem_cgroup_per_node* @mem_cgroup_largest_soft_limit_node(%struct.mem_cgroup_tree_per_node* %41)
  store %struct.mem_cgroup_per_node* %42, %struct.mem_cgroup_per_node** %11, align 8
  br label %43

43:                                               ; preds = %40, %38
  %44 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %11, align 8
  %45 = icmp ne %struct.mem_cgroup_per_node* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %106

47:                                               ; preds = %43
  store i64 0, i64* %17, align 8
  %48 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %11, align 8
  %49 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @mem_cgroup_soft_reclaim(%struct.TYPE_7__* %50, %struct.TYPE_6__* %51, i32 %52, i64* %17)
  store i64 %53, i64* %13, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %17, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %57
  store i64 %60, i64* %58, align 8
  %61 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %15, align 8
  %62 = getelementptr inbounds %struct.mem_cgroup_tree_per_node, %struct.mem_cgroup_tree_per_node* %61, i32 0, i32 0
  %63 = call i32 @spin_lock_irq(i32* %62)
  %64 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %11, align 8
  %65 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %15, align 8
  %66 = call i32 @__mem_cgroup_remove_exceeded(%struct.mem_cgroup_per_node* %64, %struct.mem_cgroup_tree_per_node* %65)
  store %struct.mem_cgroup_per_node* null, %struct.mem_cgroup_per_node** %12, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %47
  %70 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %15, align 8
  %71 = call %struct.mem_cgroup_per_node* @__mem_cgroup_largest_soft_limit_node(%struct.mem_cgroup_tree_per_node* %70)
  store %struct.mem_cgroup_per_node* %71, %struct.mem_cgroup_per_node** %12, align 8
  br label %72

72:                                               ; preds = %69, %47
  %73 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %11, align 8
  %74 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = call i64 @soft_limit_excess(%struct.TYPE_7__* %75)
  store i64 %76, i64* %16, align 8
  %77 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %11, align 8
  %78 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %15, align 8
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @__mem_cgroup_insert_exceeded(%struct.mem_cgroup_per_node* %77, %struct.mem_cgroup_tree_per_node* %78, i64 %79)
  %81 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %15, align 8
  %82 = getelementptr inbounds %struct.mem_cgroup_tree_per_node, %struct.mem_cgroup_tree_per_node* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_irq(i32* %82)
  %84 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %11, align 8
  %85 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = call i32 @css_put(i32* %87)
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %72
  %94 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %12, align 8
  %95 = icmp eq %struct.mem_cgroup_per_node* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @MEM_CGROUP_MAX_SOFT_LIMIT_RECLAIM_LOOPS, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %93
  br label %106

101:                                              ; preds = %96, %72
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %10, align 8
  %104 = icmp ne i64 %103, 0
  %105 = xor i1 %104, true
  br i1 %105, label %35, label %106

106:                                              ; preds = %102, %100, %46
  %107 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %12, align 8
  %108 = icmp ne %struct.mem_cgroup_per_node* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %12, align 8
  %111 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = call i32 @css_put(i32* %113)
  br label %115

115:                                              ; preds = %109, %106
  %116 = load i64, i64* %10, align 8
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %115, %33, %20
  %118 = load i64, i64* %5, align 8
  ret i64 %118
}

declare dso_local %struct.mem_cgroup_tree_per_node* @soft_limit_tree_node(i32) #1

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local %struct.mem_cgroup_per_node* @mem_cgroup_largest_soft_limit_node(%struct.mem_cgroup_tree_per_node*) #1

declare dso_local i64 @mem_cgroup_soft_reclaim(%struct.TYPE_7__*, %struct.TYPE_6__*, i32, i64*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__mem_cgroup_remove_exceeded(%struct.mem_cgroup_per_node*, %struct.mem_cgroup_tree_per_node*) #1

declare dso_local %struct.mem_cgroup_per_node* @__mem_cgroup_largest_soft_limit_node(%struct.mem_cgroup_tree_per_node*) #1

declare dso_local i64 @soft_limit_excess(%struct.TYPE_7__*) #1

declare dso_local i32 @__mem_cgroup_insert_exceeded(%struct.mem_cgroup_per_node*, %struct.mem_cgroup_tree_per_node*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @css_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
