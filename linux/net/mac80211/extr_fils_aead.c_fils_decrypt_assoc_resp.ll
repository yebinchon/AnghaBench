; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_fils_aead.c_fils_decrypt_assoc_resp.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_fils_aead.c_fils_decrypt_assoc_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_mgd_assoc_data = type { i32*, i32, i32 }
%struct.ieee80211_mgmt = type { i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WLAN_EID_EXT_FILS_SESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"No (valid) FILS Session element in (Re)Association Response frame from %pM\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@FILS_NONCE_LEN = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [103 x i8] c"Not enough room for AES-SIV data after FILS Session element in (Re)Association Response frame from %pM\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"AES-SIV decryption of (Re)Association Response frame from %pM failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fils_decrypt_assoc_resp(%struct.ieee80211_sub_if_data* %0, i32* %1, i64* %2, %struct.ieee80211_mgd_assoc_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ieee80211_mgd_assoc_data*, align 8
  %10 = alloca %struct.ieee80211_mgmt*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [6 x i32*], align 16
  %15 = alloca i32*, align 8
  %16 = alloca [6 x i64], align 16
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.ieee80211_mgd_assoc_data* %3, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = bitcast i8* %20 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %21, %struct.ieee80211_mgmt** %10, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %23, 30
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %153

28:                                               ; preds = %4
  %29 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %30 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32* %32, i32** %11, align 8
  %33 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %12, align 8
  %38 = load i32, i32* @WLAN_EID_EXT_FILS_SESSION, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32*, i32** %12, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32* @cfg80211_find_ext_ie(i32 %38, i32* %39, i32 %49)
  store i32* %50, i32** %15, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %28
  %54 = load i32*, i32** %15, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 9
  br i1 %57, label %58, label %66

58:                                               ; preds = %53, %28
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %60 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %61 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @mlme_dbg(%struct.ieee80211_sub_if_data* %59, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %153

66:                                               ; preds = %53
  %67 = load i32*, i32** %15, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  store i32* %70, i32** %13, align 8
  %71 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %72 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 0
  store i32* %73, i32** %74, align 16
  %75 = load i64, i64* @ETH_ALEN, align 8
  %76 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 0
  store i64 %75, i64* %76, align 16
  %77 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %78 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 1
  store i32* %79, i32** %80, align 8
  %81 = load i64, i64* @ETH_ALEN, align 8
  %82 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 1
  store i64 %81, i64* %82, align 8
  %83 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %84 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @FILS_NONCE_LEN, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 2
  store i32* %87, i32** %88, align 16
  %89 = load i64, i64* @FILS_NONCE_LEN, align 8
  %90 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 2
  store i64 %89, i64* %90, align 16
  %91 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %92 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 3
  store i32* %93, i32** %94, align 8
  %95 = load i64, i64* @FILS_NONCE_LEN, align 8
  %96 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 3
  store i64 %95, i64* %96, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 4
  store i32* %97, i32** %98, align 16
  %99 = load i32*, i32** %13, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = ptrtoint i32* %99 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 4
  store i64 %104, i64* %105, align 16
  %106 = load i32*, i32** %7, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32*, i32** %13, align 8
  %111 = ptrtoint i32* %109 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  store i64 %114, i64* %18, align 8
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %66
  %119 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %120 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %121 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @mlme_dbg(%struct.ieee80211_sub_if_data* %119, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i32* %122)
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %153

126:                                              ; preds = %66
  %127 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %128 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  %131 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = load i64, i64* %18, align 8
  %135 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 0
  %136 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 0
  %137 = load i32*, i32** %13, align 8
  %138 = call i32 @aes_siv_decrypt(i32 %129, i32 %132, i32* %133, i64 %134, i32 5, i32** %135, i64* %136, i32* %137)
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %126
  %142 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %143 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %144 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @mlme_dbg(%struct.ieee80211_sub_if_data* %142, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32* %145)
  %147 = load i32, i32* %17, align 4
  store i32 %147, i32* %5, align 4
  br label %153

148:                                              ; preds = %126
  %149 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %150 = load i64*, i64** %8, align 8
  %151 = load i64, i64* %150, align 8
  %152 = sub i64 %151, %149
  store i64 %152, i64* %150, align 8
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %148, %141, %118, %58, %25
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32* @cfg80211_find_ext_ie(i32, i32*, i32) #1

declare dso_local i32 @mlme_dbg(%struct.ieee80211_sub_if_data*, i8*, i32*) #1

declare dso_local i32 @aes_siv_decrypt(i32, i32, i32*, i64, i32, i32**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
