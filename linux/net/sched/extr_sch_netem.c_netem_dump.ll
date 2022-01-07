; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netem_sched_data = type { i64, %struct.tc_netem_slot, i64, i32, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.tc_netem_slot, %struct.tc_netem_slot, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.tc_netem_slot = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.nlattr = type { i32 }
%struct.tc_netem_qopt = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.tc_netem_corr = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.tc_netem_reorder = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.tc_netem_corrupt = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.tc_netem_rate = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@psched_tdiff_t = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_NETEM_LATENCY64 = common dso_local global i32 0, align 4
@TCA_NETEM_JITTER64 = common dso_local global i32 0, align 4
@TCA_NETEM_CORR = common dso_local global i32 0, align 4
@TCA_NETEM_REORDER = common dso_local global i32 0, align 4
@TCA_NETEM_CORRUPT = common dso_local global i32 0, align 4
@TCA_NETEM_RATE64 = common dso_local global i32 0, align 4
@TCA_NETEM_PAD = common dso_local global i32 0, align 4
@TCA_NETEM_RATE = common dso_local global i32 0, align 4
@TCA_NETEM_ECN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@TCA_NETEM_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @netem_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netem_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netem_sched_data*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.tc_netem_qopt, align 8
  %9 = alloca %struct.tc_netem_corr, align 8
  %10 = alloca %struct.tc_netem_reorder, align 8
  %11 = alloca %struct.tc_netem_corrupt, align 8
  %12 = alloca %struct.tc_netem_rate, align 8
  %13 = alloca %struct.tc_netem_slot, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %15 = call %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc* %14)
  store %struct.netem_sched_data* %15, %struct.netem_sched_data** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i64 @skb_tail_pointer(%struct.sk_buff* %16)
  %18 = inttoptr i64 %17 to %struct.nlattr*
  store %struct.nlattr* %18, %struct.nlattr** %7, align 8
  %19 = load i32, i32* @psched_tdiff_t, align 4
  %20 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %21 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %20, i32 0, i32 14
  %22 = call i32 @PSCHED_NS2TICKS(%struct.tc_netem_slot* byval(%struct.tc_netem_slot) align 8 %21)
  %23 = load i32, i32* @UINT_MAX, align 4
  %24 = call i8* @min_t(i32 %19, i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %8, i32 0, i32 19
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @psched_tdiff_t, align 4
  %27 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %28 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %27, i32 0, i32 13
  %29 = call i32 @PSCHED_NS2TICKS(%struct.tc_netem_slot* byval(%struct.tc_netem_slot) align 8 %28)
  %30 = load i32, i32* @UINT_MAX, align 4
  %31 = call i8* @min_t(i32 %26, i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %8, i32 0, i32 18
  store i8* %31, i8** %32, align 8
  %33 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %34 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %33, i32 0, i32 18
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %8, i32 0, i32 17
  store i32 %35, i32* %36, align 4
  %37 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %38 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %37, i32 0, i32 17
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %8, i32 0, i32 16
  store i32 %39, i32* %40, align 8
  %41 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %42 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %41, i32 0, i32 16
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %8, i32 0, i32 15
  store i32 %43, i32* %44, align 4
  %45 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %46 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %45, i32 0, i32 15
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %8, i32 0, i32 14
  store i32 %47, i32* %48, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load i32, i32* @TCA_OPTIONS, align 4
  %51 = bitcast %struct.tc_netem_qopt* %8 to %struct.tc_netem_slot*
  %52 = call i64 @nla_put(%struct.sk_buff* %49, i32 %50, i32 96, %struct.tc_netem_slot* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %2
  br label %232

55:                                               ; preds = %2
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load i32, i32* @TCA_NETEM_LATENCY64, align 4
  %58 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %59 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %58, i32 0, i32 14
  %60 = call i64 @nla_put(%struct.sk_buff* %56, i32 %57, i32 96, %struct.tc_netem_slot* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %232

63:                                               ; preds = %55
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load i32, i32* @TCA_NETEM_JITTER64, align 4
  %66 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %67 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %66, i32 0, i32 13
  %68 = call i64 @nla_put(%struct.sk_buff* %64, i32 %65, i32 96, %struct.tc_netem_slot* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %232

71:                                               ; preds = %63
  %72 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %73 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %72, i32 0, i32 12
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.tc_netem_corr, %struct.tc_netem_corr* %9, i32 0, i32 13
  store i32 %75, i32* %76, align 4
  %77 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %78 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %77, i32 0, i32 11
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.tc_netem_corr, %struct.tc_netem_corr* %9, i32 0, i32 12
  store i32 %80, i32* %81, align 8
  %82 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %83 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %82, i32 0, i32 10
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.tc_netem_corr, %struct.tc_netem_corr* %9, i32 0, i32 11
  store i32 %85, i32* %86, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load i32, i32* @TCA_NETEM_CORR, align 4
  %89 = bitcast %struct.tc_netem_corr* %9 to %struct.tc_netem_slot*
  %90 = call i64 @nla_put(%struct.sk_buff* %87, i32 %88, i32 96, %struct.tc_netem_slot* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %71
  br label %232

93:                                               ; preds = %71
  %94 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %95 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.tc_netem_reorder, %struct.tc_netem_reorder* %10, i32 0, i32 10
  store i32 %96, i32* %97, align 8
  %98 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %99 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %98, i32 0, i32 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.tc_netem_reorder, %struct.tc_netem_reorder* %10, i32 0, i32 9
  store i32 %101, i32* %102, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = load i32, i32* @TCA_NETEM_REORDER, align 4
  %105 = bitcast %struct.tc_netem_reorder* %10 to %struct.tc_netem_slot*
  %106 = call i64 @nla_put(%struct.sk_buff* %103, i32 %104, i32 96, %struct.tc_netem_slot* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %93
  br label %232

109:                                              ; preds = %93
  %110 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %111 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.tc_netem_corrupt, %struct.tc_netem_corrupt* %11, i32 0, i32 10
  store i32 %112, i32* %113, align 8
  %114 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %115 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.tc_netem_corrupt, %struct.tc_netem_corrupt* %11, i32 0, i32 9
  store i32 %117, i32* %118, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = load i32, i32* @TCA_NETEM_CORRUPT, align 4
  %121 = bitcast %struct.tc_netem_corrupt* %11 to %struct.tc_netem_slot*
  %122 = call i64 @nla_put(%struct.sk_buff* %119, i32 %120, i32 96, %struct.tc_netem_slot* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %109
  br label %232

125:                                              ; preds = %109
  %126 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %127 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp uge i64 %128, 4294967296
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = load i32, i32* @TCA_NETEM_RATE64, align 4
  %133 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %134 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @TCA_NETEM_PAD, align 4
  %137 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %131, i32 %132, i64 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %232

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.tc_netem_rate, %struct.tc_netem_rate* %12, i32 0, i32 0
  store i32 -1, i32* %141, align 8
  br label %148

142:                                              ; preds = %125
  %143 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %144 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = getelementptr inbounds %struct.tc_netem_rate, %struct.tc_netem_rate* %12, i32 0, i32 0
  store i32 %146, i32* %147, align 8
  br label %148

148:                                              ; preds = %142, %140
  %149 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %150 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.tc_netem_rate, %struct.tc_netem_rate* %12, i32 0, i32 8
  store i32 %151, i32* %152, align 8
  %153 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %154 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.tc_netem_rate, %struct.tc_netem_rate* %12, i32 0, i32 7
  store i32 %155, i32* %156, align 4
  %157 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %158 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.tc_netem_rate, %struct.tc_netem_rate* %12, i32 0, i32 6
  store i32 %159, i32* %160, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %162 = load i32, i32* @TCA_NETEM_RATE, align 4
  %163 = bitcast %struct.tc_netem_rate* %12 to %struct.tc_netem_slot*
  %164 = call i64 @nla_put(%struct.sk_buff* %161, i32 %162, i32 96, %struct.tc_netem_slot* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %148
  br label %232

167:                                              ; preds = %148
  %168 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %169 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = load i32, i32* @TCA_NETEM_ECN, align 4
  %175 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %176 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @nla_put_u32(%struct.sk_buff* %173, i32 %174, i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %232

181:                                              ; preds = %172, %167
  %182 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %184 = call i64 @dump_loss_model(%struct.netem_sched_data* %182, %struct.sk_buff* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %232

187:                                              ; preds = %181
  %188 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %189 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %193 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %191, %195
  %197 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %198 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %196, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %228

203:                                              ; preds = %187
  %204 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %205 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %204, i32 0, i32 1
  %206 = bitcast %struct.tc_netem_slot* %13 to i8*
  %207 = bitcast %struct.tc_netem_slot* %205 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %206, i8* align 8 %207, i64 96, i1 false)
  %208 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %13, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @INT_MAX, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %203
  %213 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %13, i32 0, i32 4
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %212, %203
  %215 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %13, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @INT_MAX, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.tc_netem_slot, %struct.tc_netem_slot* %13, i32 0, i32 5
  store i64 0, i64* %220, align 8
  br label %221

221:                                              ; preds = %219, %214
  %222 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %223 = load i32, i32* @TCA_NETEM_SLOT, align 4
  %224 = call i64 @nla_put(%struct.sk_buff* %222, i32 %223, i32 96, %struct.tc_netem_slot* %13)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %232

227:                                              ; preds = %221
  br label %228

228:                                              ; preds = %227, %187
  %229 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %230 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %231 = call i32 @nla_nest_end(%struct.sk_buff* %229, %struct.nlattr* %230)
  store i32 %231, i32* %3, align 4
  br label %236

232:                                              ; preds = %226, %186, %180, %166, %139, %124, %108, %92, %70, %62, %54
  %233 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %234 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %235 = call i32 @nlmsg_trim(%struct.sk_buff* %233, %struct.nlattr* %234)
  store i32 -1, i32* %3, align 4
  br label %236

236:                                              ; preds = %232, %228
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i8* @min_t(i32, i32, i32) #1

declare dso_local i32 @PSCHED_NS2TICKS(%struct.tc_netem_slot* byval(%struct.tc_netem_slot) align 8) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_netem_slot*) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @dump_loss_model(%struct.netem_sched_data*, %struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
