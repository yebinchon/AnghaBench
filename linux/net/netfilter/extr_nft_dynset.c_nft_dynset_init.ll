; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_dynset.c_nft_dynset_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_dynset.c_nft_dynset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_dynset = type { i32, i32, %struct.nft_set*, %struct.nft_set*, i32, i64, i32, i8*, i8* }
%struct.nft_set = type { i32, i64, i32, i64, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 (%struct.nft_set*)*, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 }

@NFTA_DYNSET_SET_NAME = common dso_local global i64 0, align 8
@NFTA_DYNSET_OP = common dso_local global i64 0, align 8
@NFTA_DYNSET_SREG_KEY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_DYNSET_FLAGS = common dso_local global i64 0, align 8
@NFT_DYNSET_F_INV = common dso_local global i32 0, align 4
@NFTA_DYNSET_SET_ID = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFT_SET_CONSTANT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NFT_SET_TIMEOUT = common dso_local global i32 0, align 4
@NFTA_DYNSET_TIMEOUT = common dso_local global i64 0, align 8
@NFTA_DYNSET_SREG_DATA = common dso_local global i64 0, align 8
@NFT_SET_MAP = common dso_local global i32 0, align 4
@NFT_DATA_VERDICT = common dso_local global i64 0, align 8
@NFTA_DYNSET_EXPR = common dso_local global i64 0, align 8
@NFT_SET_EVAL = common dso_local global i32 0, align 4
@NFT_EXPR_STATEFUL = common dso_local global i32 0, align 4
@NFT_EXPR_GC = common dso_local global i32 0, align 4
@NFT_SET_EXT_KEY = common dso_local global i32 0, align 4
@NFT_SET_EXT_DATA = common dso_local global i32 0, align 4
@NFT_SET_EXT_EXPR = common dso_local global i32 0, align 4
@NFT_SET_EXT_EXPIRATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_dynset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_dynset_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_dynset*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nft_set*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %14 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %15 = call %struct.nft_dynset* @nft_expr_priv(%struct.nft_expr* %14)
  store %struct.nft_dynset* %15, %struct.nft_dynset** %8, align 8
  %16 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = call i32 @nft_genmask_next(%struct.TYPE_9__* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @lockdep_assert_held(i32* %24)
  %26 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %27 = load i64, i64* @NFTA_DYNSET_SET_NAME, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp eq %struct.nlattr* %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %3
  %32 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %33 = load i64, i64* @NFTA_DYNSET_OP, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp eq %struct.nlattr* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %39 = load i64, i64* @NFTA_DYNSET_SREG_KEY, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp eq %struct.nlattr* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %31, %3
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %436

46:                                               ; preds = %37
  %47 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %48 = load i64, i64* @NFTA_DYNSET_FLAGS, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp ne %struct.nlattr* %50, null
  br i1 %51, label %52, label %77

52:                                               ; preds = %46
  %53 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %54 = load i64, i64* @NFTA_DYNSET_FLAGS, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i32 @nla_get_be32(%struct.nlattr* %56)
  %58 = call i8* @ntohl(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @NFT_DYNSET_F_INV, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %436

68:                                               ; preds = %52
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @NFT_DYNSET_F_INV, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %75 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76, %46
  %78 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %85 = load i64, i64* @NFTA_DYNSET_SET_NAME, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %84, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %89 = load i64, i64* @NFTA_DYNSET_SET_ID, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call %struct.nft_set* @nft_set_lookup_global(%struct.TYPE_9__* %80, i32 %83, %struct.nlattr* %87, %struct.nlattr* %91, i32 %92)
  store %struct.nft_set* %93, %struct.nft_set** %10, align 8
  %94 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %95 = call i64 @IS_ERR(%struct.nft_set* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %77
  %98 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %99 = call i32 @PTR_ERR(%struct.nft_set* %98)
  store i32 %99, i32* %4, align 4
  br label %436

100:                                              ; preds = %77
  %101 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %102 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %101, i32 0, i32 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* @EOPNOTSUPP, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %436

110:                                              ; preds = %100
  %111 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %112 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @NFT_SET_CONSTANT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i32, i32* @EBUSY, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %436

120:                                              ; preds = %110
  %121 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %122 = load i64, i64* @NFTA_DYNSET_OP, align 8
  %123 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %121, i64 %122
  %124 = load %struct.nlattr*, %struct.nlattr** %123, align 8
  %125 = call i32 @nla_get_be32(%struct.nlattr* %124)
  %126 = call i8* @ntohl(i32 %125)
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %129 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %131 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %145 [
    i32 130, label %133
    i32 129, label %133
    i32 128, label %134
  ]

133:                                              ; preds = %120, %120
  br label %148

134:                                              ; preds = %120
  %135 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %136 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @NFT_SET_TIMEOUT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %134
  %142 = load i32, i32* @EOPNOTSUPP, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %436

144:                                              ; preds = %134
  br label %148

145:                                              ; preds = %120
  %146 = load i32, i32* @EOPNOTSUPP, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %436

148:                                              ; preds = %144, %133
  store i64 0, i64* %11, align 8
  %149 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %150 = load i64, i64* @NFTA_DYNSET_TIMEOUT, align 8
  %151 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %149, i64 %150
  %152 = load %struct.nlattr*, %struct.nlattr** %151, align 8
  %153 = icmp ne %struct.nlattr* %152, null
  br i1 %153, label %154, label %172

154:                                              ; preds = %148
  %155 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %156 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @NFT_SET_TIMEOUT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %154
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %436

164:                                              ; preds = %154
  %165 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %166 = load i64, i64* @NFTA_DYNSET_TIMEOUT, align 8
  %167 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %166
  %168 = load %struct.nlattr*, %struct.nlattr** %167, align 8
  %169 = call i32 @nla_get_be64(%struct.nlattr* %168)
  %170 = call i32 @be64_to_cpu(i32 %169)
  %171 = call i64 @msecs_to_jiffies(i32 %170)
  store i64 %171, i64* %11, align 8
  br label %172

172:                                              ; preds = %164, %148
  %173 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %174 = load i64, i64* @NFTA_DYNSET_SREG_KEY, align 8
  %175 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %173, i64 %174
  %176 = load %struct.nlattr*, %struct.nlattr** %175, align 8
  %177 = call i8* @nft_parse_register(%struct.nlattr* %176)
  %178 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %179 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %178, i32 0, i32 8
  store i8* %177, i8** %179, align 8
  %180 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %181 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %180, i32 0, i32 8
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %184 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @nft_validate_register_load(i8* %182, i32 %185)
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %172
  %190 = load i32, i32* %12, align 4
  store i32 %190, i32* %4, align 4
  br label %436

191:                                              ; preds = %172
  %192 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %193 = load i64, i64* @NFTA_DYNSET_SREG_DATA, align 8
  %194 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %192, i64 %193
  %195 = load %struct.nlattr*, %struct.nlattr** %194, align 8
  %196 = icmp ne %struct.nlattr* %195, null
  br i1 %196, label %197, label %236

197:                                              ; preds = %191
  %198 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %199 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @NFT_SET_MAP, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %197
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %4, align 4
  br label %436

207:                                              ; preds = %197
  %208 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %209 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @NFT_DATA_VERDICT, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load i32, i32* @EOPNOTSUPP, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %4, align 4
  br label %436

216:                                              ; preds = %207
  %217 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %218 = load i64, i64* @NFTA_DYNSET_SREG_DATA, align 8
  %219 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %217, i64 %218
  %220 = load %struct.nlattr*, %struct.nlattr** %219, align 8
  %221 = call i8* @nft_parse_register(%struct.nlattr* %220)
  %222 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %223 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %222, i32 0, i32 7
  store i8* %221, i8** %223, align 8
  %224 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %225 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %224, i32 0, i32 7
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %228 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @nft_validate_register_load(i8* %226, i32 %229)
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %12, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %216
  %234 = load i32, i32* %12, align 4
  store i32 %234, i32* %4, align 4
  br label %436

235:                                              ; preds = %216
  br label %247

236:                                              ; preds = %191
  %237 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %238 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @NFT_SET_MAP, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %236
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %4, align 4
  br label %436

246:                                              ; preds = %236
  br label %247

247:                                              ; preds = %246, %235
  %248 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %249 = load i64, i64* @NFTA_DYNSET_EXPR, align 8
  %250 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %248, i64 %249
  %251 = load %struct.nlattr*, %struct.nlattr** %250, align 8
  %252 = icmp ne %struct.nlattr* %251, null
  br i1 %252, label %253, label %336

253:                                              ; preds = %247
  %254 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %255 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @NFT_SET_EVAL, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %253
  %261 = load i32, i32* @EINVAL, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %4, align 4
  br label %436

263:                                              ; preds = %253
  %264 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %265 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %266 = load i64, i64* @NFTA_DYNSET_EXPR, align 8
  %267 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %265, i64 %266
  %268 = load %struct.nlattr*, %struct.nlattr** %267, align 8
  %269 = call %struct.nft_set* @nft_expr_init(%struct.nft_ctx* %264, %struct.nlattr* %268)
  %270 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %271 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %270, i32 0, i32 2
  store %struct.nft_set* %269, %struct.nft_set** %271, align 8
  %272 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %273 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %272, i32 0, i32 2
  %274 = load %struct.nft_set*, %struct.nft_set** %273, align 8
  %275 = call i64 @IS_ERR(%struct.nft_set* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %263
  %278 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %279 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %278, i32 0, i32 2
  %280 = load %struct.nft_set*, %struct.nft_set** %279, align 8
  %281 = call i32 @PTR_ERR(%struct.nft_set* %280)
  store i32 %281, i32* %4, align 4
  br label %436

282:                                              ; preds = %263
  %283 = load i32, i32* @EOPNOTSUPP, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %12, align 4
  %285 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %286 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %285, i32 0, i32 2
  %287 = load %struct.nft_set*, %struct.nft_set** %286, align 8
  %288 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %287, i32 0, i32 4
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 2
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @NFT_EXPR_STATEFUL, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %282
  br label %423

298:                                              ; preds = %282
  %299 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %300 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %299, i32 0, i32 2
  %301 = load %struct.nft_set*, %struct.nft_set** %300, align 8
  %302 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %301, i32 0, i32 4
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @NFT_EXPR_GC, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %335

311:                                              ; preds = %298
  %312 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %313 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @NFT_SET_TIMEOUT, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  br label %423

319:                                              ; preds = %311
  %320 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %321 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %320, i32 0, i32 4
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 1
  %324 = load i32 (%struct.nft_set*)*, i32 (%struct.nft_set*)** %323, align 8
  %325 = icmp ne i32 (%struct.nft_set*)* %324, null
  br i1 %325, label %327, label %326

326:                                              ; preds = %319
  br label %423

327:                                              ; preds = %319
  %328 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %329 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %328, i32 0, i32 4
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 1
  %332 = load i32 (%struct.nft_set*)*, i32 (%struct.nft_set*)** %331, align 8
  %333 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %334 = call i32 %332(%struct.nft_set* %333)
  br label %335

335:                                              ; preds = %327, %298
  br label %336

336:                                              ; preds = %335, %247
  %337 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %338 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %337, i32 0, i32 6
  %339 = call i32 @nft_set_ext_prepare(i32* %338)
  %340 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %341 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %340, i32 0, i32 6
  %342 = load i32, i32* @NFT_SET_EXT_KEY, align 4
  %343 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %344 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @nft_set_ext_add_length(i32* %341, i32 %342, i32 %345)
  %347 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %348 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @NFT_SET_MAP, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %336
  %354 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %355 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %354, i32 0, i32 6
  %356 = load i32, i32* @NFT_SET_EXT_DATA, align 4
  %357 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %358 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @nft_set_ext_add_length(i32* %355, i32 %356, i32 %359)
  br label %361

361:                                              ; preds = %353, %336
  %362 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %363 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %362, i32 0, i32 2
  %364 = load %struct.nft_set*, %struct.nft_set** %363, align 8
  %365 = icmp ne %struct.nft_set* %364, null
  br i1 %365, label %366, label %378

366:                                              ; preds = %361
  %367 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %368 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %367, i32 0, i32 6
  %369 = load i32, i32* @NFT_SET_EXT_EXPR, align 4
  %370 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %371 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %370, i32 0, i32 2
  %372 = load %struct.nft_set*, %struct.nft_set** %371, align 8
  %373 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %372, i32 0, i32 4
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @nft_set_ext_add_length(i32* %368, i32 %369, i32 %376)
  br label %378

378:                                              ; preds = %366, %361
  %379 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %380 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @NFT_SET_TIMEOUT, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %399

385:                                              ; preds = %378
  %386 = load i64, i64* %11, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %393, label %388

388:                                              ; preds = %385
  %389 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %390 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %389, i32 0, i32 3
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %398

393:                                              ; preds = %388, %385
  %394 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %395 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %394, i32 0, i32 6
  %396 = load i32, i32* @NFT_SET_EXT_EXPIRATION, align 4
  %397 = call i32 @nft_set_ext_add(i32* %395, i32 %396)
  br label %398

398:                                              ; preds = %393, %388
  br label %399

399:                                              ; preds = %398, %378
  %400 = load i64, i64* %11, align 8
  %401 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %402 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %401, i32 0, i32 5
  store i64 %400, i64* %402, align 8
  %403 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %404 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %405 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %406 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %405, i32 0, i32 4
  %407 = call i32 @nf_tables_bind_set(%struct.nft_ctx* %403, %struct.nft_set* %404, i32* %406)
  store i32 %407, i32* %12, align 4
  %408 = load i32, i32* %12, align 4
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %399
  br label %423

411:                                              ; preds = %399
  %412 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %413 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %411
  %417 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %418 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %417, i32 0, i32 2
  store i32 65535, i32* %418, align 8
  br label %419

419:                                              ; preds = %416, %411
  %420 = load %struct.nft_set*, %struct.nft_set** %10, align 8
  %421 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %422 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %421, i32 0, i32 3
  store %struct.nft_set* %420, %struct.nft_set** %422, align 8
  store i32 0, i32* %4, align 4
  br label %436

423:                                              ; preds = %410, %326, %318, %297
  %424 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %425 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %424, i32 0, i32 2
  %426 = load %struct.nft_set*, %struct.nft_set** %425, align 8
  %427 = icmp ne %struct.nft_set* %426, null
  br i1 %427, label %428, label %434

428:                                              ; preds = %423
  %429 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %430 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %431 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %430, i32 0, i32 2
  %432 = load %struct.nft_set*, %struct.nft_set** %431, align 8
  %433 = call i32 @nft_expr_destroy(%struct.nft_ctx* %429, %struct.nft_set* %432)
  br label %434

434:                                              ; preds = %428, %423
  %435 = load i32, i32* %12, align 4
  store i32 %435, i32* %4, align 4
  br label %436

436:                                              ; preds = %434, %419, %277, %260, %243, %233, %213, %204, %189, %161, %145, %141, %117, %107, %97, %65, %43
  %437 = load i32, i32* %4, align 4
  ret i32 %437
}

declare dso_local %struct.nft_dynset* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_genmask_next(%struct.TYPE_9__*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local %struct.nft_set* @nft_set_lookup_global(%struct.TYPE_9__*, i32, %struct.nlattr*, %struct.nlattr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_set*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_set*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @nla_get_be64(%struct.nlattr*) #1

declare dso_local i8* @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_load(i8*, i32) #1

declare dso_local %struct.nft_set* @nft_expr_init(%struct.nft_ctx*, %struct.nlattr*) #1

declare dso_local i32 @nft_set_ext_prepare(i32*) #1

declare dso_local i32 @nft_set_ext_add_length(i32*, i32, i32) #1

declare dso_local i32 @nft_set_ext_add(i32*, i32) #1

declare dso_local i32 @nf_tables_bind_set(%struct.nft_ctx*, %struct.nft_set*, i32*) #1

declare dso_local i32 @nft_expr_destroy(%struct.nft_ctx*, %struct.nft_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
