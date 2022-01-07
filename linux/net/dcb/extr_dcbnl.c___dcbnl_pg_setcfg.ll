; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c___dcbnl_pg_setcfg.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c___dcbnl_pg_setcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32, i32, i32)* }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@DCB_PG_ATTR_MAX = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_MAX = common dso_local global i32 0, align 4
@DCB_ATTR_PG_CFG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@dcbnl_pg_nest = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_7 = common dso_local global i32 0, align 4
@dcbnl_tc_param_nest = common dso_local global i32 0, align 4
@DCB_ATTR_VALUE_UNDEFINED = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_STRICT_PRIO = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_PGID = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_BW_PCT = common dso_local global i64 0, align 8
@DCB_TC_ATTR_PARAM_UP_MAPPING = common dso_local global i64 0, align 8
@DCB_PG_ATTR_BW_ID_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_BW_ID_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlmsghdr*, i32, %struct.nlattr**, %struct.sk_buff*, i32)* @__dcbnl_pg_setcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dcbnl_pg_setcfg(%struct.net_device* %0, %struct.nlmsghdr* %1, i32 %2, %struct.nlattr** %3, %struct.sk_buff* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlattr**, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.nlattr** %3, %struct.nlattr*** %11, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load i32, i32* @DCB_PG_ATTR_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %29 = load i32, i32* @DCB_TC_ATTR_PARAM_MAX, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = alloca %struct.nlattr*, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %33 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %34 = load i64, i64* @DCB_ATTR_PG_CFG, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %6
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %243

41:                                               ; preds = %6
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32 (%struct.net_device*, i32, i32, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32, i32, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.net_device*, i32, i32, i32, i32, i32)* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %41
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32 (%struct.net_device*, i32, i32, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32, i32, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.net_device*, i32, i32, i32, i32, i32)* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load %struct.net_device*, %struct.net_device** %8, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %59, align 8
  %61 = icmp ne i32 (%struct.net_device*, i32, i32)* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.net_device*, %struct.net_device** %8, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %66, align 8
  %68 = icmp ne i32 (%struct.net_device*, i32, i32)* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %62, %55, %48, %41
  %70 = load i32, i32* @EOPNOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %243

72:                                               ; preds = %62
  %73 = load i32, i32* @DCB_PG_ATTR_MAX, align 4
  %74 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %75 = load i64, i64* @DCB_ATTR_PG_CFG, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %74, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = load i32, i32* @dcbnl_pg_nest, align 4
  %79 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %28, i32 %73, %struct.nlattr* %77, i32 %78, i32* null)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %243

84:                                               ; preds = %72
  %85 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  store i32 %85, i32* %18, align 4
  br label %86

86:                                               ; preds = %187, %84
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* @DCB_PG_ATTR_TC_7, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %190

90:                                               ; preds = %86
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = icmp ne %struct.nlattr* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  br label %187

97:                                               ; preds = %90
  %98 = load i32, i32* @DCB_TC_ATTR_PARAM_MAX, align 4
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %100
  %102 = load %struct.nlattr*, %struct.nlattr** %101, align 8
  %103 = load i32, i32* @dcbnl_tc_param_nest, align 4
  %104 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %32, i32 %98, %struct.nlattr* %102, i32 %103, i32* null)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* %17, align 4
  store i32 %108, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %243

109:                                              ; preds = %97
  %110 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %112, i32* %22, align 4
  %113 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %113, i32* %20, align 4
  %114 = load i64, i64* @DCB_TC_ATTR_PARAM_STRICT_PRIO, align 8
  %115 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %114
  %116 = load %struct.nlattr*, %struct.nlattr** %115, align 8
  %117 = icmp ne %struct.nlattr* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %109
  %119 = load i64, i64* @DCB_TC_ATTR_PARAM_STRICT_PRIO, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = call i32 @nla_get_u8(%struct.nlattr* %121)
  store i32 %122, i32* %21, align 4
  br label %123

