; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_init_dissector.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_init_dissector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_dissector = type { i32 }
%struct.fl_flow_key = type { i32 }
%struct.flow_dissector_key = type { i32 }

@FLOW_DISSECTOR_KEY_MAX = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_META = common dso_local global i32 0, align 4
@meta = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i32 0, align 4
@control = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i32 0, align 4
@basic = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ETH_ADDRS = common dso_local global i32 0, align 4
@eth = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i32 0, align 4
@ipv4 = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i32 0, align 4
@ipv6 = common dso_local global i32 0, align 4
@tp = common dso_local global i32 0, align 4
@tp_min = common dso_local global i32 0, align 4
@tp_max = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IP = common dso_local global i32 0, align 4
@ip = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_TCP = common dso_local global i32 0, align 4
@tcp = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ICMP = common dso_local global i32 0, align 4
@icmp = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ARP = common dso_local global i32 0, align 4
@arp = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_MPLS = common dso_local global i32 0, align 4
@mpls = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_VLAN = common dso_local global i32 0, align 4
@vlan = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_CVLAN = common dso_local global i32 0, align 4
@cvlan = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_KEYID = common dso_local global i32 0, align 4
@enc_key_id = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS = common dso_local global i32 0, align 4
@enc_ipv4 = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS = common dso_local global i32 0, align 4
@enc_ipv6 = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_CONTROL = common dso_local global i32 0, align 4
@enc_control = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_PORTS = common dso_local global i32 0, align 4
@enc_tp = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_IP = common dso_local global i32 0, align 4
@enc_ip = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_OPTS = common dso_local global i32 0, align 4
@enc_opts = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_CT = common dso_local global i32 0, align 4
@ct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_dissector*, %struct.fl_flow_key*)* @fl_init_dissector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_init_dissector(%struct.flow_dissector* %0, %struct.fl_flow_key* %1) #0 {
  %3 = alloca %struct.flow_dissector*, align 8
  %4 = alloca %struct.fl_flow_key*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.flow_dissector* %0, %struct.flow_dissector** %3, align 8
  store %struct.fl_flow_key* %1, %struct.fl_flow_key** %4, align 8
  %8 = load i32, i32* @FLOW_DISSECTOR_KEY_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca %struct.flow_dissector_key, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* @FLOW_DISSECTOR_KEY_META, align 4
  %15 = load i32, i32* @meta, align 4
  %16 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %12, %struct.flow_dissector_key* %11, i64 %13, i32 %14, i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* @FLOW_DISSECTOR_KEY_CONTROL, align 4
  %19 = load i32, i32* @control, align 4
  %20 = call i32 @FL_KEY_SET(%struct.flow_dissector_key* %11, i64 %17, i32 %18, i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %23 = load i32, i32* @basic, align 4
  %24 = call i32 @FL_KEY_SET(%struct.flow_dissector_key* %11, i64 %21, i32 %22, i32 %23)
  %25 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @FLOW_DISSECTOR_KEY_ETH_ADDRS, align 4
  %28 = load i32, i32* @eth, align 4
  %29 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %25, %struct.flow_dissector_key* %11, i64 %26, i32 %27, i32 %28)
  %30 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 4
  %33 = load i32, i32* @ipv4, align 4
  %34 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %30, %struct.flow_dissector_key* %11, i64 %31, i32 %32, i32 %33)
  %35 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 4
  %38 = load i32, i32* @ipv6, align 4
  %39 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %35, %struct.flow_dissector_key* %11, i64 %36, i32 %37, i32 %38)
  %40 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %41 = load i32, i32* @tp, align 4
  %42 = call i64 @FL_KEY_IS_MASKED(%struct.fl_flow_key* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %2
  %45 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %46 = load i32, i32* @tp_min, align 4
  %47 = call i64 @FL_KEY_IS_MASKED(%struct.fl_flow_key* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %51 = load i32, i32* @tp_max, align 4
  %52 = call i64 @FL_KEY_IS_MASKED(%struct.fl_flow_key* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49, %44, %2
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* @FLOW_DISSECTOR_KEY_PORTS, align 4
  %57 = load i32, i32* @tp, align 4
  %58 = call i32 @FL_KEY_SET(%struct.flow_dissector_key* %11, i64 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* @FLOW_DISSECTOR_KEY_IP, align 4
  %63 = load i32, i32* @ip, align 4
  %64 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %60, %struct.flow_dissector_key* %11, i64 %61, i32 %62, i32 %63)
  %65 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* @FLOW_DISSECTOR_KEY_TCP, align 4
  %68 = load i32, i32* @tcp, align 4
  %69 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %65, %struct.flow_dissector_key* %11, i64 %66, i32 %67, i32 %68)
  %70 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* @FLOW_DISSECTOR_KEY_ICMP, align 4
  %73 = load i32, i32* @icmp, align 4
  %74 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %70, %struct.flow_dissector_key* %11, i64 %71, i32 %72, i32 %73)
  %75 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* @FLOW_DISSECTOR_KEY_ARP, align 4
  %78 = load i32, i32* @arp, align 4
  %79 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %75, %struct.flow_dissector_key* %11, i64 %76, i32 %77, i32 %78)
  %80 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* @FLOW_DISSECTOR_KEY_MPLS, align 4
  %83 = load i32, i32* @mpls, align 4
  %84 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %80, %struct.flow_dissector_key* %11, i64 %81, i32 %82, i32 %83)
  %85 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* @FLOW_DISSECTOR_KEY_VLAN, align 4
  %88 = load i32, i32* @vlan, align 4
  %89 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %85, %struct.flow_dissector_key* %11, i64 %86, i32 %87, i32 %88)
  %90 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i32, i32* @FLOW_DISSECTOR_KEY_CVLAN, align 4
  %93 = load i32, i32* @cvlan, align 4
  %94 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %90, %struct.flow_dissector_key* %11, i64 %91, i32 %92, i32 %93)
  %95 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 4
  %98 = load i32, i32* @enc_key_id, align 4
  %99 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %95, %struct.flow_dissector_key* %11, i64 %96, i32 %97, i32 %98)
  %100 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS, align 4
  %103 = load i32, i32* @enc_ipv4, align 4
  %104 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %100, %struct.flow_dissector_key* %11, i64 %101, i32 %102, i32 %103)
  %105 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS, align 4
  %108 = load i32, i32* @enc_ipv6, align 4
  %109 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %105, %struct.flow_dissector_key* %11, i64 %106, i32 %107, i32 %108)
  %110 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %111 = load i32, i32* @enc_ipv4, align 4
  %112 = call i64 @FL_KEY_IS_MASKED(%struct.fl_flow_key* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %59
  %115 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %116 = load i32, i32* @enc_ipv6, align 4
  %117 = call i64 @FL_KEY_IS_MASKED(%struct.fl_flow_key* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114, %59
  %120 = load i64, i64* %7, align 8
  %121 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_CONTROL, align 4
  %122 = load i32, i32* @enc_control, align 4
  %123 = call i32 @FL_KEY_SET(%struct.flow_dissector_key* %11, i64 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_PORTS, align 4
  %128 = load i32, i32* @enc_tp, align 4
  %129 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %125, %struct.flow_dissector_key* %11, i64 %126, i32 %127, i32 %128)
  %130 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IP, align 4
  %133 = load i32, i32* @enc_ip, align 4
  %134 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %130, %struct.flow_dissector_key* %11, i64 %131, i32 %132, i32 %133)
  %135 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %136 = load i64, i64* %7, align 8
  %137 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_OPTS, align 4
  %138 = load i32, i32* @enc_opts, align 4
  %139 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %135, %struct.flow_dissector_key* %11, i64 %136, i32 %137, i32 %138)
  %140 = load %struct.fl_flow_key*, %struct.fl_flow_key** %4, align 8
  %141 = load i64, i64* %7, align 8
  %142 = load i32, i32* @FLOW_DISSECTOR_KEY_CT, align 4
  %143 = load i32, i32* @ct, align 4
  %144 = call i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key* %140, %struct.flow_dissector_key* %11, i64 %141, i32 %142, i32 %143)
  %145 = load %struct.flow_dissector*, %struct.flow_dissector** %3, align 8
  %146 = load i64, i64* %7, align 8
  %147 = call i32 @skb_flow_dissector_init(%struct.flow_dissector* %145, %struct.flow_dissector_key* %11, i64 %146)
  %148 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %148)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FL_KEY_SET_IF_MASKED(%struct.fl_flow_key*, %struct.flow_dissector_key*, i64, i32, i32) #2

declare dso_local i32 @FL_KEY_SET(%struct.flow_dissector_key*, i64, i32, i32) #2

declare dso_local i64 @FL_KEY_IS_MASKED(%struct.fl_flow_key*, i32) #2

declare dso_local i32 @skb_flow_dissector_init(%struct.flow_dissector*, %struct.flow_dissector_key*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
