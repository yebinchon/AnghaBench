; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { %struct.TYPE_4__*, i32, i64, i32, i32, i32, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.net_device*, %struct.neighbour*)* }

@destroys = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Destroying alive neighbour %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Impossible event\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"neigh %p is destroyed\0A\00", align 1
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @neigh_destroy(%struct.neighbour* %0) #0 {
  %2 = alloca %struct.neighbour*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %2, align 8
  %4 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %5 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %4, i32 0, i32 6
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %8 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load i32, i32* @destroys, align 4
  %11 = call i32 @NEIGH_CACHE_STAT_INC(%struct.TYPE_4__* %9, i32 %10)
  %12 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %13 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %18 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.neighbour* %17)
  %19 = call i32 (...) @dump_stack()
  br label %70

20:                                               ; preds = %1
  %21 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %22 = call i64 @neigh_del_timer(%struct.neighbour* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %28 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %27, i32 0, i32 3
  %29 = call i32 @write_lock_bh(i32* %28)
  %30 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %31 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %30, i32 0, i32 4
  %32 = call i32 @__skb_queue_purge(i32* %31)
  %33 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %34 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %33, i32 0, i32 3
  %35 = call i32 @write_unlock_bh(i32* %34)
  %36 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %37 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.net_device*, %struct.neighbour*)** %41, align 8
  %43 = icmp ne i32 (%struct.net_device*, %struct.neighbour*)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %26
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.net_device*, %struct.neighbour*)** %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %52 = call i32 %49(%struct.net_device* %50, %struct.neighbour* %51)
  br label %53

53:                                               ; preds = %44, %26
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @dev_put(%struct.net_device* %54)
  %56 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %57 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @neigh_parms_put(i32 %58)
  %60 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %61 = call i32 @neigh_dbg(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.neighbour* %60)
  %62 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %63 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @atomic_dec(i32* %65)
  %67 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %68 = load i32, i32* @rcu, align 4
  %69 = call i32 @kfree_rcu(%struct.neighbour* %67, i32 %68)
  br label %70

70:                                               ; preds = %53, %16
  ret void
}

declare dso_local i32 @NEIGH_CACHE_STAT_INC(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i64 @neigh_del_timer(%struct.neighbour*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @neigh_parms_put(i32) #1

declare dso_local i32 @neigh_dbg(i32, i8*, %struct.neighbour*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.neighbour*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
