; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_txq_setup_flows.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_txq_setup_flows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32*, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.fq }
%struct.TYPE_10__ = type { i32, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.fq = type { i32, i32, i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@fq_skb_free_func = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_txq_setup_flows(%struct.ieee80211_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.fq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %10, i32 0, i32 4
  store %struct.fq* %11, %struct.fq** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %125

19:                                               ; preds = %1
  %20 = load %struct.fq*, %struct.fq** %4, align 8
  %21 = call i32 @fq_init(%struct.fq* %20, i32 4096)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %125

26:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %57, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %37, i64 %39
  %41 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %40, align 8
  store %struct.ieee80211_supported_band* %41, %struct.ieee80211_supported_band** %9, align 8
  %42 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %43 = icmp ne %struct.ieee80211_supported_band* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %31
  br label %57

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %48, %45
  %55 = phi i1 [ true, %45 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %44
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %27

60:                                               ; preds = %27
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load %struct.fq*, %struct.fq** %4, align 8
  %65 = getelementptr inbounds %struct.fq, %struct.fq* %64, i32 0, i32 0
  store i32 4194304, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %67, i32 0, i32 1
  %69 = call i32 @codel_params_init(%struct.TYPE_10__* %68)
  %70 = call i8* @MS2TIME(i32 100)
  %71 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %72 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = call i8* @MS2TIME(i32 20)
  %75 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %79 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.fq*, %struct.fq** %4, align 8
  %82 = getelementptr inbounds %struct.fq, %struct.fq* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32* @kcalloc(i32 %83, i32 4, i32 %84)
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %87 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  %88 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %104, label %92

92:                                               ; preds = %66
  %93 = load %struct.fq*, %struct.fq** %4, align 8
  %94 = getelementptr inbounds %struct.fq, %struct.fq* %93, i32 0, i32 2
  %95 = call i32 @spin_lock_bh(i32* %94)
  %96 = load %struct.fq*, %struct.fq** %4, align 8
  %97 = load i32, i32* @fq_skb_free_func, align 4
  %98 = call i32 @fq_reset(%struct.fq* %96, i32 %97)
  %99 = load %struct.fq*, %struct.fq** %4, align 8
  %100 = getelementptr inbounds %struct.fq, %struct.fq* %99, i32 0, i32 2
  %101 = call i32 @spin_unlock_bh(i32* %100)
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %125

104:                                              ; preds = %66
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %119, %104
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.fq*, %struct.fq** %4, align 8
  %108 = getelementptr inbounds %struct.fq, %struct.fq* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %113 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @codel_vars_init(i32* %117)
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %105

122:                                              ; preds = %105
  %123 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %124 = call i32 @ieee80211_txq_set_params(%struct.ieee80211_local* %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %122, %92, %24, %18
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @fq_init(%struct.fq*, i32) #1

declare dso_local i32 @codel_params_init(%struct.TYPE_10__*) #1

declare dso_local i8* @MS2TIME(i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fq_reset(%struct.fq*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @codel_vars_init(i32*) #1

declare dso_local i32 @ieee80211_txq_set_params(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
