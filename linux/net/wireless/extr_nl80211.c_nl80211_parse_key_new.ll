; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_key_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_key_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32 }
%struct.nlattr = type { i32 }
%struct.key_parse = type { i32, i32, i32, i32, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

@NL80211_KEY_MAX = common dso_local global i32 0, align 4
@nl80211_key_policy = common dso_local global i32 0, align 4
@NL80211_KEY_DEFAULT = common dso_local global i64 0, align 8
@NL80211_KEY_DEFAULT_MGMT = common dso_local global i64 0, align 8
@NL80211_KEY_IDX = common dso_local global i64 0, align 8
@NL80211_KEY_DATA = common dso_local global i64 0, align 8
@NL80211_KEY_SEQ = common dso_local global i64 0, align 8
@NL80211_KEY_CIPHER = common dso_local global i64 0, align 8
@NL80211_KEY_TYPE = common dso_local global i64 0, align 8
@NL80211_KEY_DEFAULT_TYPES = common dso_local global i64 0, align 8
@NUM_NL80211_KEY_DEFAULT_TYPES = common dso_local global i32 0, align 4
@nl80211_key_default_policy = common dso_local global i32 0, align 4
@NL80211_KEY_DEFAULT_TYPE_UNICAST = common dso_local global i64 0, align 8
@NL80211_KEY_DEFAULT_TYPE_MULTICAST = common dso_local global i64 0, align 8
@NL80211_KEY_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.nlattr*, %struct.key_parse*)* @nl80211_parse_key_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_key_new(%struct.genl_info* %0, %struct.nlattr* %1, %struct.key_parse* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.key_parse*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.genl_info* %0, %struct.genl_info** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.key_parse* %2, %struct.key_parse** %7, align 8
  %14 = load i32, i32* @NL80211_KEY_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @NL80211_KEY_MAX, align 4
  %20 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %21 = load i32, i32* @nl80211_key_policy, align 4
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %18, i32 %19, %struct.nlattr* %20, i32 %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %198

30:                                               ; preds = %3
  %31 = load i64, i64* @NL80211_KEY_DEFAULT, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %39 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* @NL80211_KEY_DEFAULT_MGMT, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %48 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %50 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %30
  %54 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %55 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %57 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %56, i32 0, i32 3
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %30
  %59 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %60 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %65 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %64, i32 0, i32 3
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i64, i64* @NL80211_KEY_IDX, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i64, i64* @NL80211_KEY_IDX, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = call i8* @nla_get_u8(%struct.nlattr* %74)
  %76 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %77 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %71, %66
  %79 = load i64, i64* @NL80211_KEY_DATA, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = icmp ne %struct.nlattr* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load i64, i64* @NL80211_KEY_DATA, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i8* @nla_data(%struct.nlattr* %86)
  %88 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %89 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 5
  store i8* %87, i8** %90, align 8
  %91 = load i64, i64* @NL80211_KEY_DATA, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call i8* @nla_len(%struct.nlattr* %93)
  %95 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %96 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  store i8* %94, i8** %97, align 8
  br label %98

98:                                               ; preds = %83, %78
  %99 = load i64, i64* @NL80211_KEY_SEQ, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = icmp ne %struct.nlattr* %101, null
  br i1 %102, label %103, label %118

103:                                              ; preds = %98
  %104 = load i64, i64* @NL80211_KEY_SEQ, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = call i8* @nla_data(%struct.nlattr* %106)
  %108 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %109 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  store i8* %107, i8** %110, align 8
  %111 = load i64, i64* @NL80211_KEY_SEQ, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = call i8* @nla_len(%struct.nlattr* %113)
  %115 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %116 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  store i8* %114, i8** %117, align 8
  br label %118

118:                                              ; preds = %103, %98
  %119 = load i64, i64* @NL80211_KEY_CIPHER, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = icmp ne %struct.nlattr* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load i64, i64* @NL80211_KEY_CIPHER, align 8
  %125 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %124
  %126 = load %struct.nlattr*, %struct.nlattr** %125, align 8
  %127 = call i8* @nla_get_u32(%struct.nlattr* %126)
  %128 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %129 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i8* %127, i8** %130, align 8
  br label %131

131:                                              ; preds = %123, %118
  %132 = load i64, i64* @NL80211_KEY_TYPE, align 8
  %133 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %132
  %134 = load %struct.nlattr*, %struct.nlattr** %133, align 8
  %135 = icmp ne %struct.nlattr* %134, null
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load i64, i64* @NL80211_KEY_TYPE, align 8
  %138 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %137
  %139 = load %struct.nlattr*, %struct.nlattr** %138, align 8
  %140 = call i8* @nla_get_u32(%struct.nlattr* %139)
  %141 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %142 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %141, i32 0, i32 5
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %136, %131
  %144 = load i64, i64* @NL80211_KEY_DEFAULT_TYPES, align 8
  %145 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %144
  %146 = load %struct.nlattr*, %struct.nlattr** %145, align 8
  %147 = icmp ne %struct.nlattr* %146, null
  br i1 %147, label %148, label %184

148:                                              ; preds = %143
  %149 = load i32, i32* @NUM_NL80211_KEY_DEFAULT_TYPES, align 4
  %150 = zext i32 %149 to i64
  %151 = call i8* @llvm.stacksave()
  store i8* %151, i8** %12, align 8
  %152 = alloca %struct.nlattr*, i64 %150, align 16
  store i64 %150, i64* %13, align 8
  %153 = load i32, i32* @NUM_NL80211_KEY_DEFAULT_TYPES, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load i64, i64* @NL80211_KEY_DEFAULT_TYPES, align 8
  %156 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %155
  %157 = load %struct.nlattr*, %struct.nlattr** %156, align 8
  %158 = load i32, i32* @nl80211_key_default_policy, align 4
  %159 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %160 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %152, i32 %154, %struct.nlattr* %157, i32 %158, i32 %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %148
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %180

167:                                              ; preds = %148
  %168 = load i64, i64* @NL80211_KEY_DEFAULT_TYPE_UNICAST, align 8
  %169 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %152, i64 %168
  %170 = load %struct.nlattr*, %struct.nlattr** %169, align 8
  %171 = ptrtoint %struct.nlattr* %170 to i32
  %172 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %173 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load i64, i64* @NL80211_KEY_DEFAULT_TYPE_MULTICAST, align 8
  %175 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %152, i64 %174
  %176 = load %struct.nlattr*, %struct.nlattr** %175, align 8
  %177 = ptrtoint %struct.nlattr* %176 to i32
  %178 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %179 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  store i32 0, i32* %11, align 4
  br label %180

180:                                              ; preds = %167, %165
  %181 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %181)
  %182 = load i32, i32* %11, align 4
  switch i32 %182, label %198 [
    i32 0, label %183
  ]

183:                                              ; preds = %180
  br label %184

184:                                              ; preds = %183, %143
  %185 = load i64, i64* @NL80211_KEY_MODE, align 8
  %186 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %185
  %187 = load %struct.nlattr*, %struct.nlattr** %186, align 8
  %188 = icmp ne %struct.nlattr* %187, null
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load i64, i64* @NL80211_KEY_MODE, align 8
  %191 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %190
  %192 = load %struct.nlattr*, %struct.nlattr** %191, align 8
  %193 = call i8* @nla_get_u8(%struct.nlattr* %192)
  %194 = load %struct.key_parse*, %struct.key_parse** %7, align 8
  %195 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  store i8* %193, i8** %196, align 8
  br label %197

197:                                              ; preds = %189, %184
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %198

198:                                              ; preds = %197, %180, %28
  %199 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32) #2

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local i8* @nla_len(%struct.nlattr*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
