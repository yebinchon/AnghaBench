; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.cbq_sched_data = type { %struct.TYPE_13__, i32, i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_11__*, i32, i32, i32, i8*, i8*, i8*, i32*, %struct.Qdisc*, %struct.TYPE_9__, %struct.TYPE_13__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.tc_ratespec = type { i32 }

@TCA_CBQ_MAX = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS_PINNED = common dso_local global i32 0, align 4
@cbq_undelay = common dso_local global i32 0, align 4
@TCA_CBQ_RTAB = common dso_local global i64 0, align 8
@TCA_CBQ_RATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Rate specification missing or incomplete\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global i32 0, align 4
@TC_CBQ_MAXPRIO = common dso_local global i8* null, align 8
@TC_CBQ_DEF_EWMA = common dso_local global i32 0, align 4
@TC_CBQ_MAXLEVEL = common dso_local global i32 0, align 4
@TCA_CBQ_LSSOPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @cbq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.cbq_sched_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tc_ratespec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %15 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %14)
  store %struct.cbq_sched_data* %15, %struct.cbq_sched_data** %8, align 8
  %16 = load i32, i32* @TCA_CBQ_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %22 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %21, i32 0, i32 5
  %23 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %24 = call i32 @qdisc_watchdog_init(i32* %22, %struct.Qdisc* %23)
  %25 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %26 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %25, i32 0, i32 4
  %27 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %28 = load i32, i32* @HRTIMER_MODE_ABS_PINNED, align 4
  %29 = call i32 @hrtimer_init(%struct.TYPE_12__* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @cbq_undelay, align 4
  %31 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %32 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %36 = call i32 @cbq_opt_parse(%struct.nlattr** %20, %struct.nlattr* %34, %struct.netlink_ext_ack* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %233

41:                                               ; preds = %3
  %42 = load i64, i64* @TCA_CBQ_RTAB, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i64, i64* @TCA_CBQ_RATE, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %53 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %233

56:                                               ; preds = %46
  %57 = load i64, i64* @TCA_CBQ_RATE, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call %struct.tc_ratespec* @nla_data(%struct.nlattr* %59)
  store %struct.tc_ratespec* %60, %struct.tc_ratespec** %11, align 8
  %61 = load %struct.tc_ratespec*, %struct.tc_ratespec** %11, align 8
  %62 = load i64, i64* @TCA_CBQ_RTAB, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %66 = call %struct.TYPE_11__* @qdisc_get_rtab(%struct.tc_ratespec* %61, %struct.nlattr* %64, %struct.netlink_ext_ack* %65)
  %67 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %68 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 4
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %69, align 8
  %70 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %71 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = icmp ne %struct.TYPE_11__* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %56
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %233

78:                                               ; preds = %56
  %79 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %80 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  %82 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %83 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 15
  %85 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %86 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %87 = call i32 @tcf_block_get(i32* %81, i32* %84, %struct.Qdisc* %85, %struct.netlink_ext_ack* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %226

91:                                               ; preds = %78
  %92 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %93 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %92, i32 0, i32 3
  %94 = call i32 @qdisc_class_hash_init(i32* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %220

98:                                               ; preds = %91
  %99 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %100 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %99, i32 0, i32 0
  %101 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %102 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 14
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %103, align 8
  %104 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %105 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %108 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 13
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 8
  %111 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %112 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %113 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 12
  store %struct.Qdisc* %111, %struct.Qdisc** %114, align 8
  %115 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %116 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %119 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32* @qdisc_create_dflt(i32 %117, i32* @pfifo_qdisc_ops, i32 %120, i32* null)
  %122 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %123 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 11
  store i32* %121, i32** %124, align 8
  %125 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %126 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 11
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %98
  %131 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %132 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 11
  store i32* @noop_qdisc, i32** %133, align 8
  br label %140

134:                                              ; preds = %98
  %135 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %136 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 11
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @qdisc_hash_add(i32* %138, i32 1)
  br label %140

140:                                              ; preds = %134, %130
  %141 = load i8*, i8** @TC_CBQ_MAXPRIO, align 8
  %142 = getelementptr i8, i8* %141, i64 -1
  %143 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %144 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 10
  store i8* %142, i8** %145, align 8
  %146 = load i8*, i8** @TC_CBQ_MAXPRIO, align 8
  %147 = getelementptr i8, i8* %146, i64 -1
  %148 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %149 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 9
  store i8* %147, i8** %150, align 8
  %151 = load i8*, i8** @TC_CBQ_MAXPRIO, align 8
  %152 = getelementptr i8, i8* %151, i64 -1
  %153 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %154 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 8
  store i8* %152, i8** %155, align 8
  %156 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %157 = call i32 @qdisc_dev(%struct.Qdisc* %156)
  %158 = call i32 @psched_mtu(i32 %157)
  %159 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %160 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 8
  %162 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %163 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %167 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  %169 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %170 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %177 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 7
  store i32 %175, i32* %178, align 8
  %179 = load i32, i32* @TC_CBQ_DEF_EWMA, align 4
  %180 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %181 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 6
  store i32 %179, i32* %182, align 4
  %183 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %184 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sdiv i32 %186, 2
  %188 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %189 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  store i32 %187, i32* %190, align 8
  %191 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %192 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 3
  store i32 -2147483647, i32* %193, align 4
  %194 = load i32, i32* @TC_CBQ_MAXLEVEL, align 4
  %195 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %196 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 4
  %197 = call i32 (...) @psched_get_time()
  %198 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %199 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 8
  %200 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %201 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %200, i32 0, i32 0
  %202 = call i32 @cbq_link_class(%struct.TYPE_13__* %201)
  %203 = load i64, i64* @TCA_CBQ_LSSOPT, align 8
  %204 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %203
  %205 = load %struct.nlattr*, %struct.nlattr** %204, align 8
  %206 = icmp ne %struct.nlattr* %205, null
  br i1 %206, label %207, label %215

207:                                              ; preds = %140
  %208 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %209 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %208, i32 0, i32 0
  %210 = load i64, i64* @TCA_CBQ_LSSOPT, align 8
  %211 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %210
  %212 = load %struct.nlattr*, %struct.nlattr** %211, align 8
  %213 = call %struct.tc_ratespec* @nla_data(%struct.nlattr* %212)
  %214 = call i32 @cbq_set_lss(%struct.TYPE_13__* %209, %struct.tc_ratespec* %213)
  br label %215

215:                                              ; preds = %207, %140
  %216 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %217 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %218 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %217, i32 0, i32 0
  %219 = call i32 @cbq_addprio(%struct.cbq_sched_data* %216, %struct.TYPE_13__* %218)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %233

220:                                              ; preds = %97
  %221 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %222 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @tcf_block_put(i32 %224)
  br label %226

226:                                              ; preds = %220, %90
  %227 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %8, align 8
  %228 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = call i32 @qdisc_put_rtab(%struct.TYPE_11__* %230)
  %232 = load i32, i32* %12, align 4
  store i32 %232, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %233

233:                                              ; preds = %226, %215, %75, %51, %39
  %234 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @qdisc_watchdog_init(i32*, %struct.Qdisc*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @cbq_opt_parse(%struct.nlattr**, %struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.tc_ratespec* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.TYPE_11__* @qdisc_get_rtab(%struct.tc_ratespec*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_block_get(i32*, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @qdisc_class_hash_init(i32*) #1

declare dso_local i32* @qdisc_create_dflt(i32, i32*, i32, i32*) #1

declare dso_local i32 @qdisc_hash_add(i32*, i32) #1

declare dso_local i32 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @psched_get_time(...) #1

declare dso_local i32 @cbq_link_class(%struct.TYPE_13__*) #1

declare dso_local i32 @cbq_set_lss(%struct.TYPE_13__*, %struct.tc_ratespec*) #1

declare dso_local i32 @cbq_addprio(%struct.cbq_sched_data*, %struct.TYPE_13__*) #1

declare dso_local i32 @tcf_block_put(i32) #1

declare dso_local i32 @qdisc_put_rtab(%struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
