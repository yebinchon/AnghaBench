; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_ieee80211_mps_frame_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_ieee80211_mps_frame_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_4__*, i32*, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee802_11_elems = type { i32*, i32, i32 }

@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"%pM indicates buffered frames\0A\00", align 1
@WLAN_STA_PS_STA = common dso_local global i32 0, align 4
@WLAN_STA_MPSP_OWNER = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mps_frame_release(%struct.sta_info* %0, %struct.ieee802_11_elems* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee802_11_elems*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store %struct.ieee802_11_elems* %1, %struct.ieee802_11_elems** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %4, align 8
  %17 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %4, align 8
  %20 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ieee80211_check_tim(i32 %18, i32 %21, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %15, %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mps_dbg(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %31, %28
  %41 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %42 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %43 = call i64 @test_sta_flag(%struct.sta_info* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %4, align 8
  %47 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %4, align 8
  %52 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50, %45
  br label %118

58:                                               ; preds = %50, %40
  %59 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %60 = load i32, i32* @WLAN_STA_MPSP_OWNER, align 4
  %61 = call i64 @test_sta_flag(%struct.sta_info* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %92, label %63

63:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %88, %63
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i64 @skb_queue_len(i32* %74)
  %76 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %77 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i64 @skb_queue_len(i32* %81)
  %83 = add nsw i64 %75, %82
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %68
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %64

91:                                               ; preds = %64
  br label %92

92:                                               ; preds = %91, %58
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  br label %118

99:                                               ; preds = %95, %92
  %100 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %101 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @mpsp_trigger_send(%struct.sta_info* %108, i32 %109, i32 %113)
  br label %118

115:                                              ; preds = %99
  %116 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %117 = call i32 @mps_frame_deliver(%struct.sta_info* %116, i32 1)
  br label %118

118:                                              ; preds = %57, %98, %115, %107
  ret void
}

declare dso_local i32 @ieee80211_check_tim(i32, i32, i32) #1

declare dso_local i32 @mps_dbg(i32, i8*, i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @mpsp_trigger_send(%struct.sta_info*, i32, i32) #1

declare dso_local i32 @mps_frame_deliver(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
