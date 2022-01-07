; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_transmit_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_transmit_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, i64, i32, %struct.net_bridge*, i64, i32 }
%struct.net_bridge = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.br_config_bpdu = type { i64, i64, i32, i32, i32, i32, i32, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@MESSAGE_AGE_INCR = common dso_local global i64 0, align 8
@BR_KERNEL_STP = common dso_local global i64 0, align 8
@BR_HOLD_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_transmit_config(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  %3 = alloca %struct.br_config_bpdu, align 8
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %6 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %7 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %6, i32 0, i32 2
  %8 = call i64 @timer_pending(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %12 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %102

13:                                               ; preds = %1
  %14 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %15 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %14, i32 0, i32 3
  %16 = load %struct.net_bridge*, %struct.net_bridge** %15, align 8
  store %struct.net_bridge* %16, %struct.net_bridge** %4, align 8
  %17 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %18 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 9
  store i32 %19, i32* %20, align 8
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %22 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 8
  store i64 %23, i64* %24, align 8
  %25 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %26 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 7
  store i32 %27, i32* %28, align 4
  %29 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %30 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 6
  store i32 %31, i32* %32, align 8
  %33 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %34 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 5
  store i32 %35, i32* %36, align 4
  %37 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %38 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %42 = call i64 @br_is_root_bridge(%struct.net_bridge* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %13
  %45 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %60

46:                                               ; preds = %13
  %47 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %48 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %49 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.net_bridge_port* @br_get_port(%struct.net_bridge* %47, i32 %50)
  store %struct.net_bridge_port* %51, %struct.net_bridge_port** %5, align 8
  %52 = load i64, i64* @jiffies, align 8
  %53 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %54 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load i64, i64* @MESSAGE_AGE_INCR, align 8
  %58 = add nsw i64 %56, %57
  %59 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %46, %44
  %61 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %62 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  %65 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %66 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 3
  store i32 %67, i32* %68, align 4
  %69 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %70 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %76 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %60
  %80 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %81 = call i32 @br_send_config_bpdu(%struct.net_bridge_port* %80, %struct.br_config_bpdu* %3)
  %82 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %83 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %85 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %87 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %86, i32 0, i32 3
  %88 = load %struct.net_bridge*, %struct.net_bridge** %87, align 8
  %89 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BR_KERNEL_STP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %79
  %94 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %95 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %94, i32 0, i32 2
  %96 = load i64, i64* @jiffies, align 8
  %97 = load i64, i64* @BR_HOLD_TIME, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @round_jiffies(i64 %98)
  %100 = call i32 @mod_timer(i32* %95, i32 %99)
  br label %101

101:                                              ; preds = %93, %79
  br label %102

102:                                              ; preds = %10, %101, %60
  ret void
}

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i64 @br_is_root_bridge(%struct.net_bridge*) #1

declare dso_local %struct.net_bridge_port* @br_get_port(%struct.net_bridge*, i32) #1

declare dso_local i32 @br_send_config_bpdu(%struct.net_bridge_port*, %struct.br_config_bpdu*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
