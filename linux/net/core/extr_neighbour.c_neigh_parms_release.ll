; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_parms_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_parms_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32, %struct.neigh_parms }
%struct.neigh_parms = type { i32, i32, i64, i32 }

@neigh_rcu_free_parms = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @neigh_parms_release(%struct.neigh_table* %0, %struct.neigh_parms* %1) #0 {
  %3 = alloca %struct.neigh_table*, align 8
  %4 = alloca %struct.neigh_parms*, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %3, align 8
  store %struct.neigh_parms* %1, %struct.neigh_parms** %4, align 8
  %5 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %6 = icmp ne %struct.neigh_parms* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %9 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %10 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %9, i32 0, i32 1
  %11 = icmp eq %struct.neigh_parms* %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %2
  br label %39

13:                                               ; preds = %7
  %14 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %15 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %14, i32 0, i32 0
  %16 = call i32 @write_lock_bh(i32* %15)
  %17 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %18 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %17, i32 0, i32 3
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %21 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %23 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %22, i32 0, i32 0
  %24 = call i32 @write_unlock_bh(i32* %23)
  %25 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %26 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %31 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dev_put(i64 %32)
  br label %34

34:                                               ; preds = %29, %13
  %35 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %36 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %35, i32 0, i32 1
  %37 = load i32, i32* @neigh_rcu_free_parms, align 4
  %38 = call i32 @call_rcu(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %12
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @dev_put(i64) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
