; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c___dcbnl_pg_getcfg.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c___dcbnl_pg_getcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)* }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@DCB_PG_ATTR_MAX = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_MAX = common dso_local global i32 0, align 4
@DCB_ATTR_PG_CFG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@dcbnl_pg_nest = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_ALL = common dso_local global i64 0, align 8
@DCB_PG_ATTR_TC_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_7 = common dso_local global i32 0, align 4
@dcbnl_tc_param_nest = common dso_local global i32 0, align 4
@DCB_ATTR_VALUE_UNDEFINED = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_PGID = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_ALL = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_UP_MAPPING = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_STRICT_PRIO = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_BW_PCT = common dso_local global i64 0, align 8
@DCB_PG_ATTR_BW_ID_ALL = common dso_local global i64 0, align 8
@DCB_PG_ATTR_BW_ID_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_BW_ID_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlmsghdr*, %struct.nlattr**, %struct.sk_buff*, i32)* @__dcbnl_pg_getcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dcbnl_pg_getcfg(%struct.net_device* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = load i32, i32* @DCB_PG_ATTR_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %15, align 8
  %30 = alloca %struct.nlattr*, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %31 = load i32, i32* @DCB_TC_ATTR_PARAM_MAX, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = alloca %struct.nlattr*, i64 %33, align 16
  store i64 %33, i64* %17, align 8
  store i32 0, i32* %23, align 4
  %35 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %36 = load i64, i64* @DCB_ATTR_PG_CFG, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %5
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %338

43:                                               ; preds = %5
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)** %47, align 8
  %49 = icmp ne i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)** %54, align 8
  %56 = icmp ne i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %61, align 8
  %63 = icmp ne i32 (%struct.net_device*, i32, i32*)* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.net_device*, %struct.net_device** %7, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %68, align 8
  %70 = icmp ne i32 (%struct.net_device*, i32, i32*)* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %64, %57, %50, %43
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %338

74:                                               ; preds = %64
  %75 = load i32, i32* @DCB_PG_ATTR_MAX, align 4
  %76 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %77 = load i64, i64* @DCB_ATTR_PG_CFG, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %76, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = load i32, i32* @dcbnl_pg_nest, align 4
  %81 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %30, i32 %75, %struct.nlattr* %79, i32 %80, i32* null)
  store i32 %81, i32* %22, align 4
  %82 = load i32, i32* %22, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %22, align 4
  store i32 %85, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %338

86:                                               ; preds = %74
  %87 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %88 = load i64, i64* @DCB_ATTR_PG_CFG, align 8
  %89 = trunc i64 %88 to i32
  %90 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %87, i32 %89)
  store %struct.nlattr* %90, %struct.nlattr** %12, align 8
  %91 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* @EMSGSIZE, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %338

96:                                               ; preds = %86
  %97 = load i64, i64* @DCB_PG_ATTR_TC_ALL, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = icmp ne %struct.nlattr* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %23, align 4
  br label %102

102:                                              ; preds = %101, %96
  %103 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  store i32 %103, i32* %24, align 4
  br label %104

104:                                              ; preds = %260, %102
  %105 = load i32, i32* %24, align 4
  %106 = load i32, i32* @DCB_PG_ATTR_TC_7, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %263

108:                                              ; preds = %104
  %109 = load i32, i32* %23, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %24, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %113
  %115 = load %struct.nlattr*, %struct.nlattr** %114, align 8
  %116 = icmp ne %struct.nlattr* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %260

118:                                              ; preds = %111, %108
  %119 = load i64, i64* @DCB_PG_ATTR_TC_ALL, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = icmp ne %struct.nlattr* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i64, i64* @DCB_PG_ATTR_TC_ALL, align 8
  %125 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %124
  %126 = load %struct.nlattr*, %struct.nlattr** %125, align 8
  store %struct.nlattr* %126, %struct.nlattr** %14, align 8
  br label %132

127:                                              ; preds = %118
  %128 = load i32, i32* %24, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %129
  %131 = load %struct.nlattr*, %struct.nlattr** %130, align 8
  store %struct.nlattr* %131, %struct.nlattr** %14, align 8
  br label %132

132:                                              ; preds = %127, %123
  %133 = load i32, i32* @DCB_TC_ATTR_PARAM_MAX, align 4
  %134 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %135 = load i32, i32* @dcbnl_tc_param_nest, align 4
  %136 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %34, i32 %133, %struct.nlattr* %134, i32 %135, i32* null)
  store i32 %136, i32* %22, align 4
  %137 = load i32, i32* %22, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %332

140:                                              ; preds = %132
  %141 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %142 = load i32, i32* %24, align 4
  %143 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %141, i32 %142)
  store %struct.nlattr* %143, %struct.nlattr** %13, align 8
  %144 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %145 = icmp ne %struct.nlattr* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %140
  br label %332

