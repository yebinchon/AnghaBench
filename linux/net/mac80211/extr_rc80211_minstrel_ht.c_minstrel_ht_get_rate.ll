; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { void (i8*, %struct.ieee80211_sta*, i32*, %struct.ieee80211_tx_rate_control*)* }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_tx_rate_control = type { i32, i32 }
%struct.mcs_group = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32, i32, i32 }
%struct.minstrel_ht_sta_priv = type { i32, i32, %struct.minstrel_ht_sta }
%struct.minstrel_ht_sta = type { i32, i32, i64, i32 }
%struct.minstrel_priv = type { i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@mac80211_minstrel = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@IEEE80211_TX_CTRL_PORT_CTRL_PROTO = common dso_local global i32 0, align 4
@minstrel_mcs_groups = common dso_local global %struct.mcs_group* null, align 8
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*)* @minstrel_ht_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_get_rate(i8* %0, %struct.ieee80211_sta* %1, i8* %2, %struct.ieee80211_tx_rate_control* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_tx_rate_control*, align 8
  %9 = alloca %struct.mcs_group*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.ieee80211_tx_rate*, align 8
  %12 = alloca %struct.minstrel_ht_sta_priv*, align 8
  %13 = alloca %struct.minstrel_ht_sta*, align 8
  %14 = alloca %struct.minstrel_priv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ieee80211_tx_rate_control* %3, %struct.ieee80211_tx_rate_control** %8, align 8
  %17 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32 %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %10, align 8
  %21 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %23, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %24, i64 0
  store %struct.ieee80211_tx_rate* %25, %struct.ieee80211_tx_rate** %11, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.minstrel_ht_sta_priv*
  store %struct.minstrel_ht_sta_priv* %27, %struct.minstrel_ht_sta_priv** %12, align 8
  %28 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %29 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %28, i32 0, i32 2
  store %struct.minstrel_ht_sta* %29, %struct.minstrel_ht_sta** %13, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to %struct.minstrel_priv*
  store %struct.minstrel_priv* %31, %struct.minstrel_priv** %14, align 8
  %32 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %33 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %4
  %37 = load void (i8*, %struct.ieee80211_sta*, i32*, %struct.ieee80211_tx_rate_control*)*, void (i8*, %struct.ieee80211_sta*, i32*, %struct.ieee80211_tx_rate_control*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mac80211_minstrel, i32 0, i32 0), align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %40 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %41 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %40, i32 0, i32 0
  %42 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  call void %37(i8* %38, %struct.ieee80211_sta* %39, i32* %41, %struct.ieee80211_tx_rate_control* %42)
  br label %197

43:                                               ; preds = %4
  %44 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %43
  %51 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %52 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MCS_GROUP_RATES, align 4
  %55 = sdiv i32 %53, %54
  %56 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %60 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @minstrel_aggr_check(%struct.ieee80211_sta* %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %50, %43
  %65 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %66 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %69 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.minstrel_priv*, %struct.minstrel_priv** %14, align 8
  %73 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %87

78:                                               ; preds = %64
  %79 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %80 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IEEE80211_TX_CTRL_PORT_CTRL_PROTO, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 -1, i32* %15, align 4
  br label %91

87:                                               ; preds = %78, %64
  %88 = load %struct.minstrel_priv*, %struct.minstrel_priv** %14, align 8
  %89 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %90 = call i32 @minstrel_get_sample_rate(%struct.minstrel_priv* %88, %struct.minstrel_ht_sta* %89)
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %87, %86
  %92 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %93 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %97 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %102 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %101, i32 0, i32 3
  store i32 0, i32* %102, align 8
  %103 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %104 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %100, %91
  %106 = load i32, i32* %15, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %197

109:                                              ; preds = %105
  %110 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @MCS_GROUP_RATES, align 4
  %113 = sdiv i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %110, i64 %114
  store %struct.mcs_group* %115, %struct.mcs_group** %9, align 8
  %116 = load i32, i32* @MCS_GROUP_RATES, align 4
  %117 = load i32, i32* %15, align 4
  %118 = srem i32 %117, %116
  store i32 %118, i32* %15, align 4
  %119 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %120 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %121 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %120, i64 %122
  %124 = icmp eq %struct.mcs_group* %119, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %109
  %126 = load i32, i32* %15, align 4
  %127 = icmp sge i32 %126, 4
  %128 = zext i1 %127 to i32
  %129 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %130 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %197

134:                                              ; preds = %125, %109
  %135 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %136 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %137 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %141 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %140, i32 0, i32 0
  store i32 1, i32* %141, align 4
  %142 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %143 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %144 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %143, i64 %145
  %147 = icmp eq %struct.mcs_group* %142, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %134
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.minstrel_priv*, %struct.minstrel_priv** %14, align 8
  %151 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @ARRAY_SIZE(i32* %152)
  %154 = srem i32 %149, %153
  store i32 %154, i32* %16, align 4
  %155 = load %struct.minstrel_priv*, %struct.minstrel_priv** %14, align 8
  %156 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %163 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  br label %191

164:                                              ; preds = %134
  %165 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %166 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %164
  %172 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* @MCS_GROUP_RATES, align 4
  %175 = srem i32 %173, %174
  %176 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %177 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ieee80211_rate_set_vht(%struct.ieee80211_tx_rate* %172, i32 %175, i32 %178)
  br label %190

180:                                              ; preds = %164
  %181 = load i32, i32* %15, align 4
  %182 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %183 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %184, 1
  %186 = mul nsw i32 %185, 8
  %187 = add nsw i32 %181, %186
  %188 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %189 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %180, %171
  br label %191

191:                                              ; preds = %190, %148
  %192 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %193 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %196 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %191, %133, %108, %36
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32) #1

declare dso_local i32 @minstrel_aggr_check(%struct.ieee80211_sta*, i32) #1

declare dso_local i32 @minstrel_get_sample_rate(%struct.minstrel_priv*, %struct.minstrel_ht_sta*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ieee80211_rate_set_vht(%struct.ieee80211_tx_rate*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
