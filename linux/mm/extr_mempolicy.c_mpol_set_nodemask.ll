; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_set_nodemask.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_set_nodemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.mempolicy*, i32*)* }
%struct.mempolicy = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nodemask_scratch = type { i32, i32 }

@cpuset_current_mems_allowed = common dso_local global i32 0, align 4
@node_states = common dso_local global i32* null, align 8
@N_MEMORY = common dso_local global i64 0, align 8
@MPOL_PREFERRED = common dso_local global i64 0, align 8
@MPOL_F_RELATIVE_NODES = common dso_local global i32 0, align 4
@mpol_ops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mempolicy*, i32*, %struct.nodemask_scratch*)* @mpol_set_nodemask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpol_set_nodemask(%struct.mempolicy* %0, i32* %1, %struct.nodemask_scratch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mempolicy*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nodemask_scratch*, align 8
  %8 = alloca i32, align 4
  store %struct.mempolicy* %0, %struct.mempolicy** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nodemask_scratch* %2, %struct.nodemask_scratch** %7, align 8
  %9 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %10 = icmp eq %struct.mempolicy* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

12:                                               ; preds = %3
  %13 = load %struct.nodemask_scratch*, %struct.nodemask_scratch** %7, align 8
  %14 = getelementptr inbounds %struct.nodemask_scratch, %struct.nodemask_scratch* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @cpuset_current_mems_allowed, align 4
  %17 = load i32*, i32** @node_states, align 8
  %18 = load i64, i64* @N_MEMORY, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nodes_and(i32 %15, i32 %16, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @VM_BUG_ON(i32 %25)
  %27 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %28 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MPOL_PREFERRED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %12
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nodes_empty(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32* null, i32** %6, align 8
  br label %78

38:                                               ; preds = %32, %12
  %39 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %40 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MPOL_F_RELATIVE_NODES, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.nodemask_scratch*, %struct.nodemask_scratch** %7, align 8
  %47 = getelementptr inbounds %struct.nodemask_scratch, %struct.nodemask_scratch* %46, i32 0, i32 0
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.nodemask_scratch*, %struct.nodemask_scratch** %7, align 8
  %50 = getelementptr inbounds %struct.nodemask_scratch, %struct.nodemask_scratch* %49, i32 0, i32 1
  %51 = call i32 @mpol_relative_nodemask(i32* %47, i32* %48, i32* %50)
  br label %62

52:                                               ; preds = %38
  %53 = load %struct.nodemask_scratch*, %struct.nodemask_scratch** %7, align 8
  %54 = getelementptr inbounds %struct.nodemask_scratch, %struct.nodemask_scratch* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nodemask_scratch*, %struct.nodemask_scratch** %7, align 8
  %59 = getelementptr inbounds %struct.nodemask_scratch, %struct.nodemask_scratch* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nodes_and(i32 %55, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %52, %45
  %63 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %64 = call i64 @mpol_store_user_nodemask(%struct.mempolicy* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %70 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  br label %77

72:                                               ; preds = %62
  %73 = load i32, i32* @cpuset_current_mems_allowed, align 4
  %74 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %75 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %66
  br label %78

78:                                               ; preds = %77, %37
  %79 = load i32*, i32** %6, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mpol_ops, align 8
  %83 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %84 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (%struct.mempolicy*, i32*)*, i32 (%struct.mempolicy*, i32*)** %87, align 8
  %89 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %90 = load %struct.nodemask_scratch*, %struct.nodemask_scratch** %7, align 8
  %91 = getelementptr inbounds %struct.nodemask_scratch, %struct.nodemask_scratch* %90, i32 0, i32 0
  %92 = call i32 %88(%struct.mempolicy* %89, i32* %91)
  store i32 %92, i32* %8, align 4
  br label %103

93:                                               ; preds = %78
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mpol_ops, align 8
  %95 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %96 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32 (%struct.mempolicy*, i32*)*, i32 (%struct.mempolicy*, i32*)** %99, align 8
  %101 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %102 = call i32 %100(%struct.mempolicy* %101, i32* null)
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %93, %81
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %11
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @nodes_and(i32, i32, i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @nodes_empty(i32) #1

declare dso_local i32 @mpol_relative_nodemask(i32*, i32*, i32*) #1

declare dso_local i64 @mpol_store_user_nodemask(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
