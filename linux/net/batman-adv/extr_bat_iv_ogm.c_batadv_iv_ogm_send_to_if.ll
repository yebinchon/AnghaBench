; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_send_to_if.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_send_to_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_forw_packet = type { i32, %struct.TYPE_4__*, i32, %struct.batadv_hard_iface*, i32 }
%struct.TYPE_4__ = type { i64* }
%struct.batadv_hard_iface = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_ogm_packet = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }

@BATADV_IF_ACTIVE = common dso_local global i64 0, align 8
@BATADV_DIRECTLINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Forwarding\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Sending own\00", align 1
@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"%s %spacket (originator %pM, seqno %u, TQ %d, TTL %d, IDF %s) on interface %s [%pM]\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"aggregated \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@BATADV_OGM_HLEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BATADV_CNT_MGMT_TX = common dso_local global i32 0, align 4
@BATADV_CNT_MGMT_TX_BYTES = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_forw_packet*, %struct.batadv_hard_iface*)* @batadv_iv_ogm_send_to_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_iv_ogm_send_to_if(%struct.batadv_forw_packet* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.batadv_forw_packet*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.batadv_ogm_packet*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64*, align 8
  store %struct.batadv_forw_packet* %0, %struct.batadv_forw_packet** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %12 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %13 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.batadv_priv* @netdev_priv(i32 %14)
  store %struct.batadv_priv* %15, %struct.batadv_priv** %5, align 8
  %16 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %17 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BATADV_IF_ACTIVE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %159

22:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %23 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %24 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  store i64* %27, i64** %11, align 8
  %28 = load i64*, i64** %11, align 8
  %29 = bitcast i64* %28 to %struct.batadv_ogm_packet*
  store %struct.batadv_ogm_packet* %29, %struct.batadv_ogm_packet** %9, align 8
  br label %30

30:                                               ; preds = %75, %22
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %33 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %9, align 8
  %36 = call i64 @batadv_iv_ogm_aggr_packet(i32 %31, i32 %34, %struct.batadv_ogm_packet* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %136

38:                                               ; preds = %30
  %39 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %40 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @BIT(i64 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %48 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %47, i32 0, i32 3
  %49 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %48, align 8
  %50 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %51 = icmp eq %struct.batadv_hard_iface* %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* @BATADV_DIRECTLINK, align 4
  %54 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %9, align 8
  %55 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %65

58:                                               ; preds = %46, %38
  %59 = load i32, i32* @BATADV_DIRECTLINK, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %9, align 8
  %62 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %52
  %66 = load i64, i64* %7, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %70 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68, %65
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %75

74:                                               ; preds = %68
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %75

75:                                               ; preds = %74, %73
  %76 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %77 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp sgt i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %83 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %9, align 8
  %84 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %9, align 8
  %87 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ntohl(i32 %88)
  %90 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %9, align 8
  %91 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %9, align 8
  %94 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %9, align 8
  %97 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BATADV_DIRECTLINK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %104 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %105 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %110 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @batadv_dbg(i32 %76, %struct.batadv_priv* %77, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i8* %78, i8* %82, i32 %85, i32 %89, i32 %92, i32 %95, i8* %103, i32 %108, i32 %113)
  %115 = load i32, i32* @BATADV_OGM_HLEN, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %9, align 8
  %119 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ntohs(i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load i64, i64* %7, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %7, align 8
  %126 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %127 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  store i64* %133, i64** %11, align 8
  %134 = load i64*, i64** %11, align 8
  %135 = bitcast i64* %134 to %struct.batadv_ogm_packet*
  store %struct.batadv_ogm_packet* %135, %struct.batadv_ogm_packet** %9, align 8
  br label %30

136:                                              ; preds = %30
  %137 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %138 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* @GFP_ATOMIC, align 4
  %141 = call %struct.sk_buff* @skb_clone(%struct.TYPE_4__* %139, i32 %140)
  store %struct.sk_buff* %141, %struct.sk_buff** %10, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %143 = icmp ne %struct.sk_buff* %142, null
  br i1 %143, label %144, label %159

144:                                              ; preds = %136
  %145 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %146 = load i32, i32* @BATADV_CNT_MGMT_TX, align 4
  %147 = call i32 @batadv_inc_counter(%struct.batadv_priv* %145, i32 %146)
  %148 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %149 = load i32, i32* @BATADV_CNT_MGMT_TX_BYTES, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @ETH_HLEN, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @batadv_add_counter(%struct.batadv_priv* %148, i32 %149, i64 %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %158 = call i32 @batadv_send_broadcast_skb(%struct.sk_buff* %156, %struct.batadv_hard_iface* %157)
  br label %159

159:                                              ; preds = %21, %144, %136
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i64 @batadv_iv_ogm_aggr_packet(i32, i32, %struct.batadv_ogm_packet*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_add_counter(%struct.batadv_priv*, i32, i64) #1

declare dso_local i32 @batadv_send_broadcast_skb(%struct.sk_buff*, %struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
