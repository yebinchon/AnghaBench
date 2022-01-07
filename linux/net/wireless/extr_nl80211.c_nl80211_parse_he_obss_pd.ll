; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_he_obss_pd.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_he_obss_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.ieee80211_he_obss_pd = type { i64, i64, i32 }

@NL80211_HE_OBSS_PD_ATTR_MAX = common dso_local global i32 0, align 4
@he_obss_pd_policy = common dso_local global i32 0, align 4
@NL80211_HE_OBSS_PD_ATTR_MIN_OFFSET = common dso_local global i64 0, align 8
@NL80211_HE_OBSS_PD_ATTR_MAX_OFFSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.ieee80211_he_obss_pd*)* @nl80211_parse_he_obss_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_he_obss_pd(%struct.nlattr* %0, %struct.ieee80211_he_obss_pd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.ieee80211_he_obss_pd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.ieee80211_he_obss_pd* %1, %struct.ieee80211_he_obss_pd** %5, align 8
  %10 = load i32, i32* @NL80211_HE_OBSS_PD_ATTR_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca %struct.nlattr*, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @NL80211_HE_OBSS_PD_ATTR_MAX, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %17 = load i32, i32* @he_obss_pd_policy, align 4
  %18 = call i32 @nla_parse_nested(%struct.nlattr** %14, i32 %15, %struct.nlattr* %16, i32 %17, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %64

23:                                               ; preds = %2
  %24 = load i64, i64* @NL80211_HE_OBSS_PD_ATTR_MIN_OFFSET, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i64, i64* @NL80211_HE_OBSS_PD_ATTR_MAX_OFFSET, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %64

36:                                               ; preds = %28
  %37 = load i64, i64* @NL80211_HE_OBSS_PD_ATTR_MIN_OFFSET, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = call i8* @nla_get_u32(%struct.nlattr* %39)
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.ieee80211_he_obss_pd*, %struct.ieee80211_he_obss_pd** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_he_obss_pd, %struct.ieee80211_he_obss_pd* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* @NL80211_HE_OBSS_PD_ATTR_MAX_OFFSET, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i8* @nla_get_u32(%struct.nlattr* %46)
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.ieee80211_he_obss_pd*, %struct.ieee80211_he_obss_pd** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_he_obss_pd, %struct.ieee80211_he_obss_pd* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ieee80211_he_obss_pd*, %struct.ieee80211_he_obss_pd** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_he_obss_pd, %struct.ieee80211_he_obss_pd* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ieee80211_he_obss_pd*, %struct.ieee80211_he_obss_pd** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_he_obss_pd, %struct.ieee80211_he_obss_pd* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %36
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %64

61:                                               ; preds = %36
  %62 = load %struct.ieee80211_he_obss_pd*, %struct.ieee80211_he_obss_pd** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_he_obss_pd, %struct.ieee80211_he_obss_pd* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %58, %33, %21
  %65 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

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
