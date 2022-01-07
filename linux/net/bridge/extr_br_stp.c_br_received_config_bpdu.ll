; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_received_config_bpdu.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_received_config_bpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, %struct.net_bridge* }
%struct.net_bridge = type { i64, i64, i32, i32, i64, i32 }
%struct.br_config_bpdu = type { i64 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_received_config_bpdu(%struct.net_bridge_port* %0, %struct.br_config_bpdu* %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.br_config_bpdu*, align 8
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store %struct.br_config_bpdu* %1, %struct.br_config_bpdu** %4, align 8
  %7 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %8 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %7, i32 0, i32 1
  %9 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  store %struct.net_bridge* %9, %struct.net_bridge** %5, align 8
  %10 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %11 = call i32 @br_is_root_bridge(%struct.net_bridge* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %13 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %14 = call i64 @br_supersedes_port_info(%struct.net_bridge_port* %12, %struct.br_config_bpdu* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %2
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %18 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %19 = call i32 @br_record_config_information(%struct.net_bridge_port* %17, %struct.br_config_bpdu* %18)
  %20 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %21 = call i32 @br_configuration_update(%struct.net_bridge* %20)
  %22 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %23 = call i32 @br_port_state_selection(%struct.net_bridge* %22)
  %24 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %25 = call i32 @br_is_root_bridge(%struct.net_bridge* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %53, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %32 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %31, i32 0, i32 5
  %33 = call i32 @del_timer(i32* %32)
  %34 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %35 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %30
  %39 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %40 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %39, i32 0, i32 3
  %41 = call i32 @del_timer(i32* %40)
  %42 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %43 = call i32 @br_transmit_tcn(%struct.net_bridge* %42)
  %44 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %45 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %44, i32 0, i32 2
  %46 = load i64, i64* @jiffies, align 8
  %47 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %48 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @mod_timer(i32* %45, i64 %50)
  br label %52

52:                                               ; preds = %38, %30
  br label %53

53:                                               ; preds = %52, %27, %16
  %54 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %55 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %58 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %63 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %64 = call i32 @br_record_config_timeout_values(%struct.net_bridge* %62, %struct.br_config_bpdu* %63)
  %65 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %66 = call i32 @br_config_bpdu_generation(%struct.net_bridge* %65)
  %67 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %68 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %73 = call i32 @br_topology_change_acknowledged(%struct.net_bridge* %72)
  br label %74

74:                                               ; preds = %71, %61
  br label %75

75:                                               ; preds = %74, %53
  br label %84

76:                                               ; preds = %2
  %77 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %78 = call i64 @br_is_designated_port(%struct.net_bridge_port* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %82 = call i32 @br_reply(%struct.net_bridge_port* %81)
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %83, %75
  ret void
}

declare dso_local i32 @br_is_root_bridge(%struct.net_bridge*) #1

declare dso_local i64 @br_supersedes_port_info(%struct.net_bridge_port*, %struct.br_config_bpdu*) #1

declare dso_local i32 @br_record_config_information(%struct.net_bridge_port*, %struct.br_config_bpdu*) #1

declare dso_local i32 @br_configuration_update(%struct.net_bridge*) #1

declare dso_local i32 @br_port_state_selection(%struct.net_bridge*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @br_transmit_tcn(%struct.net_bridge*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @br_record_config_timeout_values(%struct.net_bridge*, %struct.br_config_bpdu*) #1

declare dso_local i32 @br_config_bpdu_generation(%struct.net_bridge*) #1

declare dso_local i32 @br_topology_change_acknowledged(%struct.net_bridge*) #1

declare dso_local i64 @br_is_designated_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_reply(%struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
