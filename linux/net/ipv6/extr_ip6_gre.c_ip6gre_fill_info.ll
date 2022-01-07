; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ip6_tnl = type { %struct.TYPE_2__, %struct.__ip6_tnl_parm }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.__ip6_tnl_parm = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

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
@IFLA_GRE_ENCAP_LIMIT = common dso_local global i32 0, align 4
@IFLA_GRE_FLOWINFO = common dso_local global i32 0, align 4
@IFLA_GRE_FLAGS = common dso_local global i32 0, align 4
@IFLA_GRE_FWMARK = common dso_local global i32 0, align 4
@IFLA_GRE_ENCAP_TYPE = common dso_local global i32 0, align 4
@IFLA_GRE_ENCAP_SPORT = common dso_local global i32 0, align 4
@IFLA_GRE_ENCAP_DPORT = common dso_local global i32 0, align 4
@IFLA_GRE_ENCAP_FLAGS = common dso_local global i32 0, align 4
@IFLA_GRE_COLLECT_METADATA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ip6gre_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6gre_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip6_tnl*, align 8
  %7 = alloca %struct.__ip6_tnl_parm*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %9)
  store %struct.ip6_tnl* %10, %struct.ip6_tnl** %6, align 8
  %11 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %12 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %11, i32 0, i32 1
  store %struct.__ip6_tnl_parm* %12, %struct.__ip6_tnl_parm** %7, align 8
  %13 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %14 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %13, i32 0, i32 16
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %17 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %22 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %78

25:                                               ; preds = %20, %2
  %26 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %27 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %26, i32 0, i32 4
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
  %37 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %38 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @nla_put_u8(%struct.sk_buff* %35, i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %223

43:                                               ; preds = %34
  %44 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %45 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load i32, i32* @IFLA_GRE_ERSPAN_INDEX, align 4
  %51 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %52 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %51, i32 0, i32 15
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @nla_put_u32(%struct.sk_buff* %49, i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %223

57:                                               ; preds = %48
  br label %77

58:                                               ; preds = %43
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load i32, i32* @IFLA_GRE_ERSPAN_DIR, align 4
  %61 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %62 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @nla_put_u8(%struct.sk_buff* %59, i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %223

67:                                               ; preds = %58
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* @IFLA_GRE_ERSPAN_HWID, align 4
  %70 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %71 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @nla_put_u16(%struct.sk_buff* %68, i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %223

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %57
  br label %78

78:                                               ; preds = %77, %20
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load i32, i32* @IFLA_GRE_LINK, align 4
  %81 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %82 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %81, i32 0, i32 13
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @nla_put_u32(%struct.sk_buff* %79, i32 %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %172, label %86

86:                                               ; preds = %78
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load i32, i32* @IFLA_GRE_IFLAGS, align 4
  %89 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %90 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @gre_tnl_flags_to_gre_flags(i32 %91)
  %93 = call i64 @nla_put_be16(%struct.sk_buff* %87, i32 %88, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %172, label %95

95:                                               ; preds = %86
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load i32, i32* @IFLA_GRE_OFLAGS, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @gre_tnl_flags_to_gre_flags(i32 %98)
  %100 = call i64 @nla_put_be16(%struct.sk_buff* %96, i32 %97, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %172, label %102

102:                                              ; preds = %95
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = load i32, i32* @IFLA_GRE_IKEY, align 4
  %105 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %106 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @nla_put_be32(%struct.sk_buff* %103, i32 %104, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %172, label %110

110:                                              ; preds = %102
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = load i32, i32* @IFLA_GRE_OKEY, align 4
  %113 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %114 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @nla_put_be32(%struct.sk_buff* %111, i32 %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %172, label %118

118:                                              ; preds = %110
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = load i32, i32* @IFLA_GRE_LOCAL, align 4
  %121 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %122 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %121, i32 0, i32 9
  %123 = call i64 @nla_put_in6_addr(%struct.sk_buff* %119, i32 %120, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %172, label %125

125:                                              ; preds = %118
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = load i32, i32* @IFLA_GRE_REMOTE, align 4
  %128 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %129 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %128, i32 0, i32 8
  %130 = call i64 @nla_put_in6_addr(%struct.sk_buff* %126, i32 %127, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %172, label %132

132:                                              ; preds = %125
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = load i32, i32* @IFLA_GRE_TTL, align 4
  %135 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %136 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @nla_put_u8(%struct.sk_buff* %133, i32 %134, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %172, label %140

140:                                              ; preds = %132
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = load i32, i32* @IFLA_GRE_ENCAP_LIMIT, align 4
  %143 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %144 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @nla_put_u8(%struct.sk_buff* %141, i32 %142, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %172, label %148

148:                                              ; preds = %140
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = load i32, i32* @IFLA_GRE_FLOWINFO, align 4
  %151 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %152 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @nla_put_be32(%struct.sk_buff* %149, i32 %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %172, label %156

156:                                              ; preds = %148
  %157 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %158 = load i32, i32* @IFLA_GRE_FLAGS, align 4
  %159 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %160 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @nla_put_u32(%struct.sk_buff* %157, i32 %158, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %156
  %165 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %166 = load i32, i32* @IFLA_GRE_FWMARK, align 4
  %167 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %168 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @nla_put_u32(%struct.sk_buff* %165, i32 %166, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164, %156, %148, %140, %132, %125, %118, %110, %102, %95, %86, %78
  br label %223

173:                                              ; preds = %164
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = load i32, i32* @IFLA_GRE_ENCAP_TYPE, align 4
  %176 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %177 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @nla_put_u16(%struct.sk_buff* %174, i32 %175, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %209, label %182

182:                                              ; preds = %173
  %183 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %184 = load i32, i32* @IFLA_GRE_ENCAP_SPORT, align 4
  %185 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %186 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @nla_put_be16(%struct.sk_buff* %183, i32 %184, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %209, label %191

191:                                              ; preds = %182
  %192 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %193 = load i32, i32* @IFLA_GRE_ENCAP_DPORT, align 4
  %194 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %195 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @nla_put_be16(%struct.sk_buff* %192, i32 %193, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %191
  %201 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %202 = load i32, i32* @IFLA_GRE_ENCAP_FLAGS, align 4
  %203 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %204 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @nla_put_u16(%struct.sk_buff* %201, i32 %202, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %200, %191, %182, %173
  br label %223

210:                                              ; preds = %200
  %211 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %212 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %210
  %216 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %217 = load i32, i32* @IFLA_GRE_COLLECT_METADATA, align 4
  %218 = call i64 @nla_put_flag(%struct.sk_buff* %216, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %223

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %221, %210
  store i32 0, i32* %3, align 4
  br label %226

223:                                              ; preds = %220, %209, %172, %75, %66, %56, %42
  %224 = load i32, i32* @EMSGSIZE, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %223, %222
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @gre_tnl_flags_to_gre_flags(i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_in6_addr(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
