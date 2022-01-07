; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_table_clear.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_table_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.neigh_table = type { i32*, i32, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@neigh_tables = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [19 x i8] c"neighbour leakage\0A\00", align 1
@neigh_hash_free_rcu = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neigh_table_clear(i32 %0, %struct.neigh_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.neigh_table*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.neigh_table* %1, %struct.neigh_table** %4, align 8
  %5 = load i32**, i32*** @neigh_tables, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32*, i32** %5, i64 %7
  store i32* null, i32** %8, align 8
  %9 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %10 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %9, i32 0, i32 7
  %11 = call i32 @cancel_delayed_work_sync(i32* %10)
  %12 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %13 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %12, i32 0, i32 6
  %14 = call i32 @del_timer_sync(i32* %13)
  %15 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %16 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %15, i32 0, i32 5
  %17 = call i32 @pneigh_queue_purge(i32* %16)
  %18 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %19 = call i32 @neigh_ifdown(%struct.neigh_table* %18, i32* null)
  %20 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %21 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %20, i32 0, i32 4
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %28 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = call %struct.TYPE_3__* @rcu_dereference_protected(i32* %29, i32 1)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* @neigh_hash_free_rcu, align 4
  %33 = call i32 @call_rcu(i32* %31, i32 %32)
  %34 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %35 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %37 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kfree(i32* %38)
  %40 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %41 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %43 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @init_net, i32 0, i32 0), align 4
  %46 = call i32 @remove_proc_entry(i32 %44, i32 %45)
  %47 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %48 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @free_percpu(i32* %49)
  %51 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %52 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  ret i32 0
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pneigh_queue_purge(i32*) #1

declare dso_local i32 @neigh_ifdown(%struct.neigh_table*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @rcu_dereference_protected(i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @remove_proc_entry(i32, i32) #1

declare dso_local i32 @free_percpu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
