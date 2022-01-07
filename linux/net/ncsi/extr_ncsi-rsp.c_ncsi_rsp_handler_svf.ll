; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_svf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_svf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_cmd_svf_pkt = type { i32, i32, i32 }
%struct.ncsi_rsp_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_channel = type { i32, %struct.ncsi_channel_vlan_filter }
%struct.ncsi_channel_vlan_filter = type { i32, i64*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_svf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_svf(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_cmd_svf_pkt*, align 8
  %5 = alloca %struct.ncsi_rsp_pkt*, align 8
  %6 = alloca %struct.ncsi_dev_priv*, align 8
  %7 = alloca %struct.ncsi_channel*, align 8
  %8 = alloca %struct.ncsi_channel_vlan_filter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %11 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %12 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %11, i32 0, i32 2
  %13 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %12, align 8
  store %struct.ncsi_dev_priv* %13, %struct.ncsi_dev_priv** %6, align 8
  %14 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %15 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @skb_network_header(i32 %16)
  %18 = inttoptr i64 %17 to %struct.ncsi_rsp_pkt*
  store %struct.ncsi_rsp_pkt* %18, %struct.ncsi_rsp_pkt** %5, align 8
  %19 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %20 = load %struct.ncsi_rsp_pkt*, %struct.ncsi_rsp_pkt** %5, align 8
  %21 = getelementptr inbounds %struct.ncsi_rsp_pkt, %struct.ncsi_rsp_pkt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %19, i32 %24, i32* null, %struct.ncsi_channel** %7)
  %26 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %27 = icmp ne %struct.ncsi_channel* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %111

31:                                               ; preds = %1
  %32 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %33 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @skb_network_header(i32 %34)
  %36 = inttoptr i64 %35 to %struct.ncsi_cmd_svf_pkt*
  store %struct.ncsi_cmd_svf_pkt* %36, %struct.ncsi_cmd_svf_pkt** %4, align 8
  %37 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %38 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %37, i32 0, i32 1
  store %struct.ncsi_channel_vlan_filter* %38, %struct.ncsi_channel_vlan_filter** %8, align 8
  %39 = load %struct.ncsi_cmd_svf_pkt*, %struct.ncsi_cmd_svf_pkt** %4, align 8
  %40 = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, %struct.ncsi_cmd_svf_pkt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %31
  %44 = load %struct.ncsi_cmd_svf_pkt*, %struct.ncsi_cmd_svf_pkt** %4, align 8
  %45 = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, %struct.ncsi_cmd_svf_pkt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %48 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43, %31
  %52 = load i32, i32* @ERANGE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %111

54:                                               ; preds = %43
  %55 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %56 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %55, i32 0, i32 0
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %60 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %59, i32 0, i32 2
  %61 = bitcast i32* %60 to i8*
  store i8* %61, i8** %10, align 8
  %62 = load %struct.ncsi_cmd_svf_pkt*, %struct.ncsi_cmd_svf_pkt** %4, align 8
  %63 = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, %struct.ncsi_cmd_svf_pkt* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %54
  %68 = load %struct.ncsi_cmd_svf_pkt*, %struct.ncsi_cmd_svf_pkt** %4, align 8
  %69 = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, %struct.ncsi_cmd_svf_pkt* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i8*, i8** %10, align 8
  %73 = call i64 @test_and_clear_bit(i32 %71, i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %67
  %76 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %77 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load %struct.ncsi_cmd_svf_pkt*, %struct.ncsi_cmd_svf_pkt** %4, align 8
  %80 = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, %struct.ncsi_cmd_svf_pkt* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %78, i64 %83
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %75, %67
  br label %106

86:                                               ; preds = %54
  %87 = load %struct.ncsi_cmd_svf_pkt*, %struct.ncsi_cmd_svf_pkt** %4, align 8
  %88 = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, %struct.ncsi_cmd_svf_pkt* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @set_bit(i32 %90, i8* %91)
  %93 = load %struct.ncsi_cmd_svf_pkt*, %struct.ncsi_cmd_svf_pkt** %4, align 8
  %94 = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, %struct.ncsi_cmd_svf_pkt* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @ntohs(i32 %95)
  %97 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %98 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.ncsi_cmd_svf_pkt*, %struct.ncsi_cmd_svf_pkt** %4, align 8
  %101 = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, %struct.ncsi_cmd_svf_pkt* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %99, i64 %104
  store i64 %96, i64* %105, align 8
  br label %106

106:                                              ; preds = %86, %85
  %107 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %108 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %107, i32 0, i32 0
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %106, %51, %28
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, i32*, %struct.ncsi_channel**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i8*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
