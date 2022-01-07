; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.key_parse = type { i64, %struct.TYPE_10__, i32, i64, i64, i64 }
%struct.TYPE_10__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_KEY_SET_TX = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_EXT_KEY_ID = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_KEYTYPE_PAIRWISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_key(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.key_parse, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 1
  %13 = load %struct.net_device**, %struct.net_device*** %12, align 8
  %14 = getelementptr inbounds %struct.net_device*, %struct.net_device** %13, i64 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = bitcast %struct.net_device* %15 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %6, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 1
  %19 = load %struct.net_device**, %struct.net_device*** %18, align 8
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %19, i64 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %9, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = call i32 @nl80211_parse_key(%struct.genl_info* %22, %struct.key_parse* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %202

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %202

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NL80211_KEY_SET_TX, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %202

52:                                               ; preds = %43, %39, %35
  %53 = load %struct.net_device*, %struct.net_device** %9, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call i32 @wdev_lock(%struct.TYPE_9__* %55)
  %57 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %52
  %61 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %62 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %196

70:                                               ; preds = %60
  %71 = load %struct.net_device*, %struct.net_device** %9, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i32 @nl80211_key_allowed(%struct.TYPE_9__* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %196

78:                                               ; preds = %70
  %79 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %80 = bitcast %struct.cfg80211_registered_device* %79 to %struct.net_device*
  %81 = load %struct.net_device*, %struct.net_device** %9, align 8
  %82 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @rdev_set_default_key(%struct.net_device* %80, %struct.net_device* %81, i64 %83, i64 %85, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %196

92:                                               ; preds = %78
  br label %195

93:                                               ; preds = %52
  %94 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %137

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101, %97
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %196

108:                                              ; preds = %101
  %109 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %110 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %109, i32 0, i32 2
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* @EOPNOTSUPP, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %196

118:                                              ; preds = %108
  %119 = load %struct.net_device*, %struct.net_device** %9, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = call i32 @nl80211_key_allowed(%struct.TYPE_9__* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %196

126:                                              ; preds = %118
  %127 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %128 = bitcast %struct.cfg80211_registered_device* %127 to %struct.net_device*
  %129 = load %struct.net_device*, %struct.net_device** %9, align 8
  %130 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @rdev_set_default_mgmt_key(%struct.net_device* %128, %struct.net_device* %129, i64 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %196

136:                                              ; preds = %126
  br label %194

137:                                              ; preds = %93
  %138 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @NL80211_KEY_SET_TX, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %190

143:                                              ; preds = %137
  %144 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %145 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %144, i32 0, i32 1
  %146 = load i32, i32* @NL80211_EXT_FEATURE_EXT_KEY_ID, align 4
  %147 = call i64 @wiphy_ext_feature_isset(i32* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %190

149:                                              ; preds = %143
  store i32* null, i32** %10, align 8
  %150 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %151 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %149
  %158 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %159 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = call i32* @nla_data(i64 %163)
  store i32* %164, i32** %10, align 8
  br label %165

165:                                              ; preds = %157, %149
  %166 = load i32*, i32** %10, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp sgt i64 %174, 1
  br i1 %175, label %176, label %179

176:                                              ; preds = %172, %168, %165
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %8, align 4
  br label %196

179:                                              ; preds = %172
  %180 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %181 = bitcast %struct.cfg80211_registered_device* %180 to %struct.net_device*
  %182 = load %struct.net_device*, %struct.net_device** %9, align 8
  %183 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  %187 = load i32*, i32** %10, align 8
  %188 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %7, i32 0, i32 1
  %189 = call i32 @rdev_add_key(%struct.net_device* %181, %struct.net_device* %182, i32 %185, i32 %186, i32* %187, %struct.TYPE_10__* %188)
  store i32 %189, i32* %8, align 4
  br label %193

190:                                              ; preds = %143, %137
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %190, %179
  br label %194

194:                                              ; preds = %193, %136
  br label %195

195:                                              ; preds = %194, %92
  br label %196

196:                                              ; preds = %195, %176, %135, %125, %115, %105, %91, %77, %67
  %197 = load %struct.net_device*, %struct.net_device** %9, align 8
  %198 = getelementptr inbounds %struct.net_device, %struct.net_device* %197, i32 0, i32 0
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = call i32 @wdev_unlock(%struct.TYPE_9__* %199)
  %201 = load i32, i32* %8, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %196, %49, %32, %26
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @nl80211_parse_key(%struct.genl_info*, %struct.key_parse*) #1

declare dso_local i32 @wdev_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @nl80211_key_allowed(%struct.TYPE_9__*) #1

declare dso_local i32 @rdev_set_default_key(%struct.net_device*, %struct.net_device*, i64, i64, i32) #1

declare dso_local i32 @rdev_set_default_mgmt_key(%struct.net_device*, %struct.net_device*, i64) #1

declare dso_local i64 @wiphy_ext_feature_isset(i32*, i32) #1

declare dso_local i32* @nla_data(i64) #1

declare dso_local i32 @rdev_add_key(%struct.net_device*, %struct.net_device*, i32, i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @wdev_unlock(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
