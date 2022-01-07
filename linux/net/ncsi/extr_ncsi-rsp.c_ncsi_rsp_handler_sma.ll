; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_sma.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_sma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_cmd_sma_pkt = type { i32, i32, i32 }
%struct.ncsi_rsp_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_channel = type { i32, %struct.ncsi_channel_mac_filter }
%struct.ncsi_channel_mac_filter = type { i32, i32, i32, i32*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_sma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_sma(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_cmd_sma_pkt*, align 8
  %5 = alloca %struct.ncsi_rsp_pkt*, align 8
  %6 = alloca %struct.ncsi_dev_priv*, align 8
  %7 = alloca %struct.ncsi_channel*, align 8
  %8 = alloca %struct.ncsi_channel_mac_filter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %13 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %14 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %13, i32 0, i32 2
  %15 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %14, align 8
  store %struct.ncsi_dev_priv* %15, %struct.ncsi_dev_priv** %6, align 8
  %16 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %17 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @skb_network_header(i32 %18)
  %20 = inttoptr i64 %19 to %struct.ncsi_rsp_pkt*
  store %struct.ncsi_rsp_pkt* %20, %struct.ncsi_rsp_pkt** %5, align 8
  %21 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %22 = load %struct.ncsi_rsp_pkt*, %struct.ncsi_rsp_pkt** %5, align 8
  %23 = getelementptr inbounds %struct.ncsi_rsp_pkt, %struct.ncsi_rsp_pkt* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %21, i32 %26, i32* null, %struct.ncsi_channel** %7)
  %28 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %29 = icmp ne %struct.ncsi_channel* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %122

33:                                               ; preds = %1
  %34 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %35 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @skb_network_header(i32 %36)
  %38 = inttoptr i64 %37 to %struct.ncsi_cmd_sma_pkt*
  store %struct.ncsi_cmd_sma_pkt* %38, %struct.ncsi_cmd_sma_pkt** %4, align 8
  %39 = load %struct.ncsi_cmd_sma_pkt*, %struct.ncsi_cmd_sma_pkt** %4, align 8
  %40 = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, %struct.ncsi_cmd_sma_pkt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1
  store i32 %42, i32* %11, align 4
  %43 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %44 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %43, i32 0, i32 1
  store %struct.ncsi_channel_mac_filter* %44, %struct.ncsi_channel_mac_filter** %8, align 8
  %45 = load %struct.ncsi_channel_mac_filter*, %struct.ncsi_channel_mac_filter** %8, align 8
  %46 = getelementptr inbounds %struct.ncsi_channel_mac_filter, %struct.ncsi_channel_mac_filter* %45, i32 0, i32 4
  %47 = bitcast i32* %46 to i8*
  store i8* %47, i8** %10, align 8
  %48 = load %struct.ncsi_cmd_sma_pkt*, %struct.ncsi_cmd_sma_pkt** %4, align 8
  %49 = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, %struct.ncsi_cmd_sma_pkt* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %33
  %53 = load %struct.ncsi_cmd_sma_pkt*, %struct.ncsi_cmd_sma_pkt** %4, align 8
  %54 = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, %struct.ncsi_cmd_sma_pkt* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ncsi_channel_mac_filter*, %struct.ncsi_channel_mac_filter** %8, align 8
  %57 = getelementptr inbounds %struct.ncsi_channel_mac_filter, %struct.ncsi_channel_mac_filter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ncsi_channel_mac_filter*, %struct.ncsi_channel_mac_filter** %8, align 8
  %60 = getelementptr inbounds %struct.ncsi_channel_mac_filter, %struct.ncsi_channel_mac_filter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = load %struct.ncsi_channel_mac_filter*, %struct.ncsi_channel_mac_filter** %8, align 8
  %64 = getelementptr inbounds %struct.ncsi_channel_mac_filter, %struct.ncsi_channel_mac_filter* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %62, %65
  %67 = icmp sgt i32 %55, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %52, %33
  %69 = load i32, i32* @ERANGE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %122

71:                                               ; preds = %52
  %72 = load %struct.ncsi_cmd_sma_pkt*, %struct.ncsi_cmd_sma_pkt** %4, align 8
  %73 = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, %struct.ncsi_cmd_sma_pkt* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %12, align 4
  %78 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %79 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %78, i32 0, i32 0
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %71
  %85 = load %struct.ncsi_cmd_sma_pkt*, %struct.ncsi_cmd_sma_pkt** %4, align 8
  %86 = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, %struct.ncsi_cmd_sma_pkt* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @set_bit(i32 %88, i8* %89)
  %91 = load %struct.ncsi_channel_mac_filter*, %struct.ncsi_channel_mac_filter** %8, align 8
  %92 = getelementptr inbounds %struct.ncsi_channel_mac_filter, %struct.ncsi_channel_mac_filter* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load %struct.ncsi_cmd_sma_pkt*, %struct.ncsi_cmd_sma_pkt** %4, align 8
  %98 = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, %struct.ncsi_cmd_sma_pkt* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ETH_ALEN, align 4
  %101 = call i32 @memcpy(i32* %96, i32 %99, i32 %100)
  br label %117

102:                                              ; preds = %71
  %103 = load %struct.ncsi_cmd_sma_pkt*, %struct.ncsi_cmd_sma_pkt** %4, align 8
  %104 = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, %struct.ncsi_cmd_sma_pkt* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @clear_bit(i32 %106, i8* %107)
  %109 = load %struct.ncsi_channel_mac_filter*, %struct.ncsi_channel_mac_filter** %8, align 8
  %110 = getelementptr inbounds %struct.ncsi_channel_mac_filter, %struct.ncsi_channel_mac_filter* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* @ETH_ALEN, align 4
  %116 = call i32 @memset(i32* %114, i32 0, i32 %115)
  br label %117

117:                                              ; preds = %102, %84
  %118 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %119 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %118, i32 0, i32 0
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %68, %30
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, i32*, %struct.ncsi_channel**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
