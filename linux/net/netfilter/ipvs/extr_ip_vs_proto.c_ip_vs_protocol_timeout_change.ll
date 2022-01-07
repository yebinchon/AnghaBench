; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto.c_ip_vs_protocol_timeout_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto.c_ip_vs_protocol_timeout_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { %struct.ip_vs_proto_data** }
%struct.ip_vs_proto_data = type { %struct.TYPE_2__*, %struct.ip_vs_proto_data* }
%struct.TYPE_2__ = type { i32 (%struct.ip_vs_proto_data*, i32)* }

@IP_VS_PROTO_TAB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_protocol_timeout_change(%struct.netns_ipvs* %0, i32 %1) #0 {
  %3 = alloca %struct.netns_ipvs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_proto_data*, align 8
  %6 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %44, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @IP_VS_PROTO_TAB_SIZE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %13 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %12, i32 0, i32 0
  %14 = load %struct.ip_vs_proto_data**, %struct.ip_vs_proto_data*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %14, i64 %16
  %18 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %17, align 8
  store %struct.ip_vs_proto_data* %18, %struct.ip_vs_proto_data** %5, align 8
  br label %19

19:                                               ; preds = %39, %11
  %20 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %5, align 8
  %21 = icmp ne %struct.ip_vs_proto_data* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %5, align 8
  %24 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.ip_vs_proto_data*, i32)*, i32 (%struct.ip_vs_proto_data*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.ip_vs_proto_data*, i32)* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %5, align 8
  %31 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ip_vs_proto_data*, i32)*, i32 (%struct.ip_vs_proto_data*, i32)** %33, align 8
  %35 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 %34(%struct.ip_vs_proto_data* %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %22
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %5, align 8
  %41 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %40, i32 0, i32 1
  %42 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %41, align 8
  store %struct.ip_vs_proto_data* %42, %struct.ip_vs_proto_data** %5, align 8
  br label %19

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %7

47:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
