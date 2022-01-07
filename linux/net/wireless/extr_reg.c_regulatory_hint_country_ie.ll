; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regulatory_hint_country_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regulatory_hint_country_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i64, i64, i8*, i32 }

@ENVIRON_ANY = common dso_local global i32 0, align 4
@IEEE80211_COUNTRY_IE_MIN_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENVIRON_INDOOR = common dso_local global i32 0, align 4
@ENVIRON_OUTDOOR = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i64 0, align 8
@WIPHY_IDX_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regulatory_hint_country_ie(%struct.wiphy* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.regulatory_request*, align 8
  %12 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @ENVIRON_ANY, align 4
  store i32 %13, i32* %10, align 4
  store %struct.regulatory_request* null, %struct.regulatory_request** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %107

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @IEEE80211_COUNTRY_IE_MIN_LEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %107

23:                                               ; preds = %18
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.regulatory_request* @kzalloc(i32 32, i32 %24)
  store %struct.regulatory_request* %25, %struct.regulatory_request** %11, align 8
  %26 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %27 = icmp ne %struct.regulatory_request* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %107

29:                                               ; preds = %23
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %33, i8* %34, align 1
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 %38, i8* %39, align 1
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 73
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* @ENVIRON_INDOOR, align 4
  store i32 %45, i32* %10, align 4
  br label %54

46:                                               ; preds = %29
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 79
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @ENVIRON_OUTDOOR, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %46
  br label %54

54:                                               ; preds = %53, %44
  %55 = call i32 (...) @rcu_read_lock()
  %56 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %56, %struct.regulatory_request** %12, align 8
  %57 = load %struct.regulatory_request*, %struct.regulatory_request** %12, align 8
  %58 = icmp ne %struct.regulatory_request* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %103

64:                                               ; preds = %54
  %65 = load %struct.regulatory_request*, %struct.regulatory_request** %12, align 8
  %66 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.regulatory_request*, %struct.regulatory_request** %12, align 8
  %72 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @WIPHY_IDX_INVALID, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %103

77:                                               ; preds = %70, %64
  %78 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %79 = call i64 @get_wiphy_idx(%struct.wiphy* %78)
  %80 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %81 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %85 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 %83, i8* %87, align 1
  %88 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %91 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  store i8 %89, i8* %93, align 1
  %94 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %95 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %96 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %99 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = call i32 (...) @reset_crda_timeouts()
  %101 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %102 = call i32 @queue_regulatory_request(%struct.regulatory_request* %101)
  store %struct.regulatory_request* null, %struct.regulatory_request** %11, align 8
  br label %103

103:                                              ; preds = %77, %76, %63
  %104 = load %struct.regulatory_request*, %struct.regulatory_request** %11, align 8
  %105 = call i32 @kfree(%struct.regulatory_request* %104)
  %106 = call i32 (...) @rcu_read_unlock()
  br label %107

107:                                              ; preds = %103, %28, %22, %17
  ret void
}

declare dso_local %struct.regulatory_request* @kzalloc(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_wiphy_idx(%struct.wiphy*) #1

declare dso_local i32 @reset_crda_timeouts(...) #1

declare dso_local i32 @queue_regulatory_request(%struct.regulatory_request*) #1

declare dso_local i32 @kfree(%struct.regulatory_request*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
