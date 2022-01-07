; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_hash_grow.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_hash_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_hash_table = type { i32, i32, i32*, i32, i32, i32, i32 }
%struct.neigh_table = type { i32 (i32, i32, i32)*, i32, i32 }
%struct.neighbour = type { i32, i32, i32*, i32, i32, i32, i32 }

@hash_grows = common dso_local global i32 0, align 4
@neigh_hash_free_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.neigh_hash_table* (%struct.neigh_table*, i64)* @neigh_hash_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.neigh_hash_table* @neigh_hash_grow(%struct.neigh_table* %0, i64 %1) #0 {
  %3 = alloca %struct.neigh_hash_table*, align 8
  %4 = alloca %struct.neigh_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.neigh_hash_table*, align 8
  %9 = alloca %struct.neigh_hash_table*, align 8
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca %struct.neighbour*, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %13 = load i32, i32* @hash_grows, align 4
  %14 = call i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table* %12, i32 %13)
  %15 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %16 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %19 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %18, i32 0, i32 2
  %20 = call i32 @lockdep_is_held(i32* %19)
  %21 = call %struct.neighbour* @rcu_dereference_protected(i32 %17, i32 %20)
  %22 = bitcast %struct.neighbour* %21 to %struct.neigh_hash_table*
  store %struct.neigh_hash_table* %22, %struct.neigh_hash_table** %9, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.neighbour* @neigh_hash_alloc(i64 %23)
  %25 = bitcast %struct.neighbour* %24 to %struct.neigh_hash_table*
  store %struct.neigh_hash_table* %25, %struct.neigh_hash_table** %8, align 8
  %26 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %8, align 8
  %27 = icmp ne %struct.neigh_hash_table* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %9, align 8
  store %struct.neigh_hash_table* %29, %struct.neigh_hash_table** %3, align 8
  br label %122

30:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %107, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %9, align 8
  %34 = getelementptr inbounds %struct.neigh_hash_table, %struct.neigh_hash_table* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  %37 = icmp ult i32 %32, %36
  br i1 %37, label %38, label %110

38:                                               ; preds = %31
  %39 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %9, align 8
  %40 = getelementptr inbounds %struct.neigh_hash_table, %struct.neigh_hash_table* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %47 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %46, i32 0, i32 2
  %48 = call i32 @lockdep_is_held(i32* %47)
  %49 = call %struct.neighbour* @rcu_dereference_protected(i32 %45, i32 %48)
  store %struct.neighbour* %49, %struct.neighbour** %10, align 8
  br label %50

50:                                               ; preds = %104, %38
  %51 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %52 = icmp ne %struct.neighbour* %51, null
  br i1 %52, label %53, label %106

53:                                               ; preds = %50
  %54 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %55 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %54, i32 0, i32 0
  %56 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %55, align 8
  %57 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %58 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %61 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %8, align 8
  %64 = getelementptr inbounds %struct.neigh_hash_table, %struct.neigh_hash_table* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 %56(i32 %59, i32 %62, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %8, align 8
  %68 = getelementptr inbounds %struct.neigh_hash_table, %struct.neigh_hash_table* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 32, %69
  %71 = load i32, i32* %7, align 4
  %72 = lshr i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %74 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %77 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %76, i32 0, i32 2
  %78 = call i32 @lockdep_is_held(i32* %77)
  %79 = call %struct.neighbour* @rcu_dereference_protected(i32 %75, i32 %78)
  store %struct.neighbour* %79, %struct.neighbour** %11, align 8
  %80 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %81 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %8, align 8
  %84 = getelementptr inbounds %struct.neigh_hash_table, %struct.neigh_hash_table* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %91 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %90, i32 0, i32 2
  %92 = call i32 @lockdep_is_held(i32* %91)
  %93 = call %struct.neighbour* @rcu_dereference_protected(i32 %89, i32 %92)
  %94 = call i32 @rcu_assign_pointer(i32 %82, %struct.neighbour* %93)
  %95 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %8, align 8
  %96 = getelementptr inbounds %struct.neigh_hash_table, %struct.neigh_hash_table* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %103 = call i32 @rcu_assign_pointer(i32 %101, %struct.neighbour* %102)
  br label %104

104:                                              ; preds = %53
  %105 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  store %struct.neighbour* %105, %struct.neighbour** %10, align 8
  br label %50

106:                                              ; preds = %50
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %31

110:                                              ; preds = %31
  %111 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %112 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %8, align 8
  %115 = bitcast %struct.neigh_hash_table* %114 to %struct.neighbour*
  %116 = call i32 @rcu_assign_pointer(i32 %113, %struct.neighbour* %115)
  %117 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %9, align 8
  %118 = getelementptr inbounds %struct.neigh_hash_table, %struct.neigh_hash_table* %117, i32 0, i32 1
  %119 = load i32, i32* @neigh_hash_free_rcu, align 4
  %120 = call i32 @call_rcu(i32* %118, i32 %119)
  %121 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %8, align 8
  store %struct.neigh_hash_table* %121, %struct.neigh_hash_table** %3, align 8
  br label %122

122:                                              ; preds = %110, %28
  %123 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %3, align 8
  ret %struct.neigh_hash_table* %123
}

declare dso_local i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table*, i32) #1

declare dso_local %struct.neighbour* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.neighbour* @neigh_hash_alloc(i64) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.neighbour*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
