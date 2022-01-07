; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_physdev.c_physdev_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_physdev.c_physdev_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_physdev_info* }
%struct.xt_physdev_info = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i8* }

@XT_PHYSDEV_OP_BRIDGED = common dso_local global i32 0, align 4
@XT_PHYSDEV_OP_ISIN = common dso_local global i32 0, align 4
@XT_PHYSDEV_OP_ISOUT = common dso_local global i32 0, align 4
@XT_PHYSDEV_OP_IN = common dso_local global i32 0, align 4
@XT_PHYSDEV_OP_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @physdev_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @physdev_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_physdev_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %11 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %12 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %11, i32 0, i32 0
  %13 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %12, align 8
  store %struct.xt_physdev_info* %13, %struct.xt_physdev_info** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @nf_bridge_info_exists(%struct.sk_buff* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %93, label %17

17:                                               ; preds = %2
  %18 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %19 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @XT_PHYSDEV_OP_BRIDGED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %26 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @XT_PHYSDEV_OP_BRIDGED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %258

32:                                               ; preds = %24, %17
  %33 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %34 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @XT_PHYSDEV_OP_ISIN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %41 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @XT_PHYSDEV_OP_ISIN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %258

47:                                               ; preds = %39, %32
  %48 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %49 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @XT_PHYSDEV_OP_ISOUT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %56 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @XT_PHYSDEV_OP_ISOUT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %258

62:                                               ; preds = %54, %47
  %63 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %64 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @XT_PHYSDEV_OP_IN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %71 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @XT_PHYSDEV_OP_IN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %258

77:                                               ; preds = %69, %62
  %78 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %79 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @XT_PHYSDEV_OP_OUT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %86 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @XT_PHYSDEV_OP_OUT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %258

92:                                               ; preds = %84, %77
  store i32 1, i32* %3, align 4
  br label %258

93:                                               ; preds = %2
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = call %struct.net_device* @nf_bridge_get_physoutdev(%struct.sk_buff* %94)
  store %struct.net_device* %95, %struct.net_device** %7, align 8
  %96 = load %struct.net_device*, %struct.net_device** %7, align 8
  %97 = icmp ne %struct.net_device* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.net_device*, %struct.net_device** %7, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  br label %103

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %98
  %104 = phi i8* [ %101, %98 ], [ null, %102 ]
  store i8* %104, i8** %10, align 8
  %105 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %106 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @XT_PHYSDEV_OP_BRIDGED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %103
  %112 = load i8*, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  %114 = xor i1 %113, true
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %118 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @XT_PHYSDEV_OP_BRIDGED, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = xor i32 %116, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %258

128:                                              ; preds = %111, %103
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = call %struct.net_device* @nf_bridge_get_physindev(%struct.sk_buff* %129)
  store %struct.net_device* %130, %struct.net_device** %7, align 8
  %131 = load %struct.net_device*, %struct.net_device** %7, align 8
  %132 = icmp ne %struct.net_device* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.net_device*, %struct.net_device** %7, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  br label %138

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %133
  %139 = phi i8* [ %136, %133 ], [ null, %137 ]
  store i8* %139, i8** %9, align 8
  %140 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %141 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @XT_PHYSDEV_OP_ISIN, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %138
  %147 = load i8*, i8** %9, align 8
  %148 = icmp ne i8* %147, null
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %152 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @XT_PHYSDEV_OP_ISIN, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = xor i32 %150, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %185, label %162

162:                                              ; preds = %146, %138
  %163 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %164 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @XT_PHYSDEV_OP_ISOUT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %162
  %170 = load i8*, i8** %10, align 8
  %171 = icmp ne i8* %170, null
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %175 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @XT_PHYSDEV_OP_ISOUT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = xor i32 %173, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %169, %146
  store i32 0, i32* %3, align 4
  br label %258

186:                                              ; preds = %169, %162
  %187 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %188 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @XT_PHYSDEV_OP_IN, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %186
  br label %223

194:                                              ; preds = %186
  %195 = load i8*, i8** %9, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %222

197:                                              ; preds = %194
  %198 = load i8*, i8** %9, align 8
  %199 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %200 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %203 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @ifname_compare_aligned(i8* %198, i32 %201, i32 %204)
  store i64 %205, i64* %8, align 8
  %206 = load i64, i64* %8, align 8
  %207 = icmp ne i64 %206, 0
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %211 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @XT_PHYSDEV_OP_IN, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = xor i32 %209, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %197
  store i32 0, i32* %3, align 4
  br label %258

221:                                              ; preds = %197
  br label %222

222:                                              ; preds = %221, %194
  br label %223

223:                                              ; preds = %222, %193
  %224 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %225 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @XT_PHYSDEV_OP_OUT, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %223
  store i32 1, i32* %3, align 4
  br label %258

231:                                              ; preds = %223
  %232 = load i8*, i8** %10, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %231
  store i32 0, i32* %3, align 4
  br label %258

235:                                              ; preds = %231
  %236 = load i8*, i8** %10, align 8
  %237 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %238 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %241 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = call i64 @ifname_compare_aligned(i8* %236, i32 %239, i32 %242)
  store i64 %243, i64* %8, align 8
  %244 = load i64, i64* %8, align 8
  %245 = icmp ne i64 %244, 0
  %246 = xor i1 %245, true
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = load %struct.xt_physdev_info*, %struct.xt_physdev_info** %6, align 8
  %250 = getelementptr inbounds %struct.xt_physdev_info, %struct.xt_physdev_info* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @XT_PHYSDEV_OP_OUT, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = xor i32 %248, %256
  store i32 %257, i32* %3, align 4
  br label %258

258:                                              ; preds = %235, %234, %230, %220, %185, %127, %92, %91, %76, %61, %46, %31
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i32 @nf_bridge_info_exists(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @nf_bridge_get_physoutdev(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @nf_bridge_get_physindev(%struct.sk_buff*) #1

declare dso_local i64 @ifname_compare_aligned(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
