; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_fill_txq_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_fill_txq_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_txq_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.txq_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@NL80211_TXQ_STATS_BACKLOG_BYTES = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_BACKLOG_PACKETS = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_FLOWS = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_DROPS = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_ECN_MARKS = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_OVERLIMIT = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_COLLISIONS = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_TX_BYTES = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_TX_PACKETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_fill_txq_stats(%struct.cfg80211_txq_stats* %0, %struct.txq_info* %1) #0 {
  %3 = alloca %struct.cfg80211_txq_stats*, align 8
  %4 = alloca %struct.txq_info*, align 8
  store %struct.cfg80211_txq_stats* %0, %struct.cfg80211_txq_stats** %3, align 8
  store %struct.txq_info* %1, %struct.txq_info** %4, align 8
  %5 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %6 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NL80211_TXQ_STATS_BACKLOG_BYTES, align 4
  %9 = call i32 @BIT(i32 %8)
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @NL80211_TXQ_STATS_BACKLOG_BYTES, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %16 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %20 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %24 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %12, %2
  %26 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %27 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NL80211_TXQ_STATS_BACKLOG_PACKETS, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @NL80211_TXQ_STATS_BACKLOG_PACKETS, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %37 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %41 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %45 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %33, %25
  %47 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %48 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NL80211_TXQ_STATS_FLOWS, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @NL80211_TXQ_STATS_FLOWS, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %58 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %62 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %66 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %54, %46
  %68 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %69 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NL80211_TXQ_STATS_DROPS, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @NL80211_TXQ_STATS_DROPS, align 4
  %77 = call i32 @BIT(i32 %76)
  %78 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %79 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %83 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %87 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %75, %67
  %89 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %90 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NL80211_TXQ_STATS_ECN_MARKS, align 4
  %93 = call i32 @BIT(i32 %92)
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* @NL80211_TXQ_STATS_ECN_MARKS, align 4
  %98 = call i32 @BIT(i32 %97)
  %99 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %100 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %104 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %108 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %96, %88
  %110 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %111 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @NL80211_TXQ_STATS_OVERLIMIT, align 4
  %114 = call i32 @BIT(i32 %113)
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %130, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* @NL80211_TXQ_STATS_OVERLIMIT, align 4
  %119 = call i32 @BIT(i32 %118)
  %120 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %121 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %125 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %129 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %117, %109
  %131 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %132 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @NL80211_TXQ_STATS_COLLISIONS, align 4
  %135 = call i32 @BIT(i32 %134)
  %136 = and i32 %133, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %130
  %139 = load i32, i32* @NL80211_TXQ_STATS_COLLISIONS, align 4
  %140 = call i32 @BIT(i32 %139)
  %141 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %142 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %146 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %150 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %138, %130
  %152 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %153 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @NL80211_TXQ_STATS_TX_BYTES, align 4
  %156 = call i32 @BIT(i32 %155)
  %157 = and i32 %154, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %172, label %159

159:                                              ; preds = %151
  %160 = load i32, i32* @NL80211_TXQ_STATS_TX_BYTES, align 4
  %161 = call i32 @BIT(i32 %160)
  %162 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %163 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %167 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %171 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %159, %151
  %173 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %174 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @NL80211_TXQ_STATS_TX_PACKETS, align 4
  %177 = call i32 @BIT(i32 %176)
  %178 = and i32 %175, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %172
  %181 = load i32, i32* @NL80211_TXQ_STATS_TX_PACKETS, align 4
  %182 = call i32 @BIT(i32 %181)
  %183 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %184 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %188 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %3, align 8
  %192 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  br label %193

193:                                              ; preds = %180, %172
  ret void
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
