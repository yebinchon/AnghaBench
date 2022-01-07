; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_link_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { i32, i32, i32, %struct.__ip6_tnl_parm, i32, %struct.TYPE_6__, %struct.net_device* }
%struct.__ip6_tnl_parm = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.flowi6 }
%struct.flowi6 = type { i32, i32, i32, i32 }
%struct.net_device = type { i64, i64, i32, i32, i32 }
%struct.rt6_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

@IP6_TNL_F_USE_ORIG_TCLASS = common dso_local global i32 0, align 4
@IPV6_TCLASS_MASK = common dso_local global i32 0, align 4
@IP6_TNL_F_USE_ORIG_FLOWLABEL = common dso_local global i32 0, align 4
@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@IP6_TNL_F_CAP_XMIT = common dso_local global i32 0, align 4
@IP6_TNL_F_CAP_RCV = common dso_local global i32 0, align 4
@IP6_TNL_F_CAP_PER_PACKET = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@IP6_TNL_F_IGN_ENCAP_LIMIT = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_tnl*)* @ip6_tnl_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_tnl_link_config(%struct.ip6_tnl* %0) #0 {
  %2 = alloca %struct.ip6_tnl*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.__ip6_tnl_parm*, align 8
  %5 = alloca %struct.flowi6*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt6_info*, align 8
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %2, align 8
  %9 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %10 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %9, i32 0, i32 6
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %3, align 8
  %12 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %13 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %12, i32 0, i32 3
  store %struct.__ip6_tnl_parm* %13, %struct.__ip6_tnl_parm** %4, align 8
  %14 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %15 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.flowi6* %17, %struct.flowi6** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %22 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %21, i32 0, i32 3
  %23 = call i32 @memcpy(i32 %20, i32* %22, i32 4)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %28 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %27, i32 0, i32 4
  %29 = call i32 @memcpy(i32 %26, i32* %28, i32 4)
  %30 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %31 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %34 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %36 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %39 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %41 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %44 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %46 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %48 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IP6_TNL_F_USE_ORIG_TCLASS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %1
  %54 = load i32, i32* @IPV6_TCLASS_MASK, align 4
  %55 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %56 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %54, %57
  %59 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %60 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %53, %1
  %64 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %65 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IP6_TNL_F_USE_ORIG_FLOWLABEL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %72 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %73 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %71, %74
  %76 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %77 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %70, %63
  %81 = load i32, i32* @IP6_TNL_F_CAP_XMIT, align 4
  %82 = load i32, i32* @IP6_TNL_F_CAP_RCV, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @IP6_TNL_F_CAP_PER_PACKET, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %88 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %92 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %93 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %92, i32 0, i32 3
  %94 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %95 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %94, i32 0, i32 4
  %96 = call i32 @ip6_tnl_get_cap(%struct.ip6_tnl* %91, i32* %93, i32* %95)
  %97 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %98 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %102 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IP6_TNL_F_CAP_XMIT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %80
  %108 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %109 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IP6_TNL_F_CAP_RCV, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load i32, i32* @IFF_POINTOPOINT, align 4
  %116 = load %struct.net_device*, %struct.net_device** %3, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %127

120:                                              ; preds = %107, %80
  %121 = load i32, i32* @IFF_POINTOPOINT, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %120, %114
  %128 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %129 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %131 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %134 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %132, %135
  %137 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %138 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %140 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 %142, 4
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %6, align 4
  %145 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %146 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IP6_TNL_F_CAP_XMIT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %229

151:                                              ; preds = %127
  %152 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %153 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %152, i32 0, i32 4
  %154 = call i32 @ipv6_addr_type(i32* %153)
  %155 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %156 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  store i32 %158, i32* %7, align 4
  %159 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %160 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %163 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %162, i32 0, i32 4
  %164 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %165 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %164, i32 0, i32 3
  %166 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %4, align 8
  %167 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call %struct.rt6_info* @rt6_lookup(i32 %161, i32* %163, i32* %165, i32 %168, i32* null, i32 %169)
  store %struct.rt6_info* %170, %struct.rt6_info** %8, align 8
  %171 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %172 = icmp ne %struct.rt6_info* %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %151
  br label %229

174:                                              ; preds = %151
  %175 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %176 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = icmp ne %struct.TYPE_7__* %178, null
  br i1 %179, label %180, label %226

180:                                              ; preds = %174
  %181 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %182 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %186, %188
  %190 = load %struct.net_device*, %struct.net_device** %3, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %193 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = sub nsw i64 %197, %199
  %201 = load %struct.net_device*, %struct.net_device** %3, align 8
  %202 = getelementptr inbounds %struct.net_device, %struct.net_device* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  %203 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %204 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @IP6_TNL_F_IGN_ENCAP_LIMIT, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %180
  %211 = load %struct.net_device*, %struct.net_device** %3, align 8
  %212 = getelementptr inbounds %struct.net_device, %struct.net_device* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = sub nsw i64 %213, 8
  store i64 %214, i64* %212, align 8
  br label %215

215:                                              ; preds = %210, %180
  %216 = load %struct.net_device*, %struct.net_device** %3, align 8
  %217 = getelementptr inbounds %struct.net_device, %struct.net_device* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @IPV6_MIN_MTU, align 8
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %215
  %222 = load i64, i64* @IPV6_MIN_MTU, align 8
  %223 = load %struct.net_device*, %struct.net_device** %3, align 8
  %224 = getelementptr inbounds %struct.net_device, %struct.net_device* %223, i32 0, i32 0
  store i64 %222, i64* %224, align 8
  br label %225

225:                                              ; preds = %221, %215
  br label %226

226:                                              ; preds = %225, %174
  %227 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %228 = call i32 @ip6_rt_put(%struct.rt6_info* %227)
  br label %229

229:                                              ; preds = %173, %226, %127
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ip6_tnl_get_cap(%struct.ip6_tnl*, i32*, i32*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.rt6_info* @rt6_lookup(i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ip6_rt_put(%struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
