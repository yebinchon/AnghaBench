; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_obj_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_obj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_object = type { i32 }
%struct.nft_tunnel_obj = type { %struct.metadata_dst*, %struct.TYPE_8__ }
%struct.metadata_dst = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.ip_tunnel_info = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i8*, i32 }

@NFTA_TUNNEL_KEY_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@TUNNEL_KEY = common dso_local global i32 0, align 4
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@TUNNEL_NOCACHE = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_IP = common dso_local global i64 0, align 8
@NFTA_TUNNEL_KEY_IP6 = common dso_local global i64 0, align 8
@NFTA_TUNNEL_KEY_SPORT = common dso_local global i64 0, align 8
@NFTA_TUNNEL_KEY_DPORT = common dso_local global i64 0, align 8
@NFTA_TUNNEL_KEY_FLAGS = common dso_local global i64 0, align 8
@NFT_TUNNEL_F_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFT_TUNNEL_F_ZERO_CSUM_TX = common dso_local global i32 0, align 4
@NFT_TUNNEL_F_DONT_FRAGMENT = common dso_local global i32 0, align 4
@TUNNEL_DONT_FRAGMENT = common dso_local global i32 0, align 4
@NFT_TUNNEL_F_SEQ_NUMBER = common dso_local global i32 0, align 4
@TUNNEL_SEQ = common dso_local global i32 0, align 4
@NFTA_TUNNEL_KEY_TOS = common dso_local global i64 0, align 8
@NFTA_TUNNEL_KEY_TTL = common dso_local global i64 0, align 8
@U8_MAX = common dso_local global i8* null, align 8
@NFTA_TUNNEL_KEY_OPTS = common dso_local global i64 0, align 8
@METADATA_IP_TUNNEL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nlattr**, %struct.nft_object*)* @nft_tunnel_obj_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_tunnel_obj_init(%struct.nft_ctx* %0, %struct.nlattr** %1, %struct.nft_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.nft_object*, align 8
  %8 = alloca %struct.nft_tunnel_obj*, align 8
  %9 = alloca %struct.ip_tunnel_info, align 8
  %10 = alloca %struct.metadata_dst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.nft_object* %2, %struct.nft_object** %7, align 8
  %13 = load %struct.nft_object*, %struct.nft_object** %7, align 8
  %14 = call %struct.nft_tunnel_obj* @nft_obj_data(%struct.nft_object* %13)
  store %struct.nft_tunnel_obj* %14, %struct.nft_tunnel_obj** %8, align 8
  %15 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %16 = load i64, i64* @NFTA_TUNNEL_KEY_ID, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %253

23:                                               ; preds = %3
  %24 = call i32 @memset(%struct.ip_tunnel_info* %9, i32 0, i32 56)
  %25 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %26 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %9, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %28 = load i64, i64* @NFTA_TUNNEL_KEY_ID, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i32 @nla_get_be32(%struct.nlattr* %30)
  %32 = call i32 @key32_to_tunnel_id(i32 %31)
  %33 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %9, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @TUNNEL_KEY, align 4
  %36 = load i32, i32* @TUNNEL_CSUM, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @TUNNEL_NOCACHE, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %9, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %43 = load i64, i64* @NFTA_TUNNEL_KEY_IP, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %23
  %48 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %49 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %50 = load i64, i64* @NFTA_TUNNEL_KEY_IP, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nft_tunnel_obj_ip_init(%struct.nft_ctx* %48, %struct.nlattr* %52, %struct.ip_tunnel_info* %9)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %253

58:                                               ; preds = %47
  br label %81

59:                                               ; preds = %23
  %60 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %61 = load i64, i64* @NFTA_TUNNEL_KEY_IP6, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = icmp ne %struct.nlattr* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %67 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %68 = load i64, i64* @NFTA_TUNNEL_KEY_IP6, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i32 @nft_tunnel_obj_ip6_init(%struct.nft_ctx* %66, %struct.nlattr* %70, %struct.ip_tunnel_info* %9)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %253

76:                                               ; preds = %65
  br label %80

77:                                               ; preds = %59
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %253

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %58
  %82 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %83 = load i64, i64* @NFTA_TUNNEL_KEY_SPORT, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = icmp ne %struct.nlattr* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %89 = load i64, i64* @NFTA_TUNNEL_KEY_SPORT, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = call i8* @nla_get_be16(%struct.nlattr* %91)
  %93 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %9, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %87, %81
  %96 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %97 = load i64, i64* @NFTA_TUNNEL_KEY_DPORT, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %96, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = icmp ne %struct.nlattr* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %103 = load i64, i64* @NFTA_TUNNEL_KEY_DPORT, align 8
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %102, i64 %103
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = call i8* @nla_get_be16(%struct.nlattr* %105)
  %107 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %9, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %101, %95
  %110 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %111 = load i64, i64* @NFTA_TUNNEL_KEY_FLAGS, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = icmp ne %struct.nlattr* %113, null
  br i1 %114, label %115, label %165

115:                                              ; preds = %109
  %116 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %117 = load i64, i64* @NFTA_TUNNEL_KEY_FLAGS, align 8
  %118 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %116, i64 %117
  %119 = load %struct.nlattr*, %struct.nlattr** %118, align 8
  %120 = call i32 @nla_get_be32(%struct.nlattr* %119)
  %121 = call i32 @ntohl(i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @NFT_TUNNEL_F_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %115
  %128 = load i32, i32* @EOPNOTSUPP, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %253

130:                                              ; preds = %115
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @NFT_TUNNEL_F_ZERO_CSUM_TX, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32, i32* @TUNNEL_CSUM, align 4
  %137 = xor i32 %136, -1
  %138 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %9, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %135, %130
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @NFT_TUNNEL_F_DONT_FRAGMENT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i32, i32* @TUNNEL_DONT_FRAGMENT, align 4
  %149 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %9, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %147, %142
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @NFT_TUNNEL_F_SEQ_NUMBER, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32, i32* @TUNNEL_SEQ, align 4
  %160 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %9, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %158, %153
  br label %165

165:                                              ; preds = %164, %109
  %166 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %167 = load i64, i64* @NFTA_TUNNEL_KEY_TOS, align 8
  %168 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %166, i64 %167
  %169 = load %struct.nlattr*, %struct.nlattr** %168, align 8
  %170 = icmp ne %struct.nlattr* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %165
  %172 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %173 = load i64, i64* @NFTA_TUNNEL_KEY_TOS, align 8
  %174 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %172, i64 %173
  %175 = load %struct.nlattr*, %struct.nlattr** %174, align 8
  %176 = call i8* @nla_get_u8(%struct.nlattr* %175)
  %177 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %9, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %171, %165
  %180 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %181 = load i64, i64* @NFTA_TUNNEL_KEY_TTL, align 8
  %182 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %180, i64 %181
  %183 = load %struct.nlattr*, %struct.nlattr** %182, align 8
  %184 = icmp ne %struct.nlattr* %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %179
  %186 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %187 = load i64, i64* @NFTA_TUNNEL_KEY_TTL, align 8
  %188 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %186, i64 %187
  %189 = load %struct.nlattr*, %struct.nlattr** %188, align 8
  %190 = call i8* @nla_get_u8(%struct.nlattr* %189)
  %191 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %9, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  store i8* %190, i8** %192, align 8
  br label %197

193:                                              ; preds = %179
  %194 = load i8*, i8** @U8_MAX, align 8
  %195 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %9, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %193, %185
  %198 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %199 = load i64, i64* @NFTA_TUNNEL_KEY_OPTS, align 8
  %200 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %198, i64 %199
  %201 = load %struct.nlattr*, %struct.nlattr** %200, align 8
  %202 = icmp ne %struct.nlattr* %201, null
  br i1 %202, label %203, label %217

203:                                              ; preds = %197
  %204 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %205 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %206 = load i64, i64* @NFTA_TUNNEL_KEY_OPTS, align 8
  %207 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %205, i64 %206
  %208 = load %struct.nlattr*, %struct.nlattr** %207, align 8
  %209 = load %struct.nft_tunnel_obj*, %struct.nft_tunnel_obj** %8, align 8
  %210 = getelementptr inbounds %struct.nft_tunnel_obj, %struct.nft_tunnel_obj* %209, i32 0, i32 1
  %211 = call i32 @nft_tunnel_obj_opts_init(%struct.nft_ctx* %204, %struct.nlattr* %208, %struct.ip_tunnel_info* %9, %struct.TYPE_8__* %210)
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %203
  %215 = load i32, i32* %11, align 4
  store i32 %215, i32* %4, align 4
  br label %253

216:                                              ; preds = %203
  br label %217

217:                                              ; preds = %216, %197
  %218 = load %struct.nft_tunnel_obj*, %struct.nft_tunnel_obj** %8, align 8
  %219 = getelementptr inbounds %struct.nft_tunnel_obj, %struct.nft_tunnel_obj* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @METADATA_IP_TUNNEL, align 4
  %223 = load i32, i32* @GFP_KERNEL, align 4
  %224 = call %struct.metadata_dst* @metadata_dst_alloc(i32 %221, i32 %222, i32 %223)
  store %struct.metadata_dst* %224, %struct.metadata_dst** %10, align 8
  %225 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %226 = icmp ne %struct.metadata_dst* %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %217
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %4, align 4
  br label %253

230:                                              ; preds = %217
  %231 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %232 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = call i32 @memcpy(%struct.TYPE_9__* %233, %struct.ip_tunnel_info* %9, i32 56)
  %235 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %236 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load %struct.nft_tunnel_obj*, %struct.nft_tunnel_obj** %8, align 8
  %239 = getelementptr inbounds %struct.nft_tunnel_obj, %struct.nft_tunnel_obj* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load %struct.nft_tunnel_obj*, %struct.nft_tunnel_obj** %8, align 8
  %242 = getelementptr inbounds %struct.nft_tunnel_obj, %struct.nft_tunnel_obj* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.nft_tunnel_obj*, %struct.nft_tunnel_obj** %8, align 8
  %246 = getelementptr inbounds %struct.nft_tunnel_obj, %struct.nft_tunnel_obj* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @ip_tunnel_info_opts_set(%struct.TYPE_9__* %237, i32* %240, i32 %244, i32 %248)
  %250 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %251 = load %struct.nft_tunnel_obj*, %struct.nft_tunnel_obj** %8, align 8
  %252 = getelementptr inbounds %struct.nft_tunnel_obj, %struct.nft_tunnel_obj* %251, i32 0, i32 0
  store %struct.metadata_dst* %250, %struct.metadata_dst** %252, align 8
  store i32 0, i32* %4, align 4
  br label %253

253:                                              ; preds = %230, %227, %214, %127, %77, %74, %56, %20
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local %struct.nft_tunnel_obj* @nft_obj_data(%struct.nft_object*) #1

declare dso_local i32 @memset(%struct.ip_tunnel_info*, i32, i32) #1

declare dso_local i32 @key32_to_tunnel_id(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_tunnel_obj_ip_init(%struct.nft_ctx*, %struct.nlattr*, %struct.ip_tunnel_info*) #1

declare dso_local i32 @nft_tunnel_obj_ip6_init(%struct.nft_ctx*, %struct.nlattr*, %struct.ip_tunnel_info*) #1

declare dso_local i8* @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nft_tunnel_obj_opts_init(%struct.nft_ctx*, %struct.nlattr*, %struct.ip_tunnel_info*, %struct.TYPE_8__*) #1

declare dso_local %struct.metadata_dst* @metadata_dst_alloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.ip_tunnel_info*, i32) #1

declare dso_local i32 @ip_tunnel_info_opts_set(%struct.TYPE_9__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
