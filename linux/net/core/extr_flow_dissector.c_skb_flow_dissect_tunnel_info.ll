; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_skb_flow_dissect_tunnel_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_skb_flow_dissect_tunnel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flow_dissector = type { i32 }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, i64 }
%struct.ip_tunnel_key = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_dissector_key_ipv6_addrs = type { i32, i32 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { i32, i32 }
%struct.flow_dissector_key_ip = type { i32, i32 }
%struct.flow_dissector_key_enc_opts = type { i32, i32, i64 }

@FLOW_DISSECTOR_KEY_ENC_KEYID = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_CONTROL = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_PORTS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_IP = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_OPTS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i32 0, align 4
@TUNNEL_OPTIONS_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skb_flow_dissect_tunnel_info(%struct.sk_buff* %0, %struct.flow_dissector* %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.flow_dissector*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ip_tunnel_info*, align 8
  %8 = alloca %struct.ip_tunnel_key*, align 8
  %9 = alloca %struct.flow_dissector_key_ipv4_addrs*, align 8
  %10 = alloca %struct.flow_dissector_key_ipv6_addrs*, align 8
  %11 = alloca %struct.flow_dissector_key_keyid*, align 8
  %12 = alloca %struct.flow_dissector_key_ports*, align 8
  %13 = alloca %struct.flow_dissector_key_ip*, align 8
  %14 = alloca %struct.flow_dissector_key_enc_opts*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.flow_dissector* %1, %struct.flow_dissector** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %16 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 4
  %17 = call i64 @dissector_uses_key(%struct.flow_dissector* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %3
  %20 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %21 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS, align 4
  %22 = call i64 @dissector_uses_key(%struct.flow_dissector* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %19
  %25 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %26 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS, align 4
  %27 = call i64 @dissector_uses_key(%struct.flow_dissector* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %24
  %30 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %31 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_CONTROL, align 4
  %32 = call i64 @dissector_uses_key(%struct.flow_dissector* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %29
  %35 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %36 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_PORTS, align 4
  %37 = call i64 @dissector_uses_key(%struct.flow_dissector* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %41 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IP, align 4
  %42 = call i64 @dissector_uses_key(%struct.flow_dissector* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %46 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_OPTS, align 4
  %47 = call i64 @dissector_uses_key(%struct.flow_dissector* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %215

50:                                               ; preds = %44, %39, %34, %29, %24, %19, %3
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff* %51)
  store %struct.ip_tunnel_info* %52, %struct.ip_tunnel_info** %7, align 8
  %53 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %54 = icmp ne %struct.ip_tunnel_info* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %215

56:                                               ; preds = %50
  %57 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %58 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %57, i32 0, i32 0
  store %struct.ip_tunnel_key* %58, %struct.ip_tunnel_key** %8, align 8
  %59 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %60 = call i32 @ip_tunnel_info_af(%struct.ip_tunnel_info* %59)
  switch i32 %60, label %121 [
    i32 129, label %61
    i32 128, label %91
  ]

61:                                               ; preds = %56
  %62 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 4
  %63 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @skb_flow_dissect_set_enc_addr_type(i32 %62, %struct.flow_dissector* %63, i8* %64)
  %66 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %67 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS, align 4
  %68 = call i64 @dissector_uses_key(%struct.flow_dissector* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %61
  %71 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %72 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = call i8* @skb_flow_dissector_target(%struct.flow_dissector* %71, i32 %72, i8* %73)
  %75 = bitcast i8* %74 to %struct.flow_dissector_key_ipv4_addrs*
  store %struct.flow_dissector_key_ipv4_addrs* %75, %struct.flow_dissector_key_ipv4_addrs** %9, align 8
  %76 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %77 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.flow_dissector_key_ipv4_addrs*, %struct.flow_dissector_key_ipv4_addrs** %9, align 8
  %82 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, %struct.flow_dissector_key_ipv4_addrs* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %84 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.flow_dissector_key_ipv4_addrs*, %struct.flow_dissector_key_ipv4_addrs** %9, align 8
  %89 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, %struct.flow_dissector_key_ipv4_addrs* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %70, %61
  br label %121

91:                                               ; preds = %56
  %92 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 4
  %93 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @skb_flow_dissect_set_enc_addr_type(i32 %92, %struct.flow_dissector* %93, i8* %94)
  %96 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %97 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS, align 4
  %98 = call i64 @dissector_uses_key(%struct.flow_dissector* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %91
  %101 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %102 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = call i8* @skb_flow_dissector_target(%struct.flow_dissector* %101, i32 %102, i8* %103)
  %105 = bitcast i8* %104 to %struct.flow_dissector_key_ipv6_addrs*
  store %struct.flow_dissector_key_ipv6_addrs* %105, %struct.flow_dissector_key_ipv6_addrs** %10, align 8
  %106 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %107 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.flow_dissector_key_ipv6_addrs*, %struct.flow_dissector_key_ipv6_addrs** %10, align 8
  %112 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, %struct.flow_dissector_key_ipv6_addrs* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %114 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.flow_dissector_key_ipv6_addrs*, %struct.flow_dissector_key_ipv6_addrs** %10, align 8
  %119 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, %struct.flow_dissector_key_ipv6_addrs* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %100, %91
  br label %121

121:                                              ; preds = %56, %120, %90
  %122 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %123 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 4
  %124 = call i64 @dissector_uses_key(%struct.flow_dissector* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %121
  %127 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %128 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 4
  %129 = load i8*, i8** %6, align 8
  %130 = call i8* @skb_flow_dissector_target(%struct.flow_dissector* %127, i32 %128, i8* %129)
  %131 = bitcast i8* %130 to %struct.flow_dissector_key_keyid*
  store %struct.flow_dissector_key_keyid* %131, %struct.flow_dissector_key_keyid** %11, align 8
  %132 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %133 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @tunnel_id_to_key32(i32 %134)
  %136 = load %struct.flow_dissector_key_keyid*, %struct.flow_dissector_key_keyid** %11, align 8
  %137 = getelementptr inbounds %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_keyid* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %126, %121
  %139 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %140 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_PORTS, align 4
  %141 = call i64 @dissector_uses_key(%struct.flow_dissector* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %138
  %144 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %145 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_PORTS, align 4
  %146 = load i8*, i8** %6, align 8
  %147 = call i8* @skb_flow_dissector_target(%struct.flow_dissector* %144, i32 %145, i8* %146)
  %148 = bitcast i8* %147 to %struct.flow_dissector_key_ports*
  store %struct.flow_dissector_key_ports* %148, %struct.flow_dissector_key_ports** %12, align 8
  %149 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %150 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.flow_dissector_key_ports*, %struct.flow_dissector_key_ports** %12, align 8
  %153 = getelementptr inbounds %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ports* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %155 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.flow_dissector_key_ports*, %struct.flow_dissector_key_ports** %12, align 8
  %158 = getelementptr inbounds %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ports* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %143, %138
  %160 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %161 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IP, align 4
  %162 = call i64 @dissector_uses_key(%struct.flow_dissector* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %159
  %165 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %166 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IP, align 4
  %167 = load i8*, i8** %6, align 8
  %168 = call i8* @skb_flow_dissector_target(%struct.flow_dissector* %165, i32 %166, i8* %167)
  %169 = bitcast i8* %168 to %struct.flow_dissector_key_ip*
  store %struct.flow_dissector_key_ip* %169, %struct.flow_dissector_key_ip** %13, align 8
  %170 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %171 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip** %13, align 8
  %174 = getelementptr inbounds %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %8, align 8
  %176 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip** %13, align 8
  %179 = getelementptr inbounds %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  br label %180

180:                                              ; preds = %164, %159
  %181 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %182 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_OPTS, align 4
  %183 = call i64 @dissector_uses_key(%struct.flow_dissector* %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %215

185:                                              ; preds = %180
  %186 = load %struct.flow_dissector*, %struct.flow_dissector** %5, align 8
  %187 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_OPTS, align 4
  %188 = load i8*, i8** %6, align 8
  %189 = call i8* @skb_flow_dissector_target(%struct.flow_dissector* %186, i32 %187, i8* %188)
  %190 = bitcast i8* %189 to %struct.flow_dissector_key_enc_opts*
  store %struct.flow_dissector_key_enc_opts* %190, %struct.flow_dissector_key_enc_opts** %14, align 8
  %191 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %192 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %214

195:                                              ; preds = %185
  %196 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %197 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.flow_dissector_key_enc_opts*, %struct.flow_dissector_key_enc_opts** %14, align 8
  %200 = getelementptr inbounds %struct.flow_dissector_key_enc_opts, %struct.flow_dissector_key_enc_opts* %199, i32 0, i32 2
  store i64 %198, i64* %200, align 8
  %201 = load %struct.flow_dissector_key_enc_opts*, %struct.flow_dissector_key_enc_opts** %14, align 8
  %202 = getelementptr inbounds %struct.flow_dissector_key_enc_opts, %struct.flow_dissector_key_enc_opts* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %205 = call i32 @ip_tunnel_info_opts_get(i32 %203, %struct.ip_tunnel_info* %204)
  %206 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %207 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @TUNNEL_OPTIONS_PRESENT, align 4
  %211 = and i32 %209, %210
  %212 = load %struct.flow_dissector_key_enc_opts*, %struct.flow_dissector_key_enc_opts** %14, align 8
  %213 = getelementptr inbounds %struct.flow_dissector_key_enc_opts, %struct.flow_dissector_key_enc_opts* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %195, %185
  br label %215

215:                                              ; preds = %49, %55, %214, %180
  ret void
}

declare dso_local i64 @dissector_uses_key(%struct.flow_dissector*, i32) #1

declare dso_local %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local i32 @ip_tunnel_info_af(%struct.ip_tunnel_info*) #1

declare dso_local i32 @skb_flow_dissect_set_enc_addr_type(i32, %struct.flow_dissector*, i8*) #1

declare dso_local i8* @skb_flow_dissector_target(%struct.flow_dissector*, i32, i8*) #1

declare dso_local i32 @tunnel_id_to_key32(i32) #1

declare dso_local i32 @ip_tunnel_info_opts_get(i32, %struct.ip_tunnel_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
