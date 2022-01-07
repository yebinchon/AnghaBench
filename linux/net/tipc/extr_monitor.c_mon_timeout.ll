; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_mon_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_mon_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_monitor = type { i64, i32, i32, %struct.tipc_peer*, i32 }
%struct.tipc_peer = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@mon = common dso_local global %struct.tipc_monitor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mon_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tipc_monitor*, align 8
  %4 = alloca %struct.tipc_peer*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %7 = ptrtoint %struct.tipc_monitor* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.tipc_monitor* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.tipc_monitor* %10, %struct.tipc_monitor** %3, align 8
  %11 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %12 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dom_size(i32 %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %17 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %16, i32 0, i32 2
  %18 = call i32 @write_lock_bh(i32* %17)
  %19 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %20 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %19, i32 0, i32 3
  %21 = load %struct.tipc_peer*, %struct.tipc_peer** %20, align 8
  store %struct.tipc_peer* %21, %struct.tipc_peer** %4, align 8
  %22 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %23 = icmp ne %struct.tipc_peer* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %27 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %32 = call i32 @mon_update_local_domain(%struct.tipc_monitor* %31)
  %33 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %34 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %35 = call i32 @mon_assign_roles(%struct.tipc_monitor* %33, %struct.tipc_peer* %34)
  br label %36

36:                                               ; preds = %30, %24, %1
  %37 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %38 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %37, i32 0, i32 2
  %39 = call i32 @write_unlock_bh(i32* %38)
  %40 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %41 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %40, i32 0, i32 1
  %42 = load i64, i64* @jiffies, align 8
  %43 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %44 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = call i32 @mod_timer(i32* %41, i64 %46)
  ret void
}

declare dso_local %struct.tipc_monitor* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dom_size(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @mon_update_local_domain(%struct.tipc_monitor*) #1

declare dso_local i32 @mon_assign_roles(%struct.tipc_monitor*, %struct.tipc_peer*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
