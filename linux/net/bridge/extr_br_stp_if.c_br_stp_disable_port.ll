; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_if.c_br_stp_disable_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_if.c_br_stp_disable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, i32, i32, i32, i64, i64, %struct.net_bridge* }
%struct.net_bridge = type { i32 }

@BR_STATE_DISABLED = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_stp_disable_port(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %5 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %6 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %5, i32 0, i32 6
  %7 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  store %struct.net_bridge* %7, %struct.net_bridge** %3, align 8
  %8 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %9 = call i32 @br_is_root_bridge(%struct.net_bridge* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %11 = call i32 @br_become_designated_port(%struct.net_bridge_port* %10)
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %13 = load i32, i32* @BR_STATE_DISABLED, align 4
  %14 = call i32 @br_set_state(%struct.net_bridge_port* %12, i32 %13)
  %15 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %16 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %18 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @RTM_NEWLINK, align 4
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %21 = call i32 @br_ifinfo_notify(i32 %19, i32* null, %struct.net_bridge_port* %20)
  %22 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %23 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %22, i32 0, i32 3
  %24 = call i32 @del_timer(i32* %23)
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %26 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %25, i32 0, i32 2
  %27 = call i32 @del_timer(i32* %26)
  %28 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %29 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %28, i32 0, i32 1
  %30 = call i32 @del_timer(i32* %29)
  %31 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %32 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @rcu_access_pointer(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %1
  %37 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %38 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %39 = call i32 @br_fdb_delete_by_port(%struct.net_bridge* %37, %struct.net_bridge_port* %38, i32 0, i32 0)
  br label %40

40:                                               ; preds = %36, %1
  %41 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %42 = call i32 @br_multicast_disable_port(%struct.net_bridge_port* %41)
  %43 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %44 = call i32 @br_configuration_update(%struct.net_bridge* %43)
  %45 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %46 = call i32 @br_port_state_selection(%struct.net_bridge* %45)
  %47 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %48 = call i32 @br_is_root_bridge(%struct.net_bridge* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %55 = call i32 @br_become_root_bridge(%struct.net_bridge* %54)
  br label %56

56:                                               ; preds = %53, %50, %40
  ret void
}

declare dso_local i32 @br_is_root_bridge(%struct.net_bridge*) #1

declare dso_local i32 @br_become_designated_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_set_state(%struct.net_bridge_port*, i32) #1

declare dso_local i32 @br_ifinfo_notify(i32, i32*, %struct.net_bridge_port*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @br_fdb_delete_by_port(%struct.net_bridge*, %struct.net_bridge_port*, i32, i32) #1

declare dso_local i32 @br_multicast_disable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_configuration_update(%struct.net_bridge*) #1

declare dso_local i32 @br_port_state_selection(%struct.net_bridge*) #1

declare dso_local i32 @br_become_root_bridge(%struct.net_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
