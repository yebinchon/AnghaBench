; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_log_ipv6.c_dump_ipv6_mac_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_log_ipv6.c_dump_ipv6_mac_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_log_buf = type { i32 }
%struct.nf_loginfo = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64, i64, i8*, %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.iphdr = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@NF_LOG_TYPE_LOG = common dso_local global i64 0, align 8
@NF_LOG_MACDECODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MACSRC=%pM MACDST=%pM MACPROTO=%04x \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"MAC=\00", align 1
@ARPHRD_SIT = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c":%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"TUNNEL=%pI4->%pI4 \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_log_buf*, %struct.nf_loginfo*, %struct.sk_buff*)* @dump_ipv6_mac_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ipv6_mac_header(%struct.nf_log_buf* %0, %struct.nf_loginfo* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nf_log_buf*, align 8
  %5 = alloca %struct.nf_loginfo*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iphdr*, align 8
  store %struct.nf_log_buf* %0, %struct.nf_log_buf** %4, align 8
  store %struct.nf_loginfo* %1, %struct.nf_loginfo** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 3
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.nf_loginfo*, %struct.nf_loginfo** %5, align 8
  %17 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NF_LOG_TYPE_LOG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.nf_loginfo*, %struct.nf_loginfo** %5, align 8
  %23 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %21, %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @NF_LOG_MACDECODE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %55

33:                                               ; preds = %27
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %53 [
    i32 128, label %37
  ]

37:                                               ; preds = %33
  %38 = load %struct.nf_log_buf*, %struct.nf_log_buf** %4, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohs(i32 %50)
  %52 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46, i32 %51)
  br label %141

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %32
  %56 = load %struct.nf_log_buf*, %struct.nf_log_buf** %4, align 8
  %57 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %138

62:                                               ; preds = %55
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %138

70:                                               ; preds = %62
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = call i8* @skb_mac_header(%struct.sk_buff* %71)
  store i8* %72, i8** %9, align 8
  %73 = load %struct.net_device*, %struct.net_device** %7, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %10, align 4
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ARPHRD_SIT, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %70
  %82 = load i32, i32* @ETH_HLEN, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = sext i32 %82 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ult i8* %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  store i8* null, i8** %9, align 8
  br label %93

93:                                               ; preds = %92, %81
  br label %94

94:                                               ; preds = %93, %70
  %95 = load i8*, i8** %9, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %119

97:                                               ; preds = %94
  %98 = load %struct.nf_log_buf*, %struct.nf_log_buf** %4, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %9, align 8
  %101 = load i8, i8* %99, align 1
  %102 = zext i8 %101 to i32
  %103 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  store i32 1, i32* %11, align 4
  br label %104

104:                                              ; preds = %115, %97
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load %struct.nf_log_buf*, %struct.nf_log_buf** %4, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  %112 = load i8, i8* %110, align 1
  %113 = zext i8 %112 to i32
  %114 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %11, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %104

118:                                              ; preds = %104
  br label %119

119:                                              ; preds = %118, %94
  %120 = load %struct.nf_log_buf*, %struct.nf_log_buf** %4, align 8
  %121 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %122 = load %struct.net_device*, %struct.net_device** %7, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ARPHRD_SIT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %119
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = call i8* @skb_mac_header(%struct.sk_buff* %128)
  %130 = bitcast i8* %129 to %struct.iphdr*
  store %struct.iphdr* %130, %struct.iphdr** %12, align 8
  %131 = load %struct.nf_log_buf*, %struct.nf_log_buf** %4, align 8
  %132 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %133 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %132, i32 0, i32 1
  %134 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %135 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %134, i32 0, i32 0
  %136 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %133, i32* %135)
  br label %137

137:                                              ; preds = %127, %119
  br label %141

138:                                              ; preds = %62, %55
  %139 = load %struct.nf_log_buf*, %struct.nf_log_buf** %4, align 8
  %140 = call i32 (%struct.nf_log_buf*, i8*, ...) @nf_log_buf_add(%struct.nf_log_buf* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %141

141:                                              ; preds = %37, %138, %137
  ret void
}

declare dso_local i32 @nf_log_buf_add(%struct.nf_log_buf*, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
