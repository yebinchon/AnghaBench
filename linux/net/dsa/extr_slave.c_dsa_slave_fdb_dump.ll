; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_fdb_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_fdb_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.net_device = type { i32 }
%struct.dsa_port = type { i32 }
%struct.dsa_slave_dump_ctx = type { i32, %struct.netlink_callback*, %struct.sk_buff*, %struct.net_device* }

@dsa_slave_port_fdb_do_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)* @dsa_slave_fdb_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_fdb_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.net_device* %2, %struct.net_device* %3, i32* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dsa_port*, align 8
  %12 = alloca %struct.dsa_slave_dump_ctx, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %14)
  store %struct.dsa_port* %15, %struct.dsa_port** %11, align 8
  %16 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %12, i32 0, i32 0
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %16, align 8
  %19 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %12, i32 0, i32 1
  %20 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  store %struct.netlink_callback* %20, %struct.netlink_callback** %19, align 8
  %21 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %12, i32 0, i32 2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %21, align 8
  %23 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %12, i32 0, i32 3
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %24, %struct.net_device** %23, align 8
  %25 = load %struct.dsa_port*, %struct.dsa_port** %11, align 8
  %26 = load i32, i32* @dsa_slave_port_fdb_do_dump, align 4
  %27 = call i32 @dsa_port_fdb_dump(%struct.dsa_port* %25, i32 %26, %struct.dsa_slave_dump_ctx* %12)
  store i32 %27, i32* %13, align 4
  %28 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %13, align 4
  ret i32 %31
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i32 @dsa_port_fdb_dump(%struct.dsa_port*, i32, %struct.dsa_slave_dump_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
