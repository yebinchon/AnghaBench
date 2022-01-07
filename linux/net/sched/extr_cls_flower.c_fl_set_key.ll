; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.fl_flow_key = type { %struct.TYPE_21__, i32, i32, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_30__, %struct.TYPE_29__, i32, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_21__ = type { i32, i8* }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_29__ = type { i64, i64, i64, i64*, i64* }
%struct.TYPE_28__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64*, i64* }
%struct.TYPE_22__ = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@TCA_FLOWER_INDEV = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ETH_DST = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ETH_DST_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ETH_SRC = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ETH_SRC_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ETH_TYPE = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_VLAN_ID = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_VLAN_PRIO = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_VLAN_ETH_TYPE = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_CVLAN_ID = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CVLAN_PRIO = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_CVLAN_ETH_TYPE = common dso_local global i64 0, align 8
@TCA_FLOWER_UNSPEC = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_IP_PROTO = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_IPV4_SRC = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_IPV4_DST = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i8* null, align 8
@TCA_FLOWER_KEY_IPV4_SRC_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_IPV4_DST_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_IPV6_SRC = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_IPV6_DST = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i8* null, align 8
@TCA_FLOWER_KEY_IPV6_SRC_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_IPV6_DST_MASK = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_TCP_SRC = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_TCP_SRC_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_TCP_DST = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_TCP_DST_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_TCP_FLAGS = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_TCP_FLAGS_MASK = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_UDP_SRC = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_UDP_SRC_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_UDP_DST = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_UDP_DST_MASK = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_SCTP_SRC = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_SCTP_SRC_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_SCTP_DST = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_SCTP_DST_MASK = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ICMPV4_TYPE = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ICMPV4_TYPE_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ICMPV4_CODE = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ICMPV4_CODE_MASK = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ICMPV6_TYPE = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ICMPV6_TYPE_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ICMPV6_CODE = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ICMPV6_CODE_MASK = common dso_local global i32 0, align 4
@ETH_P_MPLS_UC = common dso_local global i32 0, align 4
@ETH_P_MPLS_MC = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_RARP = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ARP_SIP = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ARP_SIP_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ARP_TIP = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ARP_TIP_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ARP_OP = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ARP_OP_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ARP_SHA = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ARP_SHA_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ARP_THA = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ARP_THA_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_IPV4_SRC = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ENC_IPV4_DST = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ENC_IPV4_SRC_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_IPV4_DST_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_IPV6_SRC = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ENC_IPV6_DST = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ENC_IPV6_SRC_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_IPV6_DST_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_KEY_ID = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ENC_UDP_SRC_PORT = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ENC_UDP_SRC_PORT_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_UDP_DST_PORT = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ENC_UDP_DST_PORT_MASK = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_OPTS = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_FLAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr**, %struct.fl_flow_key*, %struct.fl_flow_key*, %struct.netlink_ext_ack*)* @fl_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_set_key(%struct.net* %0, %struct.nlattr** %1, %struct.fl_flow_key* %2, %struct.fl_flow_key* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.fl_flow_key*, align 8
  %10 = alloca %struct.fl_flow_key*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store %struct.fl_flow_key* %2, %struct.fl_flow_key** %9, align 8
  store %struct.fl_flow_key* %3, %struct.fl_flow_key** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %16 = load i64, i64* @TCA_FLOWER_INDEV, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %5
  %21 = load %struct.net*, %struct.net** %7, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %23 = load i64, i64* @TCA_FLOWER_INDEV, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %27 = call i32 @tcf_change_indev(%struct.net* %21, %struct.nlattr* %25, %struct.netlink_ext_ack* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %6, align 4
  br label %726

32:                                               ; preds = %20
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %35 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %34, i32 0, i32 20
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %38 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %37, i32 0, i32 20
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  br label %40

40:                                               ; preds = %32, %5
  %41 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %42 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %43 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %42, i32 0, i32 19
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @TCA_FLOWER_KEY_ETH_DST, align 8
  %47 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %48 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %47, i32 0, i32 19
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* @TCA_FLOWER_KEY_ETH_DST_MASK, align 4
  %52 = call i32 @fl_set_key_val(%struct.nlattr** %41, i64* %45, i64 %46, i64* %50, i32 %51, i32 8)
  %53 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %54 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %55 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %54, i32 0, i32 19
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @TCA_FLOWER_KEY_ETH_SRC, align 8
  %59 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %60 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %59, i32 0, i32 19
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* @TCA_FLOWER_KEY_ETH_SRC_MASK, align 4
  %64 = call i32 @fl_set_key_val(%struct.nlattr** %53, i64* %57, i64 %58, i64* %62, i32 %63, i32 8)
  %65 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %66 = load i64, i64* @TCA_FLOWER_KEY_ETH_TYPE, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %65, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = icmp ne %struct.nlattr* %68, null
  br i1 %69, label %70, label %148

70:                                               ; preds = %40
  %71 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %72 = load i64, i64* @TCA_FLOWER_KEY_ETH_TYPE, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = call i8* @nla_get_be16(%struct.nlattr* %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = call i64 @eth_type_vlan(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %136

79:                                               ; preds = %70
  %80 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* @TCA_FLOWER_KEY_VLAN_ID, align 4
  %83 = load i32, i32* @TCA_FLOWER_KEY_VLAN_PRIO, align 4
  %84 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %85 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %84, i32 0, i32 18
  %86 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %87 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %86, i32 0, i32 18
  %88 = call i32 @fl_set_key_vlan(%struct.nlattr** %80, i8* %81, i32 %82, i32 %83, i32* %85, i32* %87)
  %89 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %90 = load i64, i64* @TCA_FLOWER_KEY_VLAN_ETH_TYPE, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %89, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = icmp ne %struct.nlattr* %92, null
  br i1 %93, label %94, label %135

94:                                               ; preds = %79
  %95 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %96 = load i64, i64* @TCA_FLOWER_KEY_VLAN_ETH_TYPE, align 8
  %97 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %95, i64 %96
  %98 = load %struct.nlattr*, %struct.nlattr** %97, align 8
  %99 = call i8* @nla_get_be16(%struct.nlattr* %98)
  store i8* %99, i8** %12, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = call i64 @eth_type_vlan(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %94
  %104 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* @TCA_FLOWER_KEY_CVLAN_ID, align 4
  %107 = load i32, i32* @TCA_FLOWER_KEY_CVLAN_PRIO, align 4
  %108 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %109 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %108, i32 0, i32 17
  %110 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %111 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %110, i32 0, i32 17
  %112 = call i32 @fl_set_key_vlan(%struct.nlattr** %104, i8* %105, i32 %106, i32 %107, i32* %109, i32* %111)
  %113 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %114 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %115 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 0
  %117 = load i64, i64* @TCA_FLOWER_KEY_CVLAN_ETH_TYPE, align 8
  %118 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %119 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 0
  %121 = load i32, i32* @TCA_FLOWER_UNSPEC, align 4
  %122 = call i32 @fl_set_key_val(%struct.nlattr** %113, i64* %116, i64 %117, i64* %120, i32 %121, i32 8)
  br label %134

123:                                              ; preds = %94
  %124 = load i8*, i8** %12, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %127 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %126, i32 0, i32 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 0
  store i64 %125, i64* %128, align 8
  %129 = call i8* @cpu_to_be16(i32 -1)
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %132 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %131, i32 0, i32 8
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 0
  store i64 %130, i64* %133, align 8
  br label %134

134:                                              ; preds = %123, %103
  br label %135

135:                                              ; preds = %134, %79
  br label %147

136:                                              ; preds = %70
  %137 = load i8*, i8** %12, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %140 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %139, i32 0, i32 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 0
  store i64 %138, i64* %141, align 8
  %142 = call i8* @cpu_to_be16(i32 -1)
  %143 = ptrtoint i8* %142 to i64
  %144 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %145 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 0
  store i64 %143, i64* %146, align 8
  br label %147

147:                                              ; preds = %136, %135
  br label %148

148:                                              ; preds = %147, %40
  %149 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %150 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %149, i32 0, i32 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* @ETH_P_IP, align 4
  %154 = call i64 @htons(i32 %153)
  %155 = icmp eq i64 %152, %154
  br i1 %155, label %164, label %156

156:                                              ; preds = %148
  %157 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %158 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @ETH_P_IPV6, align 4
  %162 = call i64 @htons(i32 %161)
  %163 = icmp eq i64 %160, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %156, %148
  %165 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %166 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %167 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %166, i32 0, i32 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i32 0, i32 1
  %169 = load i64, i64* @TCA_FLOWER_KEY_IP_PROTO, align 8
  %170 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %171 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %170, i32 0, i32 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 1
  %173 = load i32, i32* @TCA_FLOWER_UNSPEC, align 4
  %174 = call i32 @fl_set_key_val(%struct.nlattr** %165, i64* %168, i64 %169, i64* %172, i32 %173, i32 8)
  %175 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %176 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %177 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %176, i32 0, i32 16
  %178 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %179 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %178, i32 0, i32 16
  %180 = call i32 @fl_set_key_ip(%struct.nlattr** %175, i32 0, i32* %177, i32* %179)
  br label %181

181:                                              ; preds = %164, %156
  %182 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %183 = load i64, i64* @TCA_FLOWER_KEY_IPV4_SRC, align 8
  %184 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %182, i64 %183
  %185 = load %struct.nlattr*, %struct.nlattr** %184, align 8
  %186 = icmp ne %struct.nlattr* %185, null
  br i1 %186, label %193, label %187

187:                                              ; preds = %181
  %188 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %189 = load i64, i64* @TCA_FLOWER_KEY_IPV4_DST, align 8
  %190 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %188, i64 %189
  %191 = load %struct.nlattr*, %struct.nlattr** %190, align 8
  %192 = icmp ne %struct.nlattr* %191, null
  br i1 %192, label %193, label %221

193:                                              ; preds = %187, %181
  %194 = load i8*, i8** @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %195 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %196 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 1
  store i8* %194, i8** %197, align 8
  %198 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %199 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %200, align 8
  %201 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %202 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %203 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 0
  %205 = load i64, i64* @TCA_FLOWER_KEY_IPV4_SRC, align 8
  %206 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %207 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %206, i32 0, i32 15
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 0
  %209 = load i32, i32* @TCA_FLOWER_KEY_IPV4_SRC_MASK, align 4
  %210 = call i32 @fl_set_key_val(%struct.nlattr** %201, i64* %204, i64 %205, i64* %208, i32 %209, i32 8)
  %211 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %212 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %213 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %212, i32 0, i32 15
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 1
  %215 = load i64, i64* @TCA_FLOWER_KEY_IPV4_DST, align 8
  %216 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %217 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %216, i32 0, i32 15
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 1
  %219 = load i32, i32* @TCA_FLOWER_KEY_IPV4_DST_MASK, align 4
  %220 = call i32 @fl_set_key_val(%struct.nlattr** %211, i64* %214, i64 %215, i64* %218, i32 %219, i32 8)
  br label %262

221:                                              ; preds = %187
  %222 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %223 = load i64, i64* @TCA_FLOWER_KEY_IPV6_SRC, align 8
  %224 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %222, i64 %223
  %225 = load %struct.nlattr*, %struct.nlattr** %224, align 8
  %226 = icmp ne %struct.nlattr* %225, null
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %229 = load i64, i64* @TCA_FLOWER_KEY_IPV6_DST, align 8
  %230 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %228, i64 %229
  %231 = load %struct.nlattr*, %struct.nlattr** %230, align 8
  %232 = icmp ne %struct.nlattr* %231, null
  br i1 %232, label %233, label %261

233:                                              ; preds = %227, %221
  %234 = load i8*, i8** @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %235 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %236 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 1
  store i8* %234, i8** %237, align 8
  %238 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %239 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %240, align 8
  %241 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %242 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %243 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %242, i32 0, i32 14
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  %245 = load i64, i64* @TCA_FLOWER_KEY_IPV6_SRC, align 8
  %246 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %247 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %246, i32 0, i32 14
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 0
  %249 = load i32, i32* @TCA_FLOWER_KEY_IPV6_SRC_MASK, align 4
  %250 = call i32 @fl_set_key_val(%struct.nlattr** %241, i64* %244, i64 %245, i64* %248, i32 %249, i32 8)
  %251 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %252 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %253 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %252, i32 0, i32 14
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 1
  %255 = load i64, i64* @TCA_FLOWER_KEY_IPV6_DST, align 8
  %256 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %257 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %256, i32 0, i32 14
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 1
  %259 = load i32, i32* @TCA_FLOWER_KEY_IPV6_DST_MASK, align 4
  %260 = call i32 @fl_set_key_val(%struct.nlattr** %251, i64* %254, i64 %255, i64* %258, i32 %259, i32 8)
  br label %261

261:                                              ; preds = %233, %227
  br label %262

262:                                              ; preds = %261, %193
  %263 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %264 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %263, i32 0, i32 8
  %265 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @IPPROTO_TCP, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %300

269:                                              ; preds = %262
  %270 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %271 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %272 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %271, i32 0, i32 12
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 0
  %274 = load i64, i64* @TCA_FLOWER_KEY_TCP_SRC, align 8
  %275 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %276 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %275, i32 0, i32 12
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 0
  %278 = load i32, i32* @TCA_FLOWER_KEY_TCP_SRC_MASK, align 4
  %279 = call i32 @fl_set_key_val(%struct.nlattr** %270, i64* %273, i64 %274, i64* %277, i32 %278, i32 8)
  %280 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %281 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %282 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %281, i32 0, i32 12
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 1
  %284 = load i64, i64* @TCA_FLOWER_KEY_TCP_DST, align 8
  %285 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %286 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %285, i32 0, i32 12
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 1
  %288 = load i32, i32* @TCA_FLOWER_KEY_TCP_DST_MASK, align 4
  %289 = call i32 @fl_set_key_val(%struct.nlattr** %280, i64* %283, i64 %284, i64* %287, i32 %288, i32 8)
  %290 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %291 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %292 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %291, i32 0, i32 13
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 0
  %294 = load i64, i64* @TCA_FLOWER_KEY_TCP_FLAGS, align 8
  %295 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %296 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %295, i32 0, i32 13
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 0
  %298 = load i32, i32* @TCA_FLOWER_KEY_TCP_FLAGS_MASK, align 4
  %299 = call i32 @fl_set_key_val(%struct.nlattr** %290, i64* %293, i64 %294, i64* %297, i32 %298, i32 8)
  br label %533

300:                                              ; preds = %262
  %301 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %302 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %301, i32 0, i32 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @IPPROTO_UDP, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %328

307:                                              ; preds = %300
  %308 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %309 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %310 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %309, i32 0, i32 12
  %311 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %310, i32 0, i32 0
  %312 = load i64, i64* @TCA_FLOWER_KEY_UDP_SRC, align 8
  %313 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %314 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %313, i32 0, i32 12
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 0
  %316 = load i32, i32* @TCA_FLOWER_KEY_UDP_SRC_MASK, align 4
  %317 = call i32 @fl_set_key_val(%struct.nlattr** %308, i64* %311, i64 %312, i64* %315, i32 %316, i32 8)
  %318 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %319 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %320 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %319, i32 0, i32 12
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 1
  %322 = load i64, i64* @TCA_FLOWER_KEY_UDP_DST, align 8
  %323 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %324 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %323, i32 0, i32 12
  %325 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %324, i32 0, i32 1
  %326 = load i32, i32* @TCA_FLOWER_KEY_UDP_DST_MASK, align 4
  %327 = call i32 @fl_set_key_val(%struct.nlattr** %318, i64* %321, i64 %322, i64* %325, i32 %326, i32 8)
  br label %532

328:                                              ; preds = %300
  %329 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %330 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %329, i32 0, i32 8
  %331 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @IPPROTO_SCTP, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %356

335:                                              ; preds = %328
  %336 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %337 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %338 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %337, i32 0, i32 12
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i32 0, i32 0
  %340 = load i64, i64* @TCA_FLOWER_KEY_SCTP_SRC, align 8
  %341 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %342 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %341, i32 0, i32 12
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %342, i32 0, i32 0
  %344 = load i32, i32* @TCA_FLOWER_KEY_SCTP_SRC_MASK, align 4
  %345 = call i32 @fl_set_key_val(%struct.nlattr** %336, i64* %339, i64 %340, i64* %343, i32 %344, i32 8)
  %346 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %347 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %348 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %347, i32 0, i32 12
  %349 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %348, i32 0, i32 1
  %350 = load i64, i64* @TCA_FLOWER_KEY_SCTP_DST, align 8
  %351 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %352 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %351, i32 0, i32 12
  %353 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %352, i32 0, i32 1
  %354 = load i32, i32* @TCA_FLOWER_KEY_SCTP_DST_MASK, align 4
  %355 = call i32 @fl_set_key_val(%struct.nlattr** %346, i64* %349, i64 %350, i64* %353, i32 %354, i32 8)
  br label %531

356:                                              ; preds = %328
  %357 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %358 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %357, i32 0, i32 8
  %359 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i32, i32* @ETH_P_IP, align 4
  %362 = call i64 @htons(i32 %361)
  %363 = icmp eq i64 %360, %362
  br i1 %363, label %364, label %392

364:                                              ; preds = %356
  %365 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %366 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %365, i32 0, i32 8
  %367 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @IPPROTO_ICMP, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %392

371:                                              ; preds = %364
  %372 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %373 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %374 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %373, i32 0, i32 11
  %375 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %374, i32 0, i32 0
  %376 = load i64, i64* @TCA_FLOWER_KEY_ICMPV4_TYPE, align 8
  %377 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %378 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %377, i32 0, i32 11
  %379 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %378, i32 0, i32 0
  %380 = load i32, i32* @TCA_FLOWER_KEY_ICMPV4_TYPE_MASK, align 4
  %381 = call i32 @fl_set_key_val(%struct.nlattr** %372, i64* %375, i64 %376, i64* %379, i32 %380, i32 8)
  %382 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %383 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %384 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %383, i32 0, i32 11
  %385 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %384, i32 0, i32 1
  %386 = load i64, i64* @TCA_FLOWER_KEY_ICMPV4_CODE, align 8
  %387 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %388 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %387, i32 0, i32 11
  %389 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %388, i32 0, i32 1
  %390 = load i32, i32* @TCA_FLOWER_KEY_ICMPV4_CODE_MASK, align 4
  %391 = call i32 @fl_set_key_val(%struct.nlattr** %382, i64* %385, i64 %386, i64* %389, i32 %390, i32 8)
  br label %530

392:                                              ; preds = %364, %356
  %393 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %394 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %393, i32 0, i32 8
  %395 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = load i32, i32* @ETH_P_IPV6, align 4
  %398 = call i64 @htons(i32 %397)
  %399 = icmp eq i64 %396, %398
  br i1 %399, label %400, label %428

400:                                              ; preds = %392
  %401 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %402 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %401, i32 0, i32 8
  %403 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %428

407:                                              ; preds = %400
  %408 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %409 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %410 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %409, i32 0, i32 11
  %411 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %410, i32 0, i32 0
  %412 = load i64, i64* @TCA_FLOWER_KEY_ICMPV6_TYPE, align 8
  %413 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %414 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %413, i32 0, i32 11
  %415 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %414, i32 0, i32 0
  %416 = load i32, i32* @TCA_FLOWER_KEY_ICMPV6_TYPE_MASK, align 4
  %417 = call i32 @fl_set_key_val(%struct.nlattr** %408, i64* %411, i64 %412, i64* %415, i32 %416, i32 8)
  %418 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %419 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %420 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %419, i32 0, i32 11
  %421 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %420, i32 0, i32 1
  %422 = load i64, i64* @TCA_FLOWER_KEY_ICMPV6_CODE, align 8
  %423 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %424 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %423, i32 0, i32 11
  %425 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %424, i32 0, i32 1
  %426 = load i32, i32* @TCA_FLOWER_KEY_ICMPV6_CODE_MASK, align 4
  %427 = call i32 @fl_set_key_val(%struct.nlattr** %418, i64* %421, i64 %422, i64* %425, i32 %426, i32 8)
  br label %529

428:                                              ; preds = %400, %392
  %429 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %430 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %429, i32 0, i32 8
  %431 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = load i32, i32* @ETH_P_MPLS_UC, align 4
  %434 = call i64 @htons(i32 %433)
  %435 = icmp eq i64 %432, %434
  br i1 %435, label %444, label %436

436:                                              ; preds = %428
  %437 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %438 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %437, i32 0, i32 8
  %439 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = load i32, i32* @ETH_P_MPLS_MC, align 4
  %442 = call i64 @htons(i32 %441)
  %443 = icmp eq i64 %440, %442
  br i1 %443, label %444, label %456

444:                                              ; preds = %436, %428
  %445 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %446 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %447 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %446, i32 0, i32 10
  %448 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %449 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %448, i32 0, i32 10
  %450 = call i32 @fl_set_key_mpls(%struct.nlattr** %445, i32* %447, i32* %449)
  store i32 %450, i32* %13, align 4
  %451 = load i32, i32* %13, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %455

453:                                              ; preds = %444
  %454 = load i32, i32* %13, align 4
  store i32 %454, i32* %6, align 4
  br label %726

455:                                              ; preds = %444
  br label %528

456:                                              ; preds = %436
  %457 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %458 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %457, i32 0, i32 8
  %459 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = load i32, i32* @ETH_P_ARP, align 4
  %462 = call i64 @htons(i32 %461)
  %463 = icmp eq i64 %460, %462
  br i1 %463, label %472, label %464

464:                                              ; preds = %456
  %465 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %466 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %465, i32 0, i32 8
  %467 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load i32, i32* @ETH_P_RARP, align 4
  %470 = call i64 @htons(i32 %469)
  %471 = icmp eq i64 %468, %470
  br i1 %471, label %472, label %527

472:                                              ; preds = %464, %456
  %473 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %474 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %475 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %474, i32 0, i32 9
  %476 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %475, i32 0, i32 0
  %477 = load i64, i64* @TCA_FLOWER_KEY_ARP_SIP, align 8
  %478 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %479 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %478, i32 0, i32 9
  %480 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %479, i32 0, i32 0
  %481 = load i32, i32* @TCA_FLOWER_KEY_ARP_SIP_MASK, align 4
  %482 = call i32 @fl_set_key_val(%struct.nlattr** %473, i64* %476, i64 %477, i64* %480, i32 %481, i32 8)
  %483 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %484 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %485 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %484, i32 0, i32 9
  %486 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %485, i32 0, i32 1
  %487 = load i64, i64* @TCA_FLOWER_KEY_ARP_TIP, align 8
  %488 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %489 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %488, i32 0, i32 9
  %490 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %489, i32 0, i32 1
  %491 = load i32, i32* @TCA_FLOWER_KEY_ARP_TIP_MASK, align 4
  %492 = call i32 @fl_set_key_val(%struct.nlattr** %483, i64* %486, i64 %487, i64* %490, i32 %491, i32 8)
  %493 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %494 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %495 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %494, i32 0, i32 9
  %496 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %495, i32 0, i32 2
  %497 = load i64, i64* @TCA_FLOWER_KEY_ARP_OP, align 8
  %498 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %499 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %498, i32 0, i32 9
  %500 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %499, i32 0, i32 2
  %501 = load i32, i32* @TCA_FLOWER_KEY_ARP_OP_MASK, align 4
  %502 = call i32 @fl_set_key_val(%struct.nlattr** %493, i64* %496, i64 %497, i64* %500, i32 %501, i32 8)
  %503 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %504 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %505 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %504, i32 0, i32 9
  %506 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %505, i32 0, i32 3
  %507 = load i64*, i64** %506, align 8
  %508 = load i64, i64* @TCA_FLOWER_KEY_ARP_SHA, align 8
  %509 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %510 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %509, i32 0, i32 9
  %511 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %510, i32 0, i32 3
  %512 = load i64*, i64** %511, align 8
  %513 = load i32, i32* @TCA_FLOWER_KEY_ARP_SHA_MASK, align 4
  %514 = call i32 @fl_set_key_val(%struct.nlattr** %503, i64* %507, i64 %508, i64* %512, i32 %513, i32 8)
  %515 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %516 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %517 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %516, i32 0, i32 9
  %518 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %517, i32 0, i32 4
  %519 = load i64*, i64** %518, align 8
  %520 = load i64, i64* @TCA_FLOWER_KEY_ARP_THA, align 8
  %521 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %522 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %521, i32 0, i32 9
  %523 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %522, i32 0, i32 4
  %524 = load i64*, i64** %523, align 8
  %525 = load i32, i32* @TCA_FLOWER_KEY_ARP_THA_MASK, align 4
  %526 = call i32 @fl_set_key_val(%struct.nlattr** %515, i64* %519, i64 %520, i64* %524, i32 %525, i32 8)
  br label %527

527:                                              ; preds = %472, %464
  br label %528

528:                                              ; preds = %527, %455
  br label %529

529:                                              ; preds = %528, %407
  br label %530

530:                                              ; preds = %529, %371
  br label %531

531:                                              ; preds = %530, %335
  br label %532

532:                                              ; preds = %531, %307
  br label %533

533:                                              ; preds = %532, %269
  %534 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %535 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %534, i32 0, i32 8
  %536 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %535, i32 0, i32 1
  %537 = load i64, i64* %536, align 8
  %538 = load i64, i64* @IPPROTO_TCP, align 8
  %539 = icmp eq i64 %537, %538
  br i1 %539, label %554, label %540

540:                                              ; preds = %533
  %541 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %542 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %541, i32 0, i32 8
  %543 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %542, i32 0, i32 1
  %544 = load i64, i64* %543, align 8
  %545 = load i64, i64* @IPPROTO_UDP, align 8
  %546 = icmp eq i64 %544, %545
  br i1 %546, label %554, label %547

547:                                              ; preds = %540
  %548 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %549 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %548, i32 0, i32 8
  %550 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %549, i32 0, i32 1
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* @IPPROTO_SCTP, align 8
  %553 = icmp eq i64 %551, %552
  br i1 %553, label %554, label %564

554:                                              ; preds = %547, %540, %533
  %555 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %556 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %557 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %558 = call i32 @fl_set_key_port_range(%struct.nlattr** %555, %struct.fl_flow_key* %556, %struct.fl_flow_key* %557)
  store i32 %558, i32* %13, align 4
  %559 = load i32, i32* %13, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %563

561:                                              ; preds = %554
  %562 = load i32, i32* %13, align 4
  store i32 %562, i32* %6, align 4
  br label %726

563:                                              ; preds = %554
  br label %564

564:                                              ; preds = %563, %547
  %565 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %566 = load i64, i64* @TCA_FLOWER_KEY_ENC_IPV4_SRC, align 8
  %567 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %565, i64 %566
  %568 = load %struct.nlattr*, %struct.nlattr** %567, align 8
  %569 = icmp ne %struct.nlattr* %568, null
  br i1 %569, label %576, label %570

570:                                              ; preds = %564
  %571 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %572 = load i64, i64* @TCA_FLOWER_KEY_ENC_IPV4_DST, align 8
  %573 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %571, i64 %572
  %574 = load %struct.nlattr*, %struct.nlattr** %573, align 8
  %575 = icmp ne %struct.nlattr* %574, null
  br i1 %575, label %576, label %604

576:                                              ; preds = %570, %564
  %577 = load i8*, i8** @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 8
  %578 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %579 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %578, i32 0, i32 6
  %580 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %579, i32 0, i32 0
  store i8* %577, i8** %580, align 8
  %581 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %582 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %581, i32 0, i32 6
  %583 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %582, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %583, align 8
  %584 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %585 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %586 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %585, i32 0, i32 7
  %587 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %586, i32 0, i32 0
  %588 = load i64, i64* @TCA_FLOWER_KEY_ENC_IPV4_SRC, align 8
  %589 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %590 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %589, i32 0, i32 7
  %591 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %590, i32 0, i32 0
  %592 = load i32, i32* @TCA_FLOWER_KEY_ENC_IPV4_SRC_MASK, align 4
  %593 = call i32 @fl_set_key_val(%struct.nlattr** %584, i64* %587, i64 %588, i64* %591, i32 %592, i32 8)
  %594 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %595 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %596 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %595, i32 0, i32 7
  %597 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %596, i32 0, i32 1
  %598 = load i64, i64* @TCA_FLOWER_KEY_ENC_IPV4_DST, align 8
  %599 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %600 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %599, i32 0, i32 7
  %601 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %600, i32 0, i32 1
  %602 = load i32, i32* @TCA_FLOWER_KEY_ENC_IPV4_DST_MASK, align 4
  %603 = call i32 @fl_set_key_val(%struct.nlattr** %594, i64* %597, i64 %598, i64* %601, i32 %602, i32 8)
  br label %604

604:                                              ; preds = %576, %570
  %605 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %606 = load i64, i64* @TCA_FLOWER_KEY_ENC_IPV6_SRC, align 8
  %607 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %605, i64 %606
  %608 = load %struct.nlattr*, %struct.nlattr** %607, align 8
  %609 = icmp ne %struct.nlattr* %608, null
  br i1 %609, label %616, label %610

610:                                              ; preds = %604
  %611 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %612 = load i64, i64* @TCA_FLOWER_KEY_ENC_IPV6_DST, align 8
  %613 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %611, i64 %612
  %614 = load %struct.nlattr*, %struct.nlattr** %613, align 8
  %615 = icmp ne %struct.nlattr* %614, null
  br i1 %615, label %616, label %644

616:                                              ; preds = %610, %604
  %617 = load i8*, i8** @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 8
  %618 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %619 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %618, i32 0, i32 6
  %620 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %619, i32 0, i32 0
  store i8* %617, i8** %620, align 8
  %621 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %622 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %621, i32 0, i32 6
  %623 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %622, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %623, align 8
  %624 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %625 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %626 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %625, i32 0, i32 5
  %627 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %626, i32 0, i32 0
  %628 = load i64, i64* @TCA_FLOWER_KEY_ENC_IPV6_SRC, align 8
  %629 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %630 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %629, i32 0, i32 5
  %631 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %630, i32 0, i32 0
  %632 = load i32, i32* @TCA_FLOWER_KEY_ENC_IPV6_SRC_MASK, align 4
  %633 = call i32 @fl_set_key_val(%struct.nlattr** %624, i64* %627, i64 %628, i64* %631, i32 %632, i32 8)
  %634 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %635 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %636 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %635, i32 0, i32 5
  %637 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %636, i32 0, i32 1
  %638 = load i64, i64* @TCA_FLOWER_KEY_ENC_IPV6_DST, align 8
  %639 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %640 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %639, i32 0, i32 5
  %641 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %640, i32 0, i32 1
  %642 = load i32, i32* @TCA_FLOWER_KEY_ENC_IPV6_DST_MASK, align 4
  %643 = call i32 @fl_set_key_val(%struct.nlattr** %634, i64* %637, i64 %638, i64* %641, i32 %642, i32 8)
  br label %644

644:                                              ; preds = %616, %610
  %645 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %646 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %647 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %646, i32 0, i32 4
  %648 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %647, i32 0, i32 0
  %649 = load i64, i64* @TCA_FLOWER_KEY_ENC_KEY_ID, align 8
  %650 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %651 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %650, i32 0, i32 4
  %652 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %651, i32 0, i32 0
  %653 = load i32, i32* @TCA_FLOWER_UNSPEC, align 4
  %654 = call i32 @fl_set_key_val(%struct.nlattr** %645, i64* %648, i64 %649, i64* %652, i32 %653, i32 8)
  %655 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %656 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %657 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %656, i32 0, i32 3
  %658 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %657, i32 0, i32 0
  %659 = load i64, i64* @TCA_FLOWER_KEY_ENC_UDP_SRC_PORT, align 8
  %660 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %661 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %660, i32 0, i32 3
  %662 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %661, i32 0, i32 0
  %663 = load i32, i32* @TCA_FLOWER_KEY_ENC_UDP_SRC_PORT_MASK, align 4
  %664 = call i32 @fl_set_key_val(%struct.nlattr** %655, i64* %658, i64 %659, i64* %662, i32 %663, i32 8)
  %665 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %666 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %667 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %666, i32 0, i32 3
  %668 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %667, i32 0, i32 1
  %669 = load i64, i64* @TCA_FLOWER_KEY_ENC_UDP_DST_PORT, align 8
  %670 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %671 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %670, i32 0, i32 3
  %672 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %671, i32 0, i32 1
  %673 = load i32, i32* @TCA_FLOWER_KEY_ENC_UDP_DST_PORT_MASK, align 4
  %674 = call i32 @fl_set_key_val(%struct.nlattr** %665, i64* %668, i64 %669, i64* %672, i32 %673, i32 8)
  %675 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %676 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %677 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %676, i32 0, i32 2
  %678 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %679 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %678, i32 0, i32 2
  %680 = call i32 @fl_set_key_ip(%struct.nlattr** %675, i32 1, i32* %677, i32* %679)
  %681 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %682 = load i64, i64* @TCA_FLOWER_KEY_ENC_OPTS, align 8
  %683 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %681, i64 %682
  %684 = load %struct.nlattr*, %struct.nlattr** %683, align 8
  %685 = icmp ne %struct.nlattr* %684, null
  br i1 %685, label %686, label %697

686:                                              ; preds = %644
  %687 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %688 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %689 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %690 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %691 = call i32 @fl_set_enc_opt(%struct.nlattr** %687, %struct.fl_flow_key* %688, %struct.fl_flow_key* %689, %struct.netlink_ext_ack* %690)
  store i32 %691, i32* %13, align 4
  %692 = load i32, i32* %13, align 4
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %694, label %696

694:                                              ; preds = %686
  %695 = load i32, i32* %13, align 4
  store i32 %695, i32* %6, align 4
  br label %726

696:                                              ; preds = %686
  br label %697

697:                                              ; preds = %696, %644
  %698 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %699 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %700 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %699, i32 0, i32 1
  %701 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %702 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %701, i32 0, i32 1
  %703 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %704 = call i32 @fl_set_key_ct(%struct.nlattr** %698, i32* %700, i32* %702, %struct.netlink_ext_ack* %703)
  store i32 %704, i32* %13, align 4
  %705 = load i32, i32* %13, align 4
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %709

707:                                              ; preds = %697
  %708 = load i32, i32* %13, align 4
  store i32 %708, i32* %6, align 4
  br label %726

709:                                              ; preds = %697
  %710 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %711 = load i64, i64* @TCA_FLOWER_KEY_FLAGS, align 8
  %712 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %710, i64 %711
  %713 = load %struct.nlattr*, %struct.nlattr** %712, align 8
  %714 = icmp ne %struct.nlattr* %713, null
  br i1 %714, label %715, label %724

715:                                              ; preds = %709
  %716 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %717 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %718 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %717, i32 0, i32 0
  %719 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %718, i32 0, i32 0
  %720 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %721 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %720, i32 0, i32 0
  %722 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %721, i32 0, i32 0
  %723 = call i32 @fl_set_key_flags(%struct.nlattr** %716, i32* %719, i32* %722)
  store i32 %723, i32* %13, align 4
  br label %724

724:                                              ; preds = %715, %709
  %725 = load i32, i32* %13, align 4
  store i32 %725, i32* %6, align 4
  br label %726

726:                                              ; preds = %724, %707, %694, %561, %453, %30
  %727 = load i32, i32* %6, align 4
  ret i32 %727
}

declare dso_local i32 @tcf_change_indev(%struct.net*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @fl_set_key_val(%struct.nlattr**, i64*, i64, i64*, i32, i32) #1

declare dso_local i8* @nla_get_be16(%struct.nlattr*) #1

declare dso_local i64 @eth_type_vlan(i8*) #1

declare dso_local i32 @fl_set_key_vlan(%struct.nlattr**, i8*, i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @fl_set_key_ip(%struct.nlattr**, i32, i32*, i32*) #1

declare dso_local i32 @fl_set_key_mpls(%struct.nlattr**, i32*, i32*) #1

declare dso_local i32 @fl_set_key_port_range(%struct.nlattr**, %struct.fl_flow_key*, %struct.fl_flow_key*) #1

declare dso_local i32 @fl_set_enc_opt(%struct.nlattr**, %struct.fl_flow_key*, %struct.fl_flow_key*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @fl_set_key_ct(%struct.nlattr**, i32*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @fl_set_key_flags(%struct.nlattr**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
