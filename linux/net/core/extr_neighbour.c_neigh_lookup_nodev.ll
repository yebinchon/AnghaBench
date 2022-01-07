; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_lookup_nodev.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_lookup_nodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i32, i32, i32 }
%struct.neigh_table = type { i32, i32 (i8*, i32*, i32)*, i32 }
%struct.net = type { i32 }
%struct.neigh_hash_table = type { i32, i32*, i32 }

@lookups = common dso_local global i32 0, align 4
@hits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.neighbour* @neigh_lookup_nodev(%struct.neigh_table* %0, %struct.net* %1, i8* %2) #0 {
  %4 = alloca %struct.neigh_table*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.neighbour*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.neigh_hash_table*, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %12 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %15 = load i32, i32* @lookups, align 4
  %16 = call i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table* %14, i32 %15)
  %17 = call i32 (...) @rcu_read_lock_bh()
  %18 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %19 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @rcu_dereference_bh(i32 %20)
  %22 = bitcast i8* %21 to %struct.neigh_hash_table*
  store %struct.neigh_hash_table* %22, %struct.neigh_hash_table** %10, align 8
  %23 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %24 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %23, i32 0, i32 1
  %25 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %10, align 8
  %28 = getelementptr inbounds %struct.neigh_hash_table, %struct.neigh_hash_table* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %25(i8* %26, i32* null, i32 %29)
  %31 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %10, align 8
  %32 = getelementptr inbounds %struct.neigh_hash_table, %struct.neigh_hash_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 32, %33
  %35 = ashr i32 %30, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %9, align 8
  %37 = load %struct.neigh_hash_table*, %struct.neigh_hash_table** %10, align 8
  %38 = getelementptr inbounds %struct.neigh_hash_table, %struct.neigh_hash_table* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @rcu_dereference_bh(i32 %42)
  %44 = bitcast i8* %43 to %struct.neighbour*
  store %struct.neighbour* %44, %struct.neighbour** %7, align 8
  br label %45

45:                                               ; preds = %75, %3
  %46 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %47 = icmp ne %struct.neighbour* %46, null
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  %49 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %50 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @memcmp(i32 %51, i8* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %48
  %57 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %58 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_net(i32 %59)
  %61 = load %struct.net*, %struct.net** %5, align 8
  %62 = call i64 @net_eq(i32 %60, %struct.net* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %66 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %65, i32 0, i32 0
  %67 = call i32 @refcount_inc_not_zero(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store %struct.neighbour* null, %struct.neighbour** %7, align 8
  br label %70

70:                                               ; preds = %69, %64
  %71 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %72 = load i32, i32* @hits, align 4
  %73 = call i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table* %71, i32 %72)
  br label %81

74:                                               ; preds = %56, %48
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %77 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @rcu_dereference_bh(i32 %78)
  %80 = bitcast i8* %79 to %struct.neighbour*
  store %struct.neighbour* %80, %struct.neighbour** %7, align 8
  br label %45

81:                                               ; preds = %70, %45
  %82 = call i32 (...) @rcu_read_unlock_bh()
  %83 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  ret %struct.neighbour* %83
}

declare dso_local i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table*, i32) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local i8* @rcu_dereference_bh(i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
