; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_parse_txq_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_parse_txq_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.ieee80211_txq_params = type { i32, i8*, i8*, i8*, i8* }

@NL80211_TXQ_ATTR_AC = common dso_local global i64 0, align 8
@NL80211_TXQ_ATTR_TXOP = common dso_local global i64 0, align 8
@NL80211_TXQ_ATTR_CWMIN = common dso_local global i64 0, align 8
@NL80211_TXQ_ATTR_CWMAX = common dso_local global i64 0, align 8
@NL80211_TXQ_ATTR_AIFS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_NUM_ACS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.ieee80211_txq_params*)* @parse_txq_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_txq_params(%struct.nlattr** %0, %struct.ieee80211_txq_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.ieee80211_txq_params*, align 8
  %6 = alloca i64, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.ieee80211_txq_params* %1, %struct.ieee80211_txq_params** %5, align 8
  %7 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %8 = load i64, i64* @NL80211_TXQ_ATTR_AC, align 8
  %9 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %7, i64 %8
  %10 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %14 = load i64, i64* @NL80211_TXQ_ATTR_TXOP, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %20 = load i64, i64* @NL80211_TXQ_ATTR_CWMIN, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %26 = load i64, i64* @NL80211_TXQ_ATTR_CWMAX, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %32 = load i64, i64* @NL80211_TXQ_ATTR_AIFS, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30, %24, %18, %12, %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %86

39:                                               ; preds = %30
  %40 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %41 = load i64, i64* @NL80211_TXQ_ATTR_AC, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i8* @nla_get_u8(%struct.nlattr* %43)
  %45 = ptrtoint i8* %44 to i64
  store i64 %45, i64* %6, align 8
  %46 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %47 = load i64, i64* @NL80211_TXQ_ATTR_TXOP, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = call i8* @nla_get_u16(%struct.nlattr* %49)
  %51 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %54 = load i64, i64* @NL80211_TXQ_ATTR_CWMIN, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i8* @nla_get_u16(%struct.nlattr* %56)
  %58 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %61 = load i64, i64* @NL80211_TXQ_ATTR_CWMAX, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i8* @nla_get_u16(%struct.nlattr* %63)
  %65 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %68 = load i64, i64* @NL80211_TXQ_ATTR_AIFS, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i8* @nla_get_u8(%struct.nlattr* %70)
  %72 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %5, align 8
  %73 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @NL80211_NUM_ACS, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %39
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %86

80:                                               ; preds = %39
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @NL80211_NUM_ACS, align 8
  %83 = call i32 @array_index_nospec(i64 %81, i64 %82)
  %84 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %5, align 8
  %85 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %80, %77, %36
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @array_index_nospec(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
