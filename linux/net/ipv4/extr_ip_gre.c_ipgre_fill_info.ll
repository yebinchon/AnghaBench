; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ip_tunnel = type { i32, i32, i32, i64, %struct.TYPE_4__, i32, i32, i32, %struct.ip_tunnel_parm }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ip_tunnel_parm = type { %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@TUNNEL_KEY = common dso_local global i32 0, align 4
@IFLA_GRE_ERSPAN_VER = common dso_local global i32 0, align 4
@IFLA_GRE_ERSPAN_INDEX = common dso_local global i32 0, align 4
@IFLA_GRE_ERSPAN_DIR = common dso_local global i32 0, align 4
@IFLA_GRE_ERSPAN_HWID = common dso_local global i32 0, align 4
@IFLA_GRE_LINK = common dso_local global i32 0, align 4
@IFLA_GRE_IFLAGS = common dso_local global i32 0, align 4
@IFLA_GRE_OFLAGS = common dso_local global i32 0, align 4
@IFLA_GRE_IKEY = common dso_local global i32 0, align 4
@IFLA_GRE_OKEY = common dso_local global i32 0, align 4
@IFLA_GRE_LOCAL = common dso_local global i32 0, align 4
@IFLA_GRE_REMOTE = common dso_local global i32 0, align 4
@IFLA_GRE_TTL = common dso_local global i32 0, align 4
@IFLA_GRE_TOS = common dso_local global i32 0, align 4
@IFLA_GRE_PMTUDISC = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@IFLA_GRE_FWMARK = common dso_local global i32 0, align 4
@IFLA_GRE_ENCAP_TYPE = common dso_local global i32 0, align 4
@IFLA_GRE_ENCAP_SPORT = common dso_local global i32 0, align 4
@IFLA_GRE_ENCAP_DPORT = common dso_local global i32 0, align 4
@IFLA_GRE_ENCAP_FLAGS = common dso_local global i32 0, align 4
@IFLA_GRE_IGNORE_DF = common dso_local global i32 0, align 4
@IFLA_GRE_COLLECT_METADATA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ipgre_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip_tunnel*, align 8
  %7 = alloca %struct.ip_tunnel_parm*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %9)
  store %struct.ip_tunnel* %10, %struct.ip_tunnel** %6, align 8
  %11 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %12 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %11, i32 0, i32 8
  store %struct.ip_tunnel_parm* %12, %struct.ip_tunnel_parm** %7, align 8
  %13 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %14 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %17 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %78

