; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_mgd_deauth.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_mgd_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.cfg80211_deauth_request = type { i32, i32, i32 }

@IEEE80211_DEAUTH_FRAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"aborting authentication with %pM by local choice (Reason: %u=%s)\0A\00", align 1
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"aborting association with %pM by local choice (Reason: %u=%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"deauthenticating from %pM by local choice (Reason: %u=%s)\0A\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mgd_deauth(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_deauth_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_deauth_request*, align 8
  %6 = alloca %struct.ieee80211_if_managed*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_deauth_request* %1, %struct.cfg80211_deauth_request** %5, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.ieee80211_if_managed* %13, %struct.ieee80211_if_managed** %6, align 8
  %14 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %19 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %24, i32 0, i32 2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = icmp ne %struct.TYPE_9__* %26, null
  br i1 %27, label %28, label %81

28:                                               ; preds = %2
  %29 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %29, i32 0, i32 2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %37 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ether_addr_equal(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %81

41:                                               ; preds = %28
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %43 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %44 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %47 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %50 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ieee80211_get_reason_code_string(i32 %51)
  %53 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %42, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %52)
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %58 = call i32 @drv_mgd_prepare_tx(i32 %56, %struct.ieee80211_sub_if_data* %57, i32 0)
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %60 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %61 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %64 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %67 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %68 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @ieee80211_send_deauth_disassoc(%struct.ieee80211_sub_if_data* %59, i32 %62, i32 %65, i32 %66, i32 %69, i32 %70, i32* %17)
  %72 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %73 = call i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data* %72, i32 0)
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %75 = mul nuw i64 4, %15
  %76 = trunc i64 %75 to i32
  %77 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %78 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data* %74, i32* %17, i32 %76, i32 1, i32 %79)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %185

81:                                               ; preds = %28, %2
  %82 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %82, i32 0, i32 1
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = icmp ne %struct.TYPE_11__* %84, null
  br i1 %85, label %86, label %139

86:                                               ; preds = %81
  %87 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %95 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @ether_addr_equal(i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %139

99:                                               ; preds = %86
  %100 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %101 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %102 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %105 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %108 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ieee80211_get_reason_code_string(i32 %109)
  %111 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %100, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106, i32 %110)
  %112 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %113 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %116 = call i32 @drv_mgd_prepare_tx(i32 %114, %struct.ieee80211_sub_if_data* %115, i32 0)
  %117 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %118 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %119 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %122 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %125 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %126 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @ieee80211_send_deauth_disassoc(%struct.ieee80211_sub_if_data* %117, i32 %120, i32 %123, i32 %124, i32 %127, i32 %128, i32* %17)
  %130 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %131 = call i32 @ieee80211_destroy_assoc_data(%struct.ieee80211_sub_if_data* %130, i32 0, i32 1)
  %132 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %133 = mul nuw i64 4, %15
  %134 = trunc i64 %133 to i32
  %135 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %136 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data* %132, i32* %17, i32 %134, i32 1, i32 %137)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %185

139:                                              ; preds = %86, %81
  %140 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %141 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = icmp ne %struct.TYPE_12__* %142, null
  br i1 %143, label %144, label %182

144:                                              ; preds = %139
  %145 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %146 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %151 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @ether_addr_equal(i32 %149, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %144
  %156 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %157 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %158 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %161 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %164 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ieee80211_get_reason_code_string(i32 %165)
  %167 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %156, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %159, i32 %162, i32 %166)
  %168 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %169 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %170 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %171 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %168, i32 %169, i32 %172, i32 %173, i32* %17)
  %175 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %176 = mul nuw i64 4, %15
  %177 = trunc i64 %176 to i32
  %178 = load %struct.cfg80211_deauth_request*, %struct.cfg80211_deauth_request** %5, align 8
  %179 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data* %175, i32* %17, i32 %177, i32 1, i32 %180)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %185

182:                                              ; preds = %144, %139
  %183 = load i32, i32* @ENOTCONN, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %185

185:                                              ; preds = %182, %155, %99, %41
  %186 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ether_addr_equal(i32, i32) #2

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, i32, i32) #2

declare dso_local i32 @ieee80211_get_reason_code_string(i32) #2

declare dso_local i32 @drv_mgd_prepare_tx(i32, %struct.ieee80211_sub_if_data*, i32) #2

declare dso_local i32 @ieee80211_send_deauth_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data*, i32) #2

declare dso_local i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data*, i32*, i32, i32, i32) #2

declare dso_local i32 @ieee80211_destroy_assoc_data(%struct.ieee80211_sub_if_data*, i32, i32) #2

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
