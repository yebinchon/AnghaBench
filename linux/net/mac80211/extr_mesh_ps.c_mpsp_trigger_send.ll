; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_mpsp_trigger_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_mpsp_trigger_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_2__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_FCTL_MOREDATA = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_RSPI = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_EOSP = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_PS_BUFFER = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"sending MPSP trigger%s%s to %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" RSPI\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" EOSP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, i32, i32)* @mpsp_trigger_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsp_trigger_send(%struct.sta_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca i32*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 1
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  store %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_sub_if_data** %7, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %16 = call %struct.sk_buff* @mps_qos_null_get(%struct.sta_info* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %82

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %24, %struct.ieee80211_hdr** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @IEEE80211_FCTL_MOREDATA, align 4
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %31 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %20
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %36 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* @IEEE80211_QOS_CTL_RSPI, align 4
  %41 = ashr i32 %40, 8
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @IEEE80211_QOS_CTL_EOSP, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %56)
  store %struct.ieee80211_tx_info* %57, %struct.ieee80211_tx_info** %10, align 8
  %58 = load i32, i32* @IEEE80211_TX_CTL_NO_PS_BUFFER, align 4
  %59 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %62 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %74 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %75 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mps_dbg(%struct.ieee80211_sub_if_data* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %69, i8* %73, i32 %77)
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %79, %struct.sk_buff* %80)
  br label %82

82:                                               ; preds = %55, %19
  ret void
}

declare dso_local %struct.sk_buff* @mps_qos_null_get(%struct.sta_info*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @mps_dbg(%struct.ieee80211_sub_if_data*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
