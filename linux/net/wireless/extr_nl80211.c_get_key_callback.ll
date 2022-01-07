; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_get_key_callback.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_get_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_params = type { i64, i64, i32, i64, i32 }
%struct.nlattr = type { i32 }
%struct.get_key_cookie = type { i32, i32, i32 }

@NL80211_ATTR_KEY_DATA = common dso_local global i32 0, align 4
@NL80211_ATTR_KEY_SEQ = common dso_local global i32 0, align 4
@NL80211_ATTR_KEY_CIPHER = common dso_local global i32 0, align 4
@NL80211_ATTR_KEY = common dso_local global i32 0, align 4
@NL80211_KEY_DATA = common dso_local global i32 0, align 4
@NL80211_KEY_SEQ = common dso_local global i32 0, align 4
@NL80211_KEY_CIPHER = common dso_local global i32 0, align 4
@NL80211_KEY_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.key_params*)* @get_key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_key_callback(i8* %0, %struct.key_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.key_params*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.get_key_cookie*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.key_params* %1, %struct.key_params** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.get_key_cookie*
  store %struct.get_key_cookie* %8, %struct.get_key_cookie** %6, align 8
  %9 = load %struct.key_params*, %struct.key_params** %4, align 8
  %10 = getelementptr inbounds %struct.key_params, %struct.key_params* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.get_key_cookie*, %struct.get_key_cookie** %6, align 8
  %15 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NL80211_ATTR_KEY_DATA, align 4
  %18 = load %struct.key_params*, %struct.key_params** %4, align 8
  %19 = getelementptr inbounds %struct.key_params, %struct.key_params* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.key_params*, %struct.key_params** %4, align 8
  %22 = getelementptr inbounds %struct.key_params, %struct.key_params* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @nla_put(i32 %16, i32 %17, i32 %20, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %13, %2
  %27 = load %struct.key_params*, %struct.key_params** %4, align 8
  %28 = getelementptr inbounds %struct.key_params, %struct.key_params* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.get_key_cookie*, %struct.get_key_cookie** %6, align 8
  %33 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NL80211_ATTR_KEY_SEQ, align 4
  %36 = load %struct.key_params*, %struct.key_params** %4, align 8
  %37 = getelementptr inbounds %struct.key_params, %struct.key_params* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.key_params*, %struct.key_params** %4, align 8
  %40 = getelementptr inbounds %struct.key_params, %struct.key_params* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @nla_put(i32 %34, i32 %35, i32 %38, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %31, %26
  %45 = load %struct.key_params*, %struct.key_params** %4, align 8
  %46 = getelementptr inbounds %struct.key_params, %struct.key_params* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.get_key_cookie*, %struct.get_key_cookie** %6, align 8
  %51 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NL80211_ATTR_KEY_CIPHER, align 4
  %54 = load %struct.key_params*, %struct.key_params** %4, align 8
  %55 = getelementptr inbounds %struct.key_params, %struct.key_params* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @nla_put_u32(i32 %52, i32 %53, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49, %31, %13
  br label %138

60:                                               ; preds = %49, %44
  %61 = load %struct.get_key_cookie*, %struct.get_key_cookie** %6, align 8
  %62 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NL80211_ATTR_KEY, align 4
  %65 = call %struct.nlattr* @nla_nest_start_noflag(i32 %63, i32 %64)
  store %struct.nlattr* %65, %struct.nlattr** %5, align 8
  %66 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %67 = icmp ne %struct.nlattr* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %138

69:                                               ; preds = %60
  %70 = load %struct.key_params*, %struct.key_params** %4, align 8
  %71 = getelementptr inbounds %struct.key_params, %struct.key_params* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.get_key_cookie*, %struct.get_key_cookie** %6, align 8
  %76 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NL80211_KEY_DATA, align 4
  %79 = load %struct.key_params*, %struct.key_params** %4, align 8
  %80 = getelementptr inbounds %struct.key_params, %struct.key_params* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.key_params*, %struct.key_params** %4, align 8
  %83 = getelementptr inbounds %struct.key_params, %struct.key_params* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @nla_put(i32 %77, i32 %78, i32 %81, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %120, label %87

87:                                               ; preds = %74, %69
  %88 = load %struct.key_params*, %struct.key_params** %4, align 8
  %89 = getelementptr inbounds %struct.key_params, %struct.key_params* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load %struct.get_key_cookie*, %struct.get_key_cookie** %6, align 8
  %94 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @NL80211_KEY_SEQ, align 4
  %97 = load %struct.key_params*, %struct.key_params** %4, align 8
  %98 = getelementptr inbounds %struct.key_params, %struct.key_params* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.key_params*, %struct.key_params** %4, align 8
  %101 = getelementptr inbounds %struct.key_params, %struct.key_params* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @nla_put(i32 %95, i32 %96, i32 %99, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %92, %87
  %106 = load %struct.key_params*, %struct.key_params** %4, align 8
  %107 = getelementptr inbounds %struct.key_params, %struct.key_params* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load %struct.get_key_cookie*, %struct.get_key_cookie** %6, align 8
  %112 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NL80211_KEY_CIPHER, align 4
  %115 = load %struct.key_params*, %struct.key_params** %4, align 8
  %116 = getelementptr inbounds %struct.key_params, %struct.key_params* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @nla_put_u32(i32 %113, i32 %114, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110, %92, %74
  br label %138

121:                                              ; preds = %110, %105
  %122 = load %struct.get_key_cookie*, %struct.get_key_cookie** %6, align 8
  %123 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @NL80211_KEY_IDX, align 4
  %126 = load %struct.get_key_cookie*, %struct.get_key_cookie** %6, align 8
  %127 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @nla_put_u8(i32 %124, i32 %125, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %138

132:                                              ; preds = %121
  %133 = load %struct.get_key_cookie*, %struct.get_key_cookie** %6, align 8
  %134 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %137 = call i32 @nla_nest_end(i32 %135, %struct.nlattr* %136)
  br label %141

138:                                              ; preds = %131, %120, %68, %59
  %139 = load %struct.get_key_cookie*, %struct.get_key_cookie** %6, align 8
  %140 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %139, i32 0, i32 0
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %132
  ret void
}

declare dso_local i64 @nla_put(i32, i32, i32, i64) #1

declare dso_local i64 @nla_put_u32(i32, i32, i64) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(i32, i32) #1

declare dso_local i64 @nla_put_u8(i32, i32, i32) #1

declare dso_local i32 @nla_nest_end(i32, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
