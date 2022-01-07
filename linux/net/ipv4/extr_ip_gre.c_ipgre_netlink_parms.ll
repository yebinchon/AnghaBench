; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_netlink_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_netlink_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.nlattr = type { i32 }
%struct.ip_tunnel_parm = type { %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i32 }
%struct.ip_tunnel = type { i32, i32, i32, i32, i32, i32 }

@IPPROTO_GRE = common dso_local global i32 0, align 4
@IFLA_GRE_LINK = common dso_local global i64 0, align 8
@IFLA_GRE_IFLAGS = common dso_local global i64 0, align 8
@IFLA_GRE_OFLAGS = common dso_local global i64 0, align 8
@IFLA_GRE_IKEY = common dso_local global i64 0, align 8
@IFLA_GRE_OKEY = common dso_local global i64 0, align 8
@IFLA_GRE_LOCAL = common dso_local global i64 0, align 8
@IFLA_GRE_REMOTE = common dso_local global i64 0, align 8
@IFLA_GRE_TTL = common dso_local global i64 0, align 8
@IFLA_GRE_TOS = common dso_local global i64 0, align 8
@IFLA_GRE_PMTUDISC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@IFLA_GRE_COLLECT_METADATA = common dso_local global i64 0, align 8
@ARPHRD_IPGRE = common dso_local global i64 0, align 8
@ARPHRD_NONE = common dso_local global i64 0, align 8
@IFLA_GRE_IGNORE_DF = common dso_local global i64 0, align 8
@IFLA_GRE_FWMARK = common dso_local global i64 0, align 8
@IFLA_GRE_ERSPAN_VER = common dso_local global i64 0, align 8
@IFLA_GRE_ERSPAN_INDEX = common dso_local global i64 0, align 8
@INDEX_MASK = common dso_local global i32 0, align 4
@IFLA_GRE_ERSPAN_DIR = common dso_local global i64 0, align 8
@DIR_MASK = common dso_local global i32 0, align 4
@DIR_OFFSET = common dso_local global i32 0, align 4
@IFLA_GRE_ERSPAN_HWID = common dso_local global i64 0, align 8
@HWID_MASK = common dso_local global i32 0, align 4
@HWID_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.ip_tunnel_parm*, i8**)* @ipgre_netlink_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_netlink_parms(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.ip_tunnel_parm* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.ip_tunnel_parm*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.ip_tunnel*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.ip_tunnel_parm* %3, %struct.ip_tunnel_parm** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %13)
  store %struct.ip_tunnel* %14, %struct.ip_tunnel** %12, align 8
  %15 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %16 = call i32 @memset(%struct.ip_tunnel_parm* %15, i32 0, i32 88)
  %17 = load i32, i32* @IPPROTO_GRE, align 4
  %18 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  store i32 %17, i32* %20, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %22 = icmp ne %struct.nlattr** %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %375

24:                                               ; preds = %5
  %25 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %26 = load i64, i64* @IFLA_GRE_LINK, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %32 = load i64, i64* @IFLA_GRE_LINK, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i8* @nla_get_u32(%struct.nlattr* %34)
  %36 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %37 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %30, %24
  %39 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %40 = load i64, i64* @IFLA_GRE_IFLAGS, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %46 = load i64, i64* @IFLA_GRE_IFLAGS, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call i32 @nla_get_be16(%struct.nlattr* %48)
  %50 = call i8* @gre_flags_to_tnl_flags(i32 %49)
  %51 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %44, %38
  %54 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %55 = load i64, i64* @IFLA_GRE_OFLAGS, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %61 = load i64, i64* @IFLA_GRE_OFLAGS, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i32 @nla_get_be16(%struct.nlattr* %63)
  %65 = call i8* @gre_flags_to_tnl_flags(i32 %64)
  %66 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %67 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %59, %53
  %69 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %70 = load i64, i64* @IFLA_GRE_IKEY, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %69, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %76 = load i64, i64* @IFLA_GRE_IKEY, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %75, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = call i8* @nla_get_be32(%struct.nlattr* %78)
  %80 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %81 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %74, %68
  %83 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %84 = load i64, i64* @IFLA_GRE_OKEY, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %83, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = icmp ne %struct.nlattr* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %90 = load i64, i64* @IFLA_GRE_OKEY, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %89, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = call i8* @nla_get_be32(%struct.nlattr* %92)
  %94 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %95 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %88, %82
  %97 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %98 = load i64, i64* @IFLA_GRE_LOCAL, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %97, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = icmp ne %struct.nlattr* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %104 = load i64, i64* @IFLA_GRE_LOCAL, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %103, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = call i8* @nla_get_in_addr(%struct.nlattr* %106)
  %108 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %109 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  store i8* %107, i8** %110, align 8
  br label %111

