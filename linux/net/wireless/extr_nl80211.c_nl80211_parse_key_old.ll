; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_key_old.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_key_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32, i64* }
%struct.key_parse = type { i32, i32, i32, i32, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.nlattr = type { i32 }

@NL80211_ATTR_KEY_DATA = common dso_local global i64 0, align 8
@NL80211_ATTR_KEY_SEQ = common dso_local global i64 0, align 8
@NL80211_ATTR_KEY_IDX = common dso_local global i64 0, align 8
@NL80211_ATTR_KEY_CIPHER = common dso_local global i64 0, align 8
@NL80211_ATTR_KEY_DEFAULT = common dso_local global i64 0, align 8
@NL80211_ATTR_KEY_DEFAULT_MGMT = common dso_local global i64 0, align 8
@NL80211_ATTR_KEY_TYPE = common dso_local global i64 0, align 8
@NL80211_ATTR_KEY_DEFAULT_TYPES = common dso_local global i64 0, align 8
@NUM_NL80211_KEY_DEFAULT_TYPES = common dso_local global i32 0, align 4
@nl80211_key_default_policy = common dso_local global i32 0, align 4
@NL80211_KEY_DEFAULT_TYPE_UNICAST = common dso_local global i64 0, align 8
@NL80211_KEY_DEFAULT_TYPE_MULTICAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.key_parse*)* @nl80211_parse_key_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_key_old(%struct.genl_info* %0, %struct.key_parse* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.key_parse*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.key_parse* %1, %struct.key_parse** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @NL80211_ATTR_KEY_DATA, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @NL80211_ATTR_KEY_DATA, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = call i8* @nla_data(i64 %23)
  %25 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %26 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i8* %24, i8** %27, align 8
  %28 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @NL80211_ATTR_KEY_DATA, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @nla_len(i64 %33)
  %35 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %36 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i8* %34, i8** %37, align 8
  br label %38

38:                                               ; preds = %17, %2
  %39 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @NL80211_ATTR_KEY_SEQ, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %38
  %47 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @NL80211_ATTR_KEY_SEQ, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @nla_data(i64 %52)
  %54 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %55 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i8* %53, i8** %56, align 8
  %57 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %58 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @NL80211_ATTR_KEY_SEQ, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @nla_len(i64 %62)
  %64 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %65 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  br label %67

67:                                               ; preds = %46, %38
  %68 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %69 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @NL80211_ATTR_KEY_IDX, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %67
  %76 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %77 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @NL80211_ATTR_KEY_IDX, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @nla_get_u8(i64 %81)
  %83 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %84 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %75, %67
  %86 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %87 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @NL80211_ATTR_KEY_CIPHER, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %85
  %94 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %95 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @NL80211_ATTR_KEY_CIPHER, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @nla_get_u32(i64 %99)
  %101 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %102 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  br label %104

104:                                              ; preds = %93, %85
  %105 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %106 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @NL80211_ATTR_KEY_DEFAULT, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  %112 = xor i1 %111, true
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %116 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %118 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @NL80211_ATTR_KEY_DEFAULT_MGMT, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  %124 = xor i1 %123, true
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %128 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %130 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %104
  %134 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %135 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %134, i32 0, i32 2
  store i32 1, i32* %135, align 8
  %136 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %137 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %136, i32 0, i32 3
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %133, %104
  %139 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %140 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %145 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %144, i32 0, i32 3
  store i32 1, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %138
  %147 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %148 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* @NL80211_ATTR_KEY_TYPE, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %146
  %155 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %156 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %155, i32 0, i32 1
  %157 = load i64*, i64** %156, align 8
  %158 = load i64, i64* @NL80211_ATTR_KEY_TYPE, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = call i8* @nla_get_u32(i64 %160)
  %162 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %163 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %162, i32 0, i32 4
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %154, %146
  %165 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %166 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i64, i64* @NL80211_ATTR_KEY_DEFAULT_TYPES, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %211

172:                                              ; preds = %164
  %173 = load i32, i32* @NUM_NL80211_KEY_DEFAULT_TYPES, align 4
  %174 = zext i32 %173 to i64
  %175 = call i8* @llvm.stacksave()
  store i8* %175, i8** %6, align 8
  %176 = alloca %struct.nlattr*, i64 %174, align 16
  store i64 %174, i64* %7, align 8
  %177 = load i32, i32* @NUM_NL80211_KEY_DEFAULT_TYPES, align 4
  %178 = sub nsw i32 %177, 1
  %179 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %180 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %179, i32 0, i32 1
  %181 = load i64*, i64** %180, align 8
  %182 = load i64, i64* @NL80211_ATTR_KEY_DEFAULT_TYPES, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* @nl80211_key_default_policy, align 4
  %186 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %187 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %176, i32 %178, i64 %184, i32 %185, i32 %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %172
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %207

194:                                              ; preds = %172
  %195 = load i64, i64* @NL80211_KEY_DEFAULT_TYPE_UNICAST, align 8
  %196 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %176, i64 %195
  %197 = load %struct.nlattr*, %struct.nlattr** %196, align 8
  %198 = ptrtoint %struct.nlattr* %197 to i32
  %199 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %200 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load i64, i64* @NL80211_KEY_DEFAULT_TYPE_MULTICAST, align 8
  %202 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %176, i64 %201
  %203 = load %struct.nlattr*, %struct.nlattr** %202, align 8
  %204 = ptrtoint %struct.nlattr* %203 to i32
  %205 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %206 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 4
  store i32 0, i32* %9, align 4
  br label %207

207:                                              ; preds = %194, %192
  %208 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %208)
  %209 = load i32, i32* %9, align 4
  switch i32 %209, label %214 [
    i32 0, label %210
    i32 1, label %212
  ]

210:                                              ; preds = %207
  br label %211

211:                                              ; preds = %210, %164
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %211, %207
  %213 = load i32, i32* %3, align 4
  ret i32 %213

214:                                              ; preds = %207
  unreachable
}

declare dso_local i8* @nla_data(i64) #1

declare dso_local i8* @nla_len(i64) #1

declare dso_local i32 @nla_get_u8(i64) #1

declare dso_local i8* @nla_get_u32(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i64, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
