; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_make_forwarding.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_make_forwarding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i32, %struct.net_bridge* }
%struct.net_bridge = type { i64, i64 }

@BR_STATE_BLOCKING = common dso_local global i64 0, align 8
@BR_NO_STP = common dso_local global i64 0, align 8
@BR_STATE_FORWARDING = common dso_local global i32 0, align 4
@BR_KERNEL_STP = common dso_local global i64 0, align 8
@BR_STATE_LISTENING = common dso_local global i32 0, align 4
@BR_STATE_LEARNING = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*)* @br_make_forwarding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_make_forwarding(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  %3 = alloca %struct.net_bridge*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %4 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %5 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %4, i32 0, i32 2
  %6 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  store %struct.net_bridge* %6, %struct.net_bridge** %3, align 8
  %7 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %8 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BR_STATE_BLOCKING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %15 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BR_NO_STP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %21 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19, %13
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %26 = load i32, i32* @BR_STATE_FORWARDING, align 4
  %27 = call i32 @br_set_state(%struct.net_bridge_port* %25, i32 %26)
  %28 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %29 = call i32 @br_topology_change_detection(%struct.net_bridge* %28)
  %30 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %31 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %30, i32 0, i32 1
  %32 = call i32 @del_timer(i32* %31)
  br label %48

33:                                               ; preds = %19
  %34 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %35 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BR_KERNEL_STP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %41 = load i32, i32* @BR_STATE_LISTENING, align 4
  %42 = call i32 @br_set_state(%struct.net_bridge_port* %40, i32 %41)
  br label %47

43:                                               ; preds = %33
  %44 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %45 = load i32, i32* @BR_STATE_LEARNING, align 4
  %46 = call i32 @br_set_state(%struct.net_bridge_port* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* @RTM_NEWLINK, align 4
  %50 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %51 = call i32 @br_ifinfo_notify(i32 %49, i32* null, %struct.net_bridge_port* %50)
  %52 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %53 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %58 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %57, i32 0, i32 1
  %59 = load i64, i64* @jiffies, align 8
  %60 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %61 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = call i32 @mod_timer(i32* %58, i64 %63)
  br label %65

65:                                               ; preds = %12, %56, %48
  ret void
}

declare dso_local i32 @br_set_state(%struct.net_bridge_port*, i32) #1

declare dso_local i32 @br_topology_change_detection(%struct.net_bridge*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @br_ifinfo_notify(i32, i32*, %struct.net_bridge_port*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
