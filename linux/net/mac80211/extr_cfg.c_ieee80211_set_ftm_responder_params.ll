; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_ftm_responder_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_ftm_responder_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { %struct.ieee80211_ftm_responder_params* }
%struct.ieee80211_ftm_responder_params = type { i64, i64, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, i32*, i64, i32*, i64)* @ieee80211_set_ftm_responder_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_set_ftm_responder_params(%struct.ieee80211_sub_if_data* %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ieee80211_ftm_responder_params*, align 8
  %13 = alloca %struct.ieee80211_ftm_responder_params*, align 8
  %14 = alloca %struct.ieee80211_bss_conf*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %88

23:                                               ; preds = %19, %5
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.ieee80211_bss_conf* %26, %struct.ieee80211_bss_conf** %14, align 8
  %27 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %14, align 8
  %28 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %27, i32 0, i32 0
  %29 = load %struct.ieee80211_ftm_responder_params*, %struct.ieee80211_ftm_responder_params** %28, align 8
  store %struct.ieee80211_ftm_responder_params* %29, %struct.ieee80211_ftm_responder_params** %13, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 32, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.ieee80211_ftm_responder_params* @kzalloc(i32 %37, i32 %38)
  store %struct.ieee80211_ftm_responder_params* %39, %struct.ieee80211_ftm_responder_params** %12, align 8
  %40 = load %struct.ieee80211_ftm_responder_params*, %struct.ieee80211_ftm_responder_params** %12, align 8
  %41 = icmp ne %struct.ieee80211_ftm_responder_params* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %23
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %88

45:                                               ; preds = %23
  %46 = load %struct.ieee80211_ftm_responder_params*, %struct.ieee80211_ftm_responder_params** %12, align 8
  %47 = getelementptr inbounds %struct.ieee80211_ftm_responder_params, %struct.ieee80211_ftm_responder_params* %46, i64 1
  %48 = bitcast %struct.ieee80211_ftm_responder_params* %47 to i32*
  store i32* %48, i32** %15, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.ieee80211_ftm_responder_params*, %struct.ieee80211_ftm_responder_params** %12, align 8
  %54 = getelementptr inbounds %struct.ieee80211_ftm_responder_params, %struct.ieee80211_ftm_responder_params* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = load %struct.ieee80211_ftm_responder_params*, %struct.ieee80211_ftm_responder_params** %12, align 8
  %57 = getelementptr inbounds %struct.ieee80211_ftm_responder_params, %struct.ieee80211_ftm_responder_params* %56, i32 0, i32 3
  store i32* %55, i32** %57, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @memcpy(i32* %58, i32* %59, i64 %60)
  %62 = load i64, i64* %9, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %15, align 8
  br label %65

65:                                               ; preds = %51, %45
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.ieee80211_ftm_responder_params*, %struct.ieee80211_ftm_responder_params** %12, align 8
  %71 = getelementptr inbounds %struct.ieee80211_ftm_responder_params, %struct.ieee80211_ftm_responder_params* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = load %struct.ieee80211_ftm_responder_params*, %struct.ieee80211_ftm_responder_params** %12, align 8
  %74 = getelementptr inbounds %struct.ieee80211_ftm_responder_params, %struct.ieee80211_ftm_responder_params* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @memcpy(i32* %75, i32* %76, i64 %77)
  %79 = load i64, i64* %11, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 %79
  store i32* %81, i32** %15, align 8
  br label %82

82:                                               ; preds = %68, %65
  %83 = load %struct.ieee80211_ftm_responder_params*, %struct.ieee80211_ftm_responder_params** %12, align 8
  %84 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %14, align 8
  %85 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %84, i32 0, i32 0
  store %struct.ieee80211_ftm_responder_params* %83, %struct.ieee80211_ftm_responder_params** %85, align 8
  %86 = load %struct.ieee80211_ftm_responder_params*, %struct.ieee80211_ftm_responder_params** %13, align 8
  %87 = call i32 @kfree(%struct.ieee80211_ftm_responder_params* %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %82, %42, %22
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.ieee80211_ftm_responder_params* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @kfree(%struct.ieee80211_ftm_responder_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
