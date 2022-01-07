; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_port_param_set_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_port_param_set_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.devlink_port** }
%struct.devlink_port = type { i32, i32, i32 }

@DEVLINK_CMD_PORT_PARAM_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_port_param_set_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_port_param_set_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.devlink_port*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %6 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %7 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %6, i32 0, i32 0
  %8 = load %struct.devlink_port**, %struct.devlink_port*** %7, align 8
  %9 = getelementptr inbounds %struct.devlink_port*, %struct.devlink_port** %8, i64 0
  %10 = load %struct.devlink_port*, %struct.devlink_port** %9, align 8
  store %struct.devlink_port* %10, %struct.devlink_port** %5, align 8
  %11 = load %struct.devlink_port*, %struct.devlink_port** %5, align 8
  %12 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.devlink_port*, %struct.devlink_port** %5, align 8
  %15 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.devlink_port*, %struct.devlink_port** %5, align 8
  %18 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %17, i32 0, i32 0
  %19 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %20 = load i32, i32* @DEVLINK_CMD_PORT_PARAM_NEW, align 4
  %21 = call i32 @__devlink_nl_cmd_param_set_doit(i32 %13, i32 %16, i32* %18, %struct.genl_info* %19, i32 %20)
  ret i32 %21
}

declare dso_local i32 @__devlink_nl_cmd_param_set_doit(i32, i32, i32*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