111:                                              ; preds = %102, %96
  %112 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %113 = load i64, i64* @IFLA_GRE_REMOTE, align 8
  %114 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %112, i64 %113
  %115 = load %struct.nlattr*, %struct.nlattr** %114, align 8
  %116 = icmp ne %struct.nlattr* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %119 = load i64, i64* @IFLA_GRE_REMOTE, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %118, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = call i8* @nla_get_in_addr(%struct.nlattr* %121)
  %123 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %124 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  store i8* %122, i8** %125, align 8
  br label %126

126:                                              ; preds = %117, %111
  %127 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %128 = load i64, i64* @IFLA_GRE_TTL, align 8
  %129 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %127, i64 %128
  %130 = load %struct.nlattr*, %struct.nlattr** %129, align 8
  %131 = icmp ne %struct.nlattr* %130, null
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %134 = load i64, i64* @IFLA_GRE_TTL, align 8
  %135 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %133, i64 %134
  %136 = load %struct.nlattr*, %struct.nlattr** %135, align 8
  %137 = call i8* @nla_get_u8(%struct.nlattr* %136)
  %138 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %139 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  store i8* %137, i8** %140, align 8
  br label %141

141:                                              ; preds = %132, %126
  %142 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %143 = load i64, i64* @IFLA_GRE_TOS, align 8
  %144 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %142, i64 %143
  %145 = load %struct.nlattr*, %struct.nlattr** %144, align 8
  %146 = icmp ne %struct.nlattr* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %149 = load i64, i64* @IFLA_GRE_TOS, align 8
  %150 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %148, i64 %149
  %151 = load %struct.nlattr*, %struct.nlattr** %150, align 8
  %152 = call i8* @nla_get_u8(%struct.nlattr* %151)
  %153 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %154 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  store i8* %152, i8** %155, align 8
  br label %156

156:                                              ; preds = %147, %141
  %157 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %158 = load i64, i64* @IFLA_GRE_PMTUDISC, align 8
  %159 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %157, i64 %158
  %160 = load %struct.nlattr*, %struct.nlattr** %159, align 8
  %161 = icmp ne %struct.nlattr* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %156
  %163 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %164 = load i64, i64* @IFLA_GRE_PMTUDISC, align 8
  %165 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %163, i64 %164
  %166 = load %struct.nlattr*, %struct.nlattr** %165, align 8
  %167 = call i8* @nla_get_u8(%struct.nlattr* %166)
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %183

169:                                              ; preds = %162, %156
  %170 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %171 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %6, align 4
  br label %375

177:                                              ; preds = %169
  %178 = load i32, i32* @IP_DF, align 4
  %179 = call i32 @htons(i32 %178)
  %180 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %181 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  br label %183

183:                                              ; preds = %177, %162
  %184 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %185 = load i64, i64* @IFLA_GRE_COLLECT_METADATA, align 8
  %186 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %184, i64 %185
  %187 = load %struct.nlattr*, %struct.nlattr** %186, align 8
  %188 = icmp ne %struct.nlattr* %187, null
  br i1 %188, label %189, label %202

