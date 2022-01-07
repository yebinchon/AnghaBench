; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i64, i64, i32, i32, i32, %struct.neigh_table*, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.neigh_table = type { i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.net_device = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: neighbor table overflow!\0A\00", align 1
@table_fulls = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NUD_NONE = common dso_local global i32 0, align 4
@neigh_blackhole = common dso_local global i32 0, align 4
@neigh_timer_handler = common dso_local global i32 0, align 4
@allocs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.neighbour* (%struct.neigh_table*, %struct.net_device*, i32)* @neigh_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.neighbour* @neigh_alloc(%struct.neigh_table* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.neigh_table*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.neighbour*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.neigh_table* %0, %struct.neigh_table** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.neighbour* null, %struct.neighbour** %7, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %61

14:                                               ; preds = %3
  %15 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %16 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %15, i32 0, i32 2
  %17 = call i32 @atomic_inc_return(i32* %16)
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %21 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %41, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %27 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %24
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %33 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @HZ, align 4
  %36 = mul nsw i32 5, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i64 @time_after(i64 %31, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %30, %14
  %42 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %43 = call i32 @neigh_forced_gc(%struct.neigh_table* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %48 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %53 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %57 = load i32, i32* @table_fulls, align 4
  %58 = call i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table* %56, i32 %57)
  br label %127

59:                                               ; preds = %45, %41
  br label %60

60:                                               ; preds = %59, %30, %24
  br label %61

61:                                               ; preds = %60, %13
  %62 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %63 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call %struct.neighbour* @kzalloc(i64 %68, i32 %69)
  store %struct.neighbour* %70, %struct.neighbour** %7, align 8
  %71 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %72 = icmp ne %struct.neighbour* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %61
  br label %127

74:                                               ; preds = %61
  %75 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %76 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %75, i32 0, i32 13
  %77 = call i32 @__skb_queue_head_init(i32* %76)
  %78 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %79 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %78, i32 0, i32 12
  %80 = call i32 @rwlock_init(i32* %79)
  %81 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %82 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %81, i32 0, i32 11
  %83 = call i32 @seqlock_init(i32* %82)
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %86 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %88 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %87, i32 0, i32 0
  store i64 %84, i64* %88, align 8
  %89 = load i32, i32* @NUD_NONE, align 4
  %90 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %91 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @neigh_blackhole, align 4
  %93 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %94 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 4
  %95 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %96 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @seqlock_init(i32* %97)
  %99 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %100 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %99, i32 0, i32 4
  %101 = call i32 @neigh_parms_clone(i32* %100)
  %102 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %103 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 4
  %104 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %105 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %104, i32 0, i32 6
  %106 = load i32, i32* @neigh_timer_handler, align 4
  %107 = call i32 @timer_setup(i32* %105, i32 %106, i32 0)
  %108 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %109 = load i32, i32* @allocs, align 4
  %110 = call i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table* %108, i32 %109)
  %111 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %112 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %113 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %112, i32 0, i32 5
  store %struct.neigh_table* %111, %struct.neigh_table** %113, align 8
  %114 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %115 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %114, i32 0, i32 4
  %116 = call i32 @refcount_set(i32* %115, i32 1)
  %117 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %118 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  %119 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %120 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %119, i32 0, i32 3
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  %122 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %123 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %122, i32 0, i32 3
  %124 = call i32 @atomic_inc(i32* %123)
  br label %125

125:                                              ; preds = %134, %74
  %126 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  ret %struct.neighbour* %126

127:                                              ; preds = %73, %51
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %132 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %131, i32 0, i32 2
  %133 = call i32 @atomic_dec(i32* %132)
  br label %134

134:                                              ; preds = %130, %127
  br label %125
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @neigh_forced_gc(%struct.neigh_table*) #1

declare dso_local i32 @net_info_ratelimited(i8*, i32) #1

declare dso_local i32 @NEIGH_CACHE_STAT_INC(%struct.neigh_table*, i32) #1

declare dso_local %struct.neighbour* @kzalloc(i64, i32) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @seqlock_init(i32*) #1

declare dso_local i32 @neigh_parms_clone(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
