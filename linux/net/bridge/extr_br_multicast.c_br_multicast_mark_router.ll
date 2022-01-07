; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_mark_router.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_mark_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i64, i32 }
%struct.net_bridge_port = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@MDB_RTR_TYPE_TEMP_QUERY = common dso_local global i64 0, align 8
@MDB_RTR_TYPE_DISABLED = common dso_local global i64 0, align 8
@MDB_RTR_TYPE_PERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.net_bridge_port*)* @br_multicast_mark_router to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_mark_router(%struct.net_bridge* %0, %struct.net_bridge_port* %1) #0 {
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca i64, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %3, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %4, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %8 = icmp ne %struct.net_bridge_port* %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %11 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MDB_RTR_TYPE_TEMP_QUERY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %17 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %16, i32 0, i32 2
  %18 = call i32 @timer_pending(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %22 = call i32 @br_mc_router_state_change(%struct.net_bridge* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %25 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %24, i32 0, i32 2
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %28 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %26, %29
  %31 = call i32 @mod_timer(i32* %25, i64 %30)
  br label %32

32:                                               ; preds = %23, %9
  br label %58

33:                                               ; preds = %2
  %34 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %35 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MDB_RTR_TYPE_DISABLED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %41 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MDB_RTR_TYPE_PERM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %33
  br label %58

46:                                               ; preds = %39
  %47 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %48 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %49 = call i32 @br_multicast_add_router(%struct.net_bridge* %47, %struct.net_bridge_port* %48)
  %50 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %51 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %50, i32 0, i32 1
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %54 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  %57 = call i32 @mod_timer(i32* %51, i64 %56)
  br label %58

58:                                               ; preds = %46, %45, %32
  ret void
}

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @br_mc_router_state_change(%struct.net_bridge*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @br_multicast_add_router(%struct.net_bridge*, %struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