189:                                              ; preds = %183
  %190 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %191 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %190, i32 0, i32 1
  store i32 1, i32* %191, align 4
  %192 = load %struct.net_device*, %struct.net_device** %7, align 8
  %193 = getelementptr inbounds %struct.net_device, %struct.net_device* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @ARPHRD_IPGRE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %189
  %198 = load i64, i64* @ARPHRD_NONE, align 8
  %199 = load %struct.net_device*, %struct.net_device** %7, align 8
  %200 = getelementptr inbounds %struct.net_device, %struct.net_device* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %197, %189
  br label %202

202:                                              ; preds = %201, %183
  %203 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %204 = load i64, i64* @IFLA_GRE_IGNORE_DF, align 8
  %205 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %203, i64 %204
  %206 = load %struct.nlattr*, %struct.nlattr** %205, align 8
  %207 = icmp ne %struct.nlattr* %206, null
  br i1 %207, label %208, label %239

208:                                              ; preds = %202
  %209 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %210 = load i64, i64* @IFLA_GRE_IGNORE_DF, align 8
  %211 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %209, i64 %210
  %212 = load %struct.nlattr*, %struct.nlattr** %211, align 8
  %213 = call i8* @nla_get_u8(%struct.nlattr* %212)
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %227

215:                                              ; preds = %208
  %216 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %10, align 8
  %217 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @IP_DF, align 4
  %221 = call i32 @htons(i32 %220)
  %222 = and i32 %219, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %215
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %6, align 4
  br label %375

227:                                              ; preds = %215, %208
  %228 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %229 = load i64, i64* @IFLA_GRE_IGNORE_DF, align 8
  %230 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %228, i64 %229
  %231 = load %struct.nlattr*, %struct.nlattr** %230, align 8
  %232 = call i8* @nla_get_u8(%struct.nlattr* %231)
  %233 = icmp ne i8* %232, null
  %234 = xor i1 %233, true
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  %237 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %238 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 4
  br label %239

239:                                              ; preds = %227, %202
  %240 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %241 = load i64, i64* @IFLA_GRE_FWMARK, align 8
  %242 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %240, i64 %241
  %243 = load %struct.nlattr*, %struct.nlattr** %242, align 8
  %244 = icmp ne %struct.nlattr* %243, null
  br i1 %244, label %245, label %252

245:                                              ; preds = %239
  %246 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %247 = load i64, i64* @IFLA_GRE_FWMARK, align 8
  %248 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %246, i64 %247
  %249 = load %struct.nlattr*, %struct.nlattr** %248, align 8
  %250 = call i8* @nla_get_u32(%struct.nlattr* %249)
  %251 = load i8**, i8*** %11, align 8
  store i8* %250, i8** %251, align 8
  br label %252

252:                                              ; preds = %245, %239
  %253 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %254 = load i64, i64* @IFLA_GRE_ERSPAN_VER, align 8
  %255 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %253, i64 %254
  %256 = load %struct.nlattr*, %struct.nlattr** %255, align 8
  %257 = icmp ne %struct.nlattr* %256, null
  br i1 %257, label %258, label %280

258:                                              ; preds = %252
  %259 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %260 = load i64, i64* @IFLA_GRE_ERSPAN_VER, align 8
  %261 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %259, i64 %260
  %262 = load %struct.nlattr*, %struct.nlattr** %261, align 8
  %263 = call i8* @nla_get_u8(%struct.nlattr* %262)
  %264 = ptrtoint i8* %263 to i32
  %265 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %266 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 4
  %267 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %268 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 1
  br i1 %270, label %271, label %279

271:                                              ; preds = %258
  %272 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %273 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 2
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load i32, i32* @EINVAL, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %6, align 4
  br label %375

279:                                              ; preds = %271, %258
  br label %280

280:                                              ; preds = %279, %252
  %281 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %282 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %312

285:                                              ; preds = %280
  %286 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %287 = load i64, i64* @IFLA_GRE_ERSPAN_INDEX, align 8
  %288 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %286, i64 %287
  %289 = load %struct.nlattr*, %struct.nlattr** %288, align 8
  %290 = icmp ne %struct.nlattr* %289, null
  br i1 %290, label %291, label %311

