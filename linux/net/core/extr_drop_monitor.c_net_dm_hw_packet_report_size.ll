; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_packet_report_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_packet_report_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.net_dm_hw_metadata = type { i32, i32 }

@GENL_HDRLEN = common dso_local global i64 0, align 8
@net_drop_monitor_family = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.net_dm_hw_metadata*)* @net_dm_hw_packet_report_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @net_dm_hw_packet_report_size(i64 %0, %struct.net_dm_hw_metadata* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.net_dm_hw_metadata*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.net_dm_hw_metadata* %1, %struct.net_dm_hw_metadata** %4, align 8
  %6 = load i64, i64* @GENL_HDRLEN, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @net_drop_monitor_family, i32 0, i32 0), align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @nlmsg_msg_size(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @NLMSG_ALIGN(i64 %10)
  %12 = call i64 @nla_total_size(i64 4)
  %13 = add i64 %11, %12
  %14 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %4, align 8
  %15 = getelementptr inbounds %struct.net_dm_hw_metadata, %struct.net_dm_hw_metadata* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = call i64 @nla_total_size(i64 %19)
  %21 = add i64 %13, %20
  %22 = load %struct.net_dm_hw_metadata*, %struct.net_dm_hw_metadata** %4, align 8
  %23 = getelementptr inbounds %struct.net_dm_hw_metadata, %struct.net_dm_hw_metadata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strlen(i32 %24)
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = call i64 @nla_total_size(i64 %27)
  %29 = add i64 %21, %28
  %30 = call i64 (...) @net_dm_in_port_size()
  %31 = add i64 %29, %30
  %32 = call i64 @nla_total_size(i64 4)
  %33 = add i64 %31, %32
  %34 = call i64 @nla_total_size(i64 4)
  %35 = add i64 %33, %34
  %36 = call i64 @nla_total_size(i64 4)
  %37 = add i64 %35, %36
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @nla_total_size(i64 %38)
  %40 = add i64 %37, %39
  ret i64 %40
}

declare dso_local i64 @nlmsg_msg_size(i64) #1

declare dso_local i64 @NLMSG_ALIGN(i64) #1

declare dso_local i64 @nla_total_size(i64) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @net_dm_in_port_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