123:                                              ; preds = %118, %109
  %124 = load i64, i64* @DCB_TC_ATTR_PARAM_PGID, align 8
  %125 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %124
  %126 = load %struct.nlattr*, %struct.nlattr** %125, align 8
  %127 = icmp ne %struct.nlattr* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i64, i64* @DCB_TC_ATTR_PARAM_PGID, align 8
  %130 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %129
  %131 = load %struct.nlattr*, %struct.nlattr** %130, align 8
  %132 = call i32 @nla_get_u8(%struct.nlattr* %131)
  store i32 %132, i32* %19, align 4
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i64, i64* @DCB_TC_ATTR_PARAM_BW_PCT, align 8
  %135 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %134
  %136 = load %struct.nlattr*, %struct.nlattr** %135, align 8
  %137 = icmp ne %struct.nlattr* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i64, i64* @DCB_TC_ATTR_PARAM_BW_PCT, align 8
  %140 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %139
  %141 = load %struct.nlattr*, %struct.nlattr** %140, align 8
  %142 = call i32 @nla_get_u8(%struct.nlattr* %141)
  store i32 %142, i32* %22, align 4
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i64, i64* @DCB_TC_ATTR_PARAM_UP_MAPPING, align 8
  %145 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %144
  %146 = load %struct.nlattr*, %struct.nlattr** %145, align 8
  %147 = icmp ne %struct.nlattr* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i64, i64* @DCB_TC_ATTR_PARAM_UP_MAPPING, align 8
  %150 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %149
  %151 = load %struct.nlattr*, %struct.nlattr** %150, align 8
  %152 = call i32 @nla_get_u8(%struct.nlattr* %151)
  store i32 %152, i32* %20, align 4
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %153
  %157 = load %struct.net_device*, %struct.net_device** %8, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 3
  %161 = load i32 (%struct.net_device*, i32, i32, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32, i32, i32)** %160, align 8
  %162 = load %struct.net_device*, %struct.net_device** %8, align 8
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %165 = sub nsw i32 %163, %164
  %166 = load i32, i32* %21, align 4
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %22, align 4
  %169 = load i32, i32* %20, align 4
  %170 = call i32 %161(%struct.net_device* %162, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169)
  br label %186

171:                                              ; preds = %153
  %172 = load %struct.net_device*, %struct.net_device** %8, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 0
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = load i32 (%struct.net_device*, i32, i32, i32, i32, i32)*, i32 (%struct.net_device*, i32, i32, i32, i32, i32)** %175, align 8
  %177 = load %struct.net_device*, %struct.net_device** %8, align 8
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %180 = sub nsw i32 %178, %179
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* %22, align 4
  %184 = load i32, i32* %20, align 4
  %185 = call i32 %176(%struct.net_device* %177, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %171, %156
  br label %187

187:                                              ; preds = %186, %96
  %188 = load i32, i32* %18, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %18, align 4
  br label %86

190:                                              ; preds = %86
  %191 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  store i32 %191, i32* %18, align 4
  br label %192

192:                                              ; preds = %236, %190
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* @DCB_PG_ATTR_BW_ID_7, align 4
  %195 = icmp sle i32 %193, %194
  br i1 %195, label %196, label %239

196:                                              ; preds = %192
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %198
  %200 = load %struct.nlattr*, %struct.nlattr** %199, align 8
  %201 = icmp ne %struct.nlattr* %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %196
  br label %236

203:                                              ; preds = %196
  %204 = load i32, i32* %18, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %205
  %207 = load %struct.nlattr*, %struct.nlattr** %206, align 8
  %208 = call i32 @nla_get_u8(%struct.nlattr* %207)
  store i32 %208, i32* %22, align 4
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %203
  %212 = load %struct.net_device*, %struct.net_device** %8, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 0
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 1
  %216 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %215, align 8
  %217 = load %struct.net_device*, %struct.net_device** %8, align 8
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %220 = sub nsw i32 %218, %219
  %221 = load i32, i32* %22, align 4
  %222 = call i32 %216(%struct.net_device* %217, i32 %220, i32 %221)
  br label %235

223:                                              ; preds = %203
  %224 = load %struct.net_device*, %struct.net_device** %8, align 8
  %225 = getelementptr inbounds %struct.net_device, %struct.net_device* %224, i32 0, i32 0
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %227, align 8
  %229 = load %struct.net_device*, %struct.net_device** %8, align 8
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load i32, i32* %22, align 4
  %234 = call i32 %228(%struct.net_device* %229, i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %223, %211
  br label %236

236:                                              ; preds = %235, %202
  %237 = load i32, i32* %18, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %18, align 4
  br label %192

239:                                              ; preds = %192
  %240 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %241 = load i64, i64* @DCB_ATTR_PG_CFG, align 8
  %242 = call i32 @nla_put_u8(%struct.sk_buff* %240, i64 %241, i32 0)
  store i32 %242, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %243

243:                                              ; preds = %239, %107, %82, %69, %38
  %244 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %244)
  %245 = load i32, i32* %7, align 4
  ret i32 %245
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