25:                                               ; preds = %20, %2
  %26 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %27 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @TUNNEL_KEY, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load i32, i32* @IFLA_GRE_ERSPAN_VER, align 4
  %37 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %38 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @nla_put_u8(%struct.sk_buff* %35, i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %238

43:                                               ; preds = %34
  %44 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %45 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load i32, i32* @IFLA_GRE_ERSPAN_INDEX, align 4
  %51 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @nla_put_u32(%struct.sk_buff* %49, i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %238

57:                                               ; preds = %48
  br label %77

58:                                               ; preds = %43
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load i32, i32* @IFLA_GRE_ERSPAN_DIR, align 4
  %61 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %62 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @nla_put_u8(%struct.sk_buff* %59, i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %238

67:                                               ; preds = %58
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* @IFLA_GRE_ERSPAN_HWID, align 4
  %70 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %71 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @nla_put_u16(%struct.sk_buff* %68, i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %238

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %57
  br label %78

78:                                               ; preds = %77, %20
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load i32, i32* @IFLA_GRE_LINK, align 4
  %81 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %82 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @nla_put_u32(%struct.sk_buff* %79, i32 %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %178, label %86

86:                                               ; preds = %78
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load i32, i32* @IFLA_GRE_IFLAGS, align 4
  %89 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %90 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @gre_tnl_flags_to_gre_flags(i32 %91)
  %93 = call i64 @nla_put_be16(%struct.sk_buff* %87, i32 %88, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %178, label %95

95:                                               ; preds = %86
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load i32, i32* @IFLA_GRE_OFLAGS, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @gre_tnl_flags_to_gre_flags(i32 %98)
  %100 = call i64 @nla_put_be16(%struct.sk_buff* %96, i32 %97, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %178, label %102

102:                                              ; preds = %95
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = load i32, i32* @IFLA_GRE_IKEY, align 4
  %105 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %106 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @nla_put_be32(%struct.sk_buff* %103, i32 %104, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %178, label %110

110:                                              ; preds = %102
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = load i32, i32* @IFLA_GRE_OKEY, align 4
  %113 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %114 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @nla_put_be32(%struct.sk_buff* %111, i32 %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %178, label %118

118:                                              ; preds = %110
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = load i32, i32* @IFLA_GRE_LOCAL, align 4
  %121 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %122 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @nla_put_in_addr(%struct.sk_buff* %119, i32 %120, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %178, label %127

127:                                              ; preds = %118
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = load i32, i32* @IFLA_GRE_REMOTE, align 4
  %130 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %131 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @nla_put_in_addr(%struct.sk_buff* %128, i32 %129, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %178, label %136

136:                                              ; preds = %127
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %138 = load i32, i32* @IFLA_GRE_TTL, align 4
  %139 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %140 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @nla_put_u8(%struct.sk_buff* %137, i32 %138, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %178, label %145

145:                                              ; preds = %136
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = load i32, i32* @IFLA_GRE_TOS, align 4
  %148 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %149 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @nla_put_u8(%struct.sk_buff* %146, i32 %147, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %178, label %154

154:                                              ; preds = %145
  %155 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %156 = load i32, i32* @IFLA_GRE_PMTUDISC, align 4
  %157 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %158 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @IP_DF, align 4
  %162 = call i32 @htons(i32 %161)
  %163 = and i32 %160, %162
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i64 @nla_put_u8(%struct.sk_buff* %155, i32 %156, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %154
  %171 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %172 = load i32, i32* @IFLA_GRE_FWMARK, align 4
  %173 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %174 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @nla_put_u32(%struct.sk_buff* %171, i32 %172, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %170, %154, %145, %136, %127, %118, %110, %102, %95, %86, %78
  br label %238

179:                                              ; preds = %170
  %180 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %181 = load i32, i32* @IFLA_GRE_ENCAP_TYPE, align 4
  %182 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %183 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @nla_put_u16(%struct.sk_buff* %180, i32 %181, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %215, label %188

188:                                              ; preds = %179
  %189 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %190 = load i32, i32* @IFLA_GRE_ENCAP_SPORT, align 4
  %191 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %192 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @nla_put_be16(%struct.sk_buff* %189, i32 %190, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %215, label %197

197:                                              ; preds = %188
  %198 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %199 = load i32, i32* @IFLA_GRE_ENCAP_DPORT, align 4
  %200 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %201 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @nla_put_be16(%struct.sk_buff* %198, i32 %199, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %197
  %207 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %208 = load i32, i32* @IFLA_GRE_ENCAP_FLAGS, align 4
  %209 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %210 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @nla_put_u16(%struct.sk_buff* %207, i32 %208, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %206, %197, %188, %179
  br label %238

216:                                              ; preds = %206
  %217 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %218 = load i32, i32* @IFLA_GRE_IGNORE_DF, align 4
  %219 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %220 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @nla_put_u8(%struct.sk_buff* %217, i32 %218, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  br label %238

225:                                              ; preds = %216
  %226 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %227 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %232 = load i32, i32* @IFLA_GRE_COLLECT_METADATA, align 4
  %233 = call i64 @nla_put_flag(%struct.sk_buff* %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %238

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %236, %225
  store i32 0, i32* %3, align 4
  br label %241

238:                                              ; preds = %235, %224, %215, %178, %75, %66, %56, %42
  %239 = load i32, i32* @EMSGSIZE, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %238, %237
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @gre_tnl_flags_to_gre_flags(i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