291:                                              ; preds = %285
  %292 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %293 = load i64, i64* @IFLA_GRE_ERSPAN_INDEX, align 8
  %294 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %292, i64 %293
  %295 = load %struct.nlattr*, %struct.nlattr** %294, align 8
  %296 = call i8* @nla_get_u32(%struct.nlattr* %295)
  %297 = ptrtoint i8* %296 to i32
  %298 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %299 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %298, i32 0, i32 3
  store i32 %297, i32* %299, align 4
  %300 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %301 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @INDEX_MASK, align 4
  %304 = xor i32 %303, -1
  %305 = and i32 %302, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %291
  %308 = load i32, i32* @EINVAL, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %6, align 4
  br label %375

310:                                              ; preds = %291
  br label %311

311:                                              ; preds = %310, %285
  br label %374

312:                                              ; preds = %280
  %313 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %314 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %315, 2
  br i1 %316, label %317, label %373

317:                                              ; preds = %312
  %318 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %319 = load i64, i64* @IFLA_GRE_ERSPAN_DIR, align 8
  %320 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %318, i64 %319
  %321 = load %struct.nlattr*, %struct.nlattr** %320, align 8
  %322 = icmp ne %struct.nlattr* %321, null
  br i1 %322, label %323, label %345

323:                                              ; preds = %317
  %324 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %325 = load i64, i64* @IFLA_GRE_ERSPAN_DIR, align 8
  %326 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %324, i64 %325
  %327 = load %struct.nlattr*, %struct.nlattr** %326, align 8
  %328 = call i8* @nla_get_u8(%struct.nlattr* %327)
  %329 = ptrtoint i8* %328 to i32
  %330 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %331 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %330, i32 0, i32 4
  store i32 %329, i32* %331, align 4
  %332 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %333 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @DIR_MASK, align 4
  %336 = load i32, i32* @DIR_OFFSET, align 4
  %337 = ashr i32 %335, %336
  %338 = xor i32 %337, -1
  %339 = and i32 %334, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %323
  %342 = load i32, i32* @EINVAL, align 4
  %343 = sub nsw i32 0, %342
  store i32 %343, i32* %6, align 4
  br label %375

344:                                              ; preds = %323
  br label %345

345:                                              ; preds = %344, %317
  %346 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %347 = load i64, i64* @IFLA_GRE_ERSPAN_HWID, align 8
  %348 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %346, i64 %347
  %349 = load %struct.nlattr*, %struct.nlattr** %348, align 8
  %350 = icmp ne %struct.nlattr* %349, null
  br i1 %350, label %351, label %372

351:                                              ; preds = %345
  %352 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %353 = load i64, i64* @IFLA_GRE_ERSPAN_HWID, align 8
  %354 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %352, i64 %353
  %355 = load %struct.nlattr*, %struct.nlattr** %354, align 8
  %356 = call i32 @nla_get_u16(%struct.nlattr* %355)
  %357 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %358 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %357, i32 0, i32 5
  store i32 %356, i32* %358, align 4
  %359 = load %struct.ip_tunnel*, %struct.ip_tunnel** %12, align 8
  %360 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %359, i32 0, i32 5
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @HWID_MASK, align 4
  %363 = load i32, i32* @HWID_OFFSET, align 4
  %364 = ashr i32 %362, %363
  %365 = xor i32 %364, -1
  %366 = and i32 %361, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %351
  %369 = load i32, i32* @EINVAL, align 4
  %370 = sub nsw i32 0, %369
  store i32 %370, i32* %6, align 4
  br label %375

371:                                              ; preds = %351
  br label %372

372:                                              ; preds = %371, %345
  br label %373

373:                                              ; preds = %372, %312
  br label %374

374:                                              ; preds = %373, %311
  store i32 0, i32* %6, align 4
  br label %375

375:                                              ; preds = %374, %368, %341, %307, %276, %224, %174, %23
  %376 = load i32, i32* %6, align 4
  ret i32 %376
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ip_tunnel_parm*, i32, i32) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i8* @gre_flags_to_tnl_flags(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i8* @nla_get_be32(%struct.nlattr*) #1

declare dso_local i8* @nla_get_in_addr(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