147:                                              ; preds = %140
  %148 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %150, i32* %20, align 4
  %151 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %147
  %155 = load %struct.net_device*, %struct.net_device** %7, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  %159 = load i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)** %158, align 8
  %160 = load %struct.net_device*, %struct.net_device** %7, align 8
  %161 = load i32, i32* %24, align 4
  %162 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %163 = sub nsw i32 %161, %162
  %164 = call i32 %159(%struct.net_device* %160, i32 %163, i32* %18, i32* %19, i32* %20, i32* %21)
  br label %176

165:                                              ; preds = %147
  %166 = load %struct.net_device*, %struct.net_device** %7, align 8
  %167 = getelementptr inbounds %struct.net_device, %struct.net_device* %166, i32 0, i32 0
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  %170 = load i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)** %169, align 8
  %171 = load %struct.net_device*, %struct.net_device** %7, align 8
  %172 = load i32, i32* %24, align 4
  %173 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %174 = sub nsw i32 %172, %173
  %175 = call i32 %170(%struct.net_device* %171, i32 %174, i32* %18, i32* %19, i32* %20, i32* %21)
  br label %176

176:                                              ; preds = %165, %154
  %177 = load i64, i64* @DCB_TC_ATTR_PARAM_PGID, align 8
  %178 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %177
  %179 = load %struct.nlattr*, %struct.nlattr** %178, align 8
  %180 = icmp ne %struct.nlattr* %179, null
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load i64, i64* @DCB_TC_ATTR_PARAM_ALL, align 8
  %183 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %182
  %184 = load %struct.nlattr*, %struct.nlattr** %183, align 8
  %185 = icmp ne %struct.nlattr* %184, null
  br i1 %185, label %186, label %196

186:                                              ; preds = %181, %176
  %187 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %188 = load i64, i64* @DCB_TC_ATTR_PARAM_PGID, align 8
  %189 = trunc i64 %188 to i32
  %190 = load i32, i32* %19, align 4
  %191 = call i32 @nla_put_u8(%struct.sk_buff* %187, i32 %189, i32 %190)
  store i32 %191, i32* %22, align 4
  %192 = load i32, i32* %22, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %328

195:                                              ; preds = %186
  br label %196

196:                                              ; preds = %195, %181
  %197 = load i64, i64* @DCB_TC_ATTR_PARAM_UP_MAPPING, align 8
  %198 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %197
  %199 = load %struct.nlattr*, %struct.nlattr** %198, align 8
  %200 = icmp ne %struct.nlattr* %199, null
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = load i64, i64* @DCB_TC_ATTR_PARAM_ALL, align 8
  %203 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %202
  %204 = load %struct.nlattr*, %struct.nlattr** %203, align 8
  %205 = icmp ne %struct.nlattr* %204, null
  br i1 %205, label %206, label %216

206:                                              ; preds = %201, %196
  %207 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %208 = load i64, i64* @DCB_TC_ATTR_PARAM_UP_MAPPING, align 8
  %209 = trunc i64 %208 to i32
  %210 = load i32, i32* %21, align 4
  %211 = call i32 @nla_put_u8(%struct.sk_buff* %207, i32 %209, i32 %210)
  store i32 %211, i32* %22, align 4
  %212 = load i32, i32* %22, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %328

215:                                              ; preds = %206
  br label %216

216:                                              ; preds = %215, %201
  %217 = load i64, i64* @DCB_TC_ATTR_PARAM_STRICT_PRIO, align 8
  %218 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %217
  %219 = load %struct.nlattr*, %struct.nlattr** %218, align 8
  %220 = icmp ne %struct.nlattr* %219, null
  br i1 %220, label %226, label %221

221:                                              ; preds = %216
  %222 = load i64, i64* @DCB_TC_ATTR_PARAM_ALL, align 8
  %223 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %222
  %224 = load %struct.nlattr*, %struct.nlattr** %223, align 8
  %225 = icmp ne %struct.nlattr* %224, null
  br i1 %225, label %226, label %236

226:                                              ; preds = %221, %216
  %227 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %228 = load i64, i64* @DCB_TC_ATTR_PARAM_STRICT_PRIO, align 8
  %229 = trunc i64 %228 to i32
  %230 = load i32, i32* %18, align 4
  %231 = call i32 @nla_put_u8(%struct.sk_buff* %227, i32 %229, i32 %230)
  store i32 %231, i32* %22, align 4
  %232 = load i32, i32* %22, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  br label %328

235:                                              ; preds = %226
  br label %236

236:                                              ; preds = %235, %221
  %237 = load i64, i64* @DCB_TC_ATTR_PARAM_BW_PCT, align 8
  %238 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %237
  %239 = load %struct.nlattr*, %struct.nlattr** %238, align 8
  %240 = icmp ne %struct.nlattr* %239, null
  br i1 %240, label %246, label %241

