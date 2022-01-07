; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_mesh_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_mesh_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32, i32*, %struct.cfg80211_registered_device** }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mesh_setup = type { i32, i64, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_MESH_SETUP_ATTR_MAX = common dso_local global i32 0, align 4
@NL80211_ATTR_MESH_SETUP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@nl80211_mesh_setup_params_policy = common dso_local global i32 0, align 4
@NL80211_MESH_SETUP_ENABLE_VENDOR_SYNC = common dso_local global i64 0, align 8
@IEEE80211_SYNC_METHOD_VENDOR = common dso_local global i32 0, align 4
@IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET = common dso_local global i32 0, align 4
@NL80211_MESH_SETUP_ENABLE_VENDOR_PATH_SEL = common dso_local global i64 0, align 8
@IEEE80211_PATH_PROTOCOL_VENDOR = common dso_local global i32 0, align 4
@IEEE80211_PATH_PROTOCOL_HWMP = common dso_local global i32 0, align 4
@NL80211_MESH_SETUP_ENABLE_VENDOR_METRIC = common dso_local global i64 0, align 8
@IEEE80211_PATH_METRIC_VENDOR = common dso_local global i32 0, align 4
@IEEE80211_PATH_METRIC_AIRTIME = common dso_local global i32 0, align 4
@NL80211_MESH_SETUP_IE = common dso_local global i64 0, align 8
@NL80211_MESH_SETUP_USERSPACE_MPM = common dso_local global i64 0, align 8
@NL80211_FEATURE_USERSPACE_MPM = common dso_local global i32 0, align 4
@NL80211_MESH_SETUP_USERSPACE_AUTH = common dso_local global i64 0, align 8
@NL80211_MESH_SETUP_USERSPACE_AMPE = common dso_local global i64 0, align 8
@NL80211_MESH_SETUP_AUTH_PROTOCOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.mesh_setup*)* @nl80211_parse_mesh_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_mesh_setup(%struct.genl_info* %0, %struct.mesh_setup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.mesh_setup*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.mesh_setup* %1, %struct.mesh_setup** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 2
  %13 = load %struct.cfg80211_registered_device**, %struct.cfg80211_registered_device*** %12, align 8
  %14 = getelementptr inbounds %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, i64 0
  %15 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %14, align 8
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %6, align 8
  %16 = load i32, i32* @NL80211_MESH_SETUP_ATTR_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @NL80211_ATTR_MESH_SETUP, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %186

31:                                               ; preds = %2
  %32 = load i32, i32* @NL80211_MESH_SETUP_ATTR_MAX, align 4
  %33 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @NL80211_ATTR_MESH_SETUP, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @nl80211_mesh_setup_params_policy, align 4
  %40 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @nla_parse_nested_deprecated(%struct.nlattr** %20, i32 %32, i32 %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %186

48:                                               ; preds = %31
  %49 = load i64, i64* @NL80211_MESH_SETUP_ENABLE_VENDOR_SYNC, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load i64, i64* @NL80211_MESH_SETUP_ENABLE_VENDOR_SYNC, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i64 @nla_get_u8(%struct.nlattr* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @IEEE80211_SYNC_METHOD_VENDOR, align 4
  br label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %66 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %48
  %68 = load i64, i64* @NL80211_MESH_SETUP_ENABLE_VENDOR_PATH_SEL, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load i64, i64* @NL80211_MESH_SETUP_ENABLE_VENDOR_PATH_SEL, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i64 @nla_get_u8(%struct.nlattr* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @IEEE80211_PATH_PROTOCOL_VENDOR, align 4
  br label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @IEEE80211_PATH_PROTOCOL_HWMP, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %85 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %67
  %87 = load i64, i64* @NL80211_MESH_SETUP_ENABLE_VENDOR_METRIC, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = icmp ne %struct.nlattr* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load i64, i64* @NL80211_MESH_SETUP_ENABLE_VENDOR_METRIC, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = call i64 @nla_get_u8(%struct.nlattr* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @IEEE80211_PATH_METRIC_VENDOR, align 4
  br label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @IEEE80211_PATH_METRIC_AIRTIME, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %104 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %86
  %106 = load i64, i64* @NL80211_MESH_SETUP_IE, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = icmp ne %struct.nlattr* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load i64, i64* @NL80211_MESH_SETUP_IE, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  store %struct.nlattr* %113, %struct.nlattr** %10, align 8
  %114 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %115 = call i32 @nla_data(%struct.nlattr* %114)
  %116 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %117 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %119 = call i32 @nla_len(%struct.nlattr* %118)
  %120 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %121 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %110, %105
  %123 = load i64, i64* @NL80211_MESH_SETUP_USERSPACE_MPM, align 8
  %124 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %123
  %125 = load %struct.nlattr*, %struct.nlattr** %124, align 8
  %126 = icmp ne %struct.nlattr* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %129 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @NL80211_FEATURE_USERSPACE_MPM, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %127
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %186

138:                                              ; preds = %127, %122
  %139 = load i64, i64* @NL80211_MESH_SETUP_USERSPACE_MPM, align 8
  %140 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %139
  %141 = load %struct.nlattr*, %struct.nlattr** %140, align 8
  %142 = call i8* @nla_get_flag(%struct.nlattr* %141)
  %143 = ptrtoint i8* %142 to i32
  %144 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %145 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i64, i64* @NL80211_MESH_SETUP_USERSPACE_AUTH, align 8
  %147 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %146
  %148 = load %struct.nlattr*, %struct.nlattr** %147, align 8
  %149 = call i8* @nla_get_flag(%struct.nlattr* %148)
  %150 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %151 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  %152 = load i64, i64* @NL80211_MESH_SETUP_USERSPACE_AMPE, align 8
  %153 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %152
  %154 = load %struct.nlattr*, %struct.nlattr** %153, align 8
  %155 = call i8* @nla_get_flag(%struct.nlattr* %154)
  %156 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %157 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %159 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %138
  %163 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %164 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  br label %165

165:                                              ; preds = %162, %138
  %166 = load i64, i64* @NL80211_MESH_SETUP_AUTH_PROTOCOL, align 8
  %167 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %166
  %168 = load %struct.nlattr*, %struct.nlattr** %167, align 8
  %169 = icmp ne %struct.nlattr* %168, null
  br i1 %169, label %170, label %185

170:                                              ; preds = %165
  %171 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %172 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %186

178:                                              ; preds = %170
  %179 = load i64, i64* @NL80211_MESH_SETUP_AUTH_PROTOCOL, align 8
  %180 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %179
  %181 = load %struct.nlattr*, %struct.nlattr** %180, align 8
  %182 = call i64 @nla_get_u8(%struct.nlattr* %181)
  %183 = load %struct.mesh_setup*, %struct.mesh_setup** %5, align 8
  %184 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %183, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %178, %165
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %186

186:                                              ; preds = %185, %175, %135, %45, %28
  %187 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #2

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i8* @nla_get_flag(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
