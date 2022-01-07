; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c___neigh_ifdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c___neigh_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32, i32, i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neigh_table*, %struct.net_device*, i32)* @__neigh_ifdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__neigh_ifdown(%struct.neigh_table* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.neigh_table*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.neigh_table* %0, %struct.neigh_table** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %8 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %7, i32 0, i32 2
  %9 = call i32 @write_lock_bh(i32* %8)
  %10 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @neigh_flush_dev(%struct.neigh_table* %10, %struct.net_device* %11, i32 %12)
  %14 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @pneigh_ifdown_and_unlock(%struct.neigh_table* %14, %struct.net_device* %15)
  %17 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %18 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %17, i32 0, i32 1
  %19 = call i32 @del_timer_sync(i32* %18)
  %20 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %21 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %20, i32 0, i32 0
  %22 = call i32 @pneigh_queue_purge(i32* %21)
  ret i32 0
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @neigh_flush_dev(%struct.neigh_table*, %struct.net_device*, i32) #1

declare dso_local i32 @pneigh_ifdown_and_unlock(%struct.neigh_table*, %struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pneigh_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