241:                                              ; preds = %236
  %242 = load i64, i64* @DCB_TC_ATTR_PARAM_ALL, align 8
  %243 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %242
  %244 = load %struct.nlattr*, %struct.nlattr** %243, align 8
  %245 = icmp ne %struct.nlattr* %244, null
  br i1 %245, label %246, label %256

246:                                              ; preds = %241, %236
  %247 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %248 = load i64, i64* @DCB_TC_ATTR_PARAM_BW_PCT, align 8
  %249 = trunc i64 %248 to i32
  %250 = load i32, i32* %20, align 4
  %251 = call i32 @nla_put_u8(%struct.sk_buff* %247, i32 %249, i32 %250)
  store i32 %251, i32* %22, align 4
  %252 = load i32, i32* %22, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %246
  br label %328

255:                                              ; preds = %246
  br label %256

256:                                              ; preds = %255, %241
  %257 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %258 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %259 = call i32 @nla_nest_end(%struct.sk_buff* %257, %struct.nlattr* %258)
  br label %260

260:                                              ; preds = %256, %117
  %261 = load i32, i32* %24, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %24, align 4
  br label %104

263:                                              ; preds = %104
  %264 = load i64, i64* @DCB_PG_ATTR_BW_ID_ALL, align 8
  %265 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %264
  %266 = load %struct.nlattr*, %struct.nlattr** %265, align 8
  %267 = icmp ne %struct.nlattr* %266, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %263
  store i32 1, i32* %23, align 4
  br label %270

269:                                              ; preds = %263
  store i32 0, i32* %23, align 4
  br label %270

270:                                              ; preds = %269, %268
  %271 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  store i32 %271, i32* %24, align 4
  br label %272

272:                                              ; preds = %321, %270
  %273 = load i32, i32* %24, align 4
  %274 = load i32, i32* @DCB_PG_ATTR_BW_ID_7, align 4
  %275 = icmp sle i32 %273, %274
  br i1 %275, label %276, label %324

276:                                              ; preds = %272
  %277 = load i32, i32* %23, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %286, label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %24, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %281
  %283 = load %struct.nlattr*, %struct.nlattr** %282, align 8
  %284 = icmp ne %struct.nlattr* %283, null
  br i1 %284, label %286, label %285

285:                                              ; preds = %279
  br label %321

286:                                              ; preds = %279, %276
  %287 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %287, i32* %20, align 4
  %288 = load i32, i32* %11, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %286
  %291 = load %struct.net_device*, %struct.net_device** %7, align 8
  %292 = getelementptr inbounds %struct.net_device, %struct.net_device* %291, i32 0, i32 0
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 1
  %295 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %294, align 8
  %296 = load %struct.net_device*, %struct.net_device** %7, align 8
  %297 = load i32, i32* %24, align 4
  %298 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %299 = sub nsw i32 %297, %298
  %300 = call i32 %295(%struct.net_device* %296, i32 %299, i32* %20)
  br label %312

301:                                              ; preds = %286
  %302 = load %struct.net_device*, %struct.net_device** %7, align 8
  %303 = getelementptr inbounds %struct.net_device, %struct.net_device* %302, i32 0, i32 0
  %304 = load %struct.TYPE_2__*, %struct.TYPE_2__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 0
  %306 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %305, align 8
  %307 = load %struct.net_device*, %struct.net_device** %7, align 8
  %308 = load i32, i32* %24, align 4
  %309 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %310 = sub nsw i32 %308, %309
  %311 = call i32 %306(%struct.net_device* %307, i32 %310, i32* %20)
  br label %312

312:                                              ; preds = %301, %290
  %313 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %314 = load i32, i32* %24, align 4
  %315 = load i32, i32* %20, align 4
  %316 = call i32 @nla_put_u8(%struct.sk_buff* %313, i32 %314, i32 %315)
  store i32 %316, i32* %22, align 4
  %317 = load i32, i32* %22, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %312
  br label %332

320:                                              ; preds = %312
  br label %321

321:                                              ; preds = %320, %285
  %322 = load i32, i32* %24, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %24, align 4
  br label %272

324:                                              ; preds = %272
  %325 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %326 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %327 = call i32 @nla_nest_end(%struct.sk_buff* %325, %struct.nlattr* %326)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %338

328:                                              ; preds = %254, %234, %214, %194
  %329 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %330 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %331 = call i32 @nla_nest_cancel(%struct.sk_buff* %329, %struct.nlattr* %330)
  br label %332

332:                                              ; preds = %328, %319, %146, %139
  %333 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %334 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %335 = call i32 @nla_nest_cancel(%struct.sk_buff* %333, %struct.nlattr* %334)
  %336 = load i32, i32* @EMSGSIZE, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %338

338:                                              ; preds = %332, %324, %93, %84, %71, %40
  %339 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %339)
  %340 = load i32, i32* %6, align 4
  ret i32 %340
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #2

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #2

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
