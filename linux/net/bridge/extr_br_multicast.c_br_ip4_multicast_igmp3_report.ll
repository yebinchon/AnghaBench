; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_ip4_multicast_igmp3_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_ip4_multicast_igmp3_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.sk_buff = type { i32 }
%struct.igmpv3_report = type { i32 }
%struct.igmpv3_grec = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*, i32)* @br_ip4_multicast_igmp3_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_ip4_multicast_igmp3_report(%struct.net_bridge* %0, %struct.net_bridge_port* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.igmpv3_report*, align 8
  %12 = alloca %struct.igmpv3_grec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call %struct.igmpv3_report* @igmpv3_report_hdr(%struct.sk_buff* %20)
  store %struct.igmpv3_report* %21, %struct.igmpv3_report** %11, align 8
  %22 = load %struct.igmpv3_report*, %struct.igmpv3_report** %11, align 8
  %23 = getelementptr inbounds %struct.igmpv3_report, %struct.igmpv3_report* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohs(i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call i32 @skb_transport_offset(%struct.sk_buff* %26)
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %114, %4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %117

35:                                               ; preds = %31
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 12
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %14, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @ip_mc_may_pull(%struct.sk_buff* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %119

47:                                               ; preds = %35
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = sub i64 %53, 12
  %55 = inttoptr i64 %54 to i8*
  %56 = bitcast i8* %55 to %struct.igmpv3_grec*
  store %struct.igmpv3_grec* %56, %struct.igmpv3_grec** %12, align 8
  %57 = load %struct.igmpv3_grec*, %struct.igmpv3_grec** %12, align 8
  %58 = getelementptr inbounds %struct.igmpv3_grec, %struct.igmpv3_grec* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %18, align 4
  %60 = load %struct.igmpv3_grec*, %struct.igmpv3_grec** %12, align 8
  %61 = getelementptr inbounds %struct.igmpv3_grec, %struct.igmpv3_grec* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %16, align 4
  %63 = load %struct.igmpv3_grec*, %struct.igmpv3_grec** %12, align 8
  %64 = getelementptr inbounds %struct.igmpv3_grec, %struct.igmpv3_grec* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ntohs(i32 %65)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = mul nsw i32 %67, 4
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @ip_mc_may_pull(%struct.sk_buff* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %47
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %119

78:                                               ; preds = %47
  %79 = load i32, i32* %16, align 4
  switch i32 %79, label %81 [
    i32 128, label %80
    i32 129, label %80
    i32 130, label %80
    i32 131, label %80
    i32 133, label %80
    i32 132, label %80
  ]

80:                                               ; preds = %78, %78, %78, %78, %78, %78
  br label %82

81:                                               ; preds = %78
  br label %114

82:                                               ; preds = %80
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %10, align 8
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %87, 130
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %16, align 4
  %91 = icmp eq i32 %90, 128
  br i1 %91, label %92, label %102

92:                                               ; preds = %89, %82
  %93 = load i32, i32* %19, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %97 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @br_ip4_multicast_leave_group(%struct.net_bridge* %96, %struct.net_bridge_port* %97, i32 %98, i32 %99, i8* %100)
  br label %113

102:                                              ; preds = %92, %89
  %103 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %104 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @br_ip4_multicast_add_group(%struct.net_bridge* %103, %struct.net_bridge_port* %104, i32 %105, i32 %106, i8* %107)
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %117

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112, %95
  br label %114

114:                                              ; preds = %113, %81
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %31

117:                                              ; preds = %111, %31
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %75, %44
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.igmpv3_report* @igmpv3_report_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @ip_mc_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @br_ip4_multicast_leave_group(%struct.net_bridge*, %struct.net_bridge_port*, i32, i32, i8*) #1

declare dso_local i32 @br_ip4_multicast_add_group(%struct.net_bridge*, %struct.net_bridge_port*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
