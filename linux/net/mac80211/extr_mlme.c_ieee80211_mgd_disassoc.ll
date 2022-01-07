; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_mgd_disassoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_mgd_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_disassoc_request = type { i32, i32, %struct.TYPE_4__* }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_DEAUTH_FRAME_LEN = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"disassociating from %pM by local choice (Reason: %u=%s)\0A\00", align 1
@IEEE80211_STYPE_DISASSOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mgd_disassoc(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_disassoc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_disassoc_request*, align 8
  %6 = alloca %struct.ieee80211_if_managed*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_disassoc_request* %1, %struct.cfg80211_disassoc_request** %5, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.ieee80211_if_managed* %13, %struct.ieee80211_if_managed** %6, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %25 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOLINK, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %72

31:                                               ; preds = %2
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %33 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %34 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %39 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %42 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ieee80211_get_reason_code_string(i32 %43)
  %45 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %32, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %44)
  %46 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %47 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcpy(i32* %17, i32 %50, i32 %51)
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %54 = load i32, i32* @IEEE80211_STYPE_DISASSOC, align 4
  %55 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %56 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %59 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %53, i32 %54, i32 %57, i32 %63, i32* %20)
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %66 = mul nuw i64 4, %19
  %67 = trunc i64 %66 to i32
  %68 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %5, align 8
  %69 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data* %65, i32* %20, i32 %67, i32 1, i32 %70)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %31, %28
  %73 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, i32, i32) #2

declare dso_local i32 @ieee80211_get_reason_code_string(i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #2

declare dso_local i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data*, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
