; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_pmsr.c_pmsr_parse_ftm.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_pmsr.c_pmsr_parse_ftm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.cfg80211_pmsr_capabilities* }
%struct.cfg80211_pmsr_capabilities = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.cfg80211_pmsr_request_peer = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i64, i32, i32, i32, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.genl_info = type { i32 }

@NL80211_PMSR_FTM_REQ_ATTR_MAX = common dso_local global i32 0, align 4
@NL80211_PREAMBLE_DMG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"FTM: unsupported bandwidth\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NL80211_PMSR_FTM_REQ_ATTR_PREAMBLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"FTM: must specify preamble\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"FTM: invalid preamble\00", align 1
@NL80211_PMSR_FTM_REQ_ATTR_BURST_PERIOD = common dso_local global i64 0, align 8
@NL80211_PMSR_FTM_REQ_ATTR_ASAP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"FTM: ASAP mode not supported\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"FTM: non-ASAP mode not supported\00", align 1
@NL80211_PMSR_FTM_REQ_ATTR_NUM_BURSTS_EXP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [64 x i8] c"FTM: max NUM_BURSTS_EXP must be set lower than the device limit\00", align 1
@NL80211_PMSR_FTM_REQ_ATTR_BURST_DURATION = common dso_local global i64 0, align 8
@NL80211_PMSR_FTM_REQ_ATTR_FTMS_PER_BURST = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [73 x i8] c"FTM: FTMs per burst must be set lower than the device limit but non-zero\00", align 1
@NL80211_PMSR_FTM_REQ_ATTR_NUM_FTMR_RETRIES = common dso_local global i64 0, align 8
@NL80211_PMSR_FTM_REQ_ATTR_REQUEST_LCI = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"FTM: LCI request not supported\00", align 1
@NL80211_PMSR_FTM_REQ_ATTR_REQUEST_CIVICLOC = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [42 x i8] c"FTM: civic location request not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.nlattr*, %struct.cfg80211_pmsr_request_peer*, %struct.genl_info*)* @pmsr_parse_ftm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmsr_parse_ftm(%struct.cfg80211_registered_device* %0, %struct.nlattr* %1, %struct.cfg80211_pmsr_request_peer* %2, %struct.genl_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.cfg80211_pmsr_request_peer*, align 8
  %9 = alloca %struct.genl_info*, align 8
  %10 = alloca %struct.cfg80211_pmsr_capabilities*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.nlattr* %1, %struct.nlattr** %7, align 8
  store %struct.cfg80211_pmsr_request_peer* %2, %struct.cfg80211_pmsr_request_peer** %8, align 8
  store %struct.genl_info* %3, %struct.genl_info** %9, align 8
  %15 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %16 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %17, align 8
  store %struct.cfg80211_pmsr_capabilities* %18, %struct.cfg80211_pmsr_capabilities** %10, align 8
  %19 = load i32, i32* @NL80211_PMSR_FTM_REQ_ATTR_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i8*, i8** @NL80211_PREAMBLE_DMG, align 8
  store i8* %24, i8** %13, align 8
  %25 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %26 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %27, align 8
  %29 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %33 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @BIT(i8* %35)
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %4
  %40 = load %struct.genl_info*, %struct.genl_info** %9, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @NL_SET_ERR_MSG(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %360

46:                                               ; preds = %4
  %47 = load i32, i32* @NL80211_PMSR_FTM_REQ_ATTR_MAX, align 4
  %48 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %49 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %23, i32 %47, %struct.nlattr* %48, i32* null, i32* null)
  %50 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_PREAMBLE, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_PREAMBLE, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i8* @nla_get_u32(%struct.nlattr* %57)
  store i8* %58, i8** %13, align 8
  br label %59

59:                                               ; preds = %54, %46
  %60 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %61 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %64 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %70 [
    i32 128, label %69
  ]

69:                                               ; preds = %59
  br label %83

70:                                               ; preds = %59
  %71 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_PREAMBLE, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = load %struct.genl_info*, %struct.genl_info** %9, align 8
  %77 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @NL_SET_ERR_MSG(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %360

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %69
  %84 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %10, align 8
  %85 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @BIT(i8* %88)
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %83
  %93 = load %struct.genl_info*, %struct.genl_info** %9, align 8
  %94 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_PREAMBLE, align 8
  %97 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %96
  %98 = load %struct.nlattr*, %struct.nlattr** %97, align 8
  %99 = call i32 @NL_SET_ERR_MSG_ATTR(i32 %95, %struct.nlattr* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %360

102:                                              ; preds = %83
  %103 = load i8*, i8** %13, align 8
  %104 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %105 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 9
  store i8* %103, i8** %106, align 8
  %107 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %108 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 8
  store i8* null, i8** %109, align 8
  %110 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_BURST_PERIOD, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = icmp ne %struct.nlattr* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %102
  %115 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_BURST_PERIOD, align 8
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = call i8* @nla_get_u32(%struct.nlattr* %117)
  %119 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %120 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 8
  store i8* %118, i8** %121, align 8
  br label %122

122:                                              ; preds = %114, %102
  %123 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_ASAP, align 8
  %124 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %123
  %125 = load %struct.nlattr*, %struct.nlattr** %124, align 8
  %126 = icmp ne %struct.nlattr* %125, null
  %127 = xor i1 %126, true
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %131 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %134 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %122
  %139 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %10, align 8
  %140 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %138
  %145 = load %struct.genl_info*, %struct.genl_info** %9, align 8
  %146 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_ASAP, align 8
  %149 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %148
  %150 = load %struct.nlattr*, %struct.nlattr** %149, align 8
  %151 = call i32 @NL_SET_ERR_MSG_ATTR(i32 %147, %struct.nlattr* %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %360

154:                                              ; preds = %138, %122
  %155 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %156 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %173, label %160

160:                                              ; preds = %154
  %161 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %10, align 8
  %162 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %160
  %167 = load %struct.genl_info*, %struct.genl_info** %9, align 8
  %168 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @NL_SET_ERR_MSG(i32 %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %360

173:                                              ; preds = %160, %154
  %174 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %175 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 2
  store i64 0, i64* %176, align 8
  %177 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_NUM_BURSTS_EXP, align 8
  %178 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %177
  %179 = load %struct.nlattr*, %struct.nlattr** %178, align 8
  %180 = icmp ne %struct.nlattr* %179, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %173
  %182 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_NUM_BURSTS_EXP, align 8
  %183 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %182
  %184 = load %struct.nlattr*, %struct.nlattr** %183, align 8
  %185 = call i8* @nla_get_u32(%struct.nlattr* %184)
  %186 = ptrtoint i8* %185 to i64
  %187 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %188 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  store i64 %186, i64* %189, align 8
  br label %190

190:                                              ; preds = %181, %173
  %191 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %10, align 8
  %192 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp sge i64 %194, 0
  br i1 %195, label %196, label %216

196:                                              ; preds = %190
  %197 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %198 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %10, align 8
  %202 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp sgt i64 %200, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %196
  %207 = load %struct.genl_info*, %struct.genl_info** %9, align 8
  %208 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_NUM_BURSTS_EXP, align 8
  %211 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %210
  %212 = load %struct.nlattr*, %struct.nlattr** %211, align 8
  %213 = call i32 @NL_SET_ERR_MSG_ATTR(i32 %209, %struct.nlattr* %212, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %360

216:                                              ; preds = %196, %190
  %217 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %218 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 3
  store i32 15, i32* %219, align 8
  %220 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_BURST_DURATION, align 8
  %221 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %220
  %222 = load %struct.nlattr*, %struct.nlattr** %221, align 8
  %223 = icmp ne %struct.nlattr* %222, null
  br i1 %223, label %224, label %233

224:                                              ; preds = %216
  %225 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_BURST_DURATION, align 8
  %226 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %225
  %227 = load %struct.nlattr*, %struct.nlattr** %226, align 8
  %228 = call i8* @nla_get_u32(%struct.nlattr* %227)
  %229 = ptrtoint i8* %228 to i32
  %230 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %231 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 3
  store i32 %229, i32* %232, align 8
  br label %233

233:                                              ; preds = %224, %216
  %234 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %235 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 4
  store i64 0, i64* %236, align 8
  %237 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_FTMS_PER_BURST, align 8
  %238 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %237
  %239 = load %struct.nlattr*, %struct.nlattr** %238, align 8
  %240 = icmp ne %struct.nlattr* %239, null
  br i1 %240, label %241, label %250

241:                                              ; preds = %233
  %242 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_FTMS_PER_BURST, align 8
  %243 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %242
  %244 = load %struct.nlattr*, %struct.nlattr** %243, align 8
  %245 = call i8* @nla_get_u32(%struct.nlattr* %244)
  %246 = ptrtoint i8* %245 to i64
  %247 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %248 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 4
  store i64 %246, i64* %249, align 8
  br label %250

250:                                              ; preds = %241, %233
  %251 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %10, align 8
  %252 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %282

256:                                              ; preds = %250
  %257 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %258 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 4
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %10, align 8
  %262 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = icmp sgt i64 %260, %264
  br i1 %265, label %272, label %266

266:                                              ; preds = %256
  %267 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %268 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %266, %256
  %273 = load %struct.genl_info*, %struct.genl_info** %9, align 8
  %274 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_FTMS_PER_BURST, align 8
  %277 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %276
  %278 = load %struct.nlattr*, %struct.nlattr** %277, align 8
  %279 = call i32 @NL_SET_ERR_MSG_ATTR(i32 %275, %struct.nlattr* %278, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0))
  %280 = load i32, i32* @EINVAL, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %360

282:                                              ; preds = %266, %250
  %283 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %284 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 5
  store i32 3, i32* %285, align 8
  %286 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_NUM_FTMR_RETRIES, align 8
  %287 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %286
  %288 = load %struct.nlattr*, %struct.nlattr** %287, align 8
  %289 = icmp ne %struct.nlattr* %288, null
  br i1 %289, label %290, label %299

290:                                              ; preds = %282
  %291 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_NUM_FTMR_RETRIES, align 8
  %292 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %291
  %293 = load %struct.nlattr*, %struct.nlattr** %292, align 8
  %294 = call i8* @nla_get_u32(%struct.nlattr* %293)
  %295 = ptrtoint i8* %294 to i32
  %296 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %297 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 5
  store i32 %295, i32* %298, align 8
  br label %299

299:                                              ; preds = %290, %282
  %300 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_REQUEST_LCI, align 8
  %301 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %300
  %302 = load %struct.nlattr*, %struct.nlattr** %301, align 8
  %303 = icmp ne %struct.nlattr* %302, null
  %304 = xor i1 %303, true
  %305 = xor i1 %304, true
  %306 = zext i1 %305 to i32
  %307 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %308 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 6
  store i32 %306, i32* %309, align 4
  %310 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %311 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %329

315:                                              ; preds = %299
  %316 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %10, align 8
  %317 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %329, label %321

321:                                              ; preds = %315
  %322 = load %struct.genl_info*, %struct.genl_info** %9, align 8
  %323 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_REQUEST_LCI, align 8
  %326 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %325
  %327 = load %struct.nlattr*, %struct.nlattr** %326, align 8
  %328 = call i32 @NL_SET_ERR_MSG_ATTR(i32 %324, %struct.nlattr* %327, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %329

329:                                              ; preds = %321, %315, %299
  %330 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_REQUEST_CIVICLOC, align 8
  %331 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %330
  %332 = load %struct.nlattr*, %struct.nlattr** %331, align 8
  %333 = icmp ne %struct.nlattr* %332, null
  %334 = xor i1 %333, true
  %335 = xor i1 %334, true
  %336 = zext i1 %335 to i32
  %337 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %338 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 7
  store i32 %336, i32* %339, align 8
  %340 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %8, align 8
  %341 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 7
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %359

345:                                              ; preds = %329
  %346 = load %struct.cfg80211_pmsr_capabilities*, %struct.cfg80211_pmsr_capabilities** %10, align 8
  %347 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, %struct.cfg80211_pmsr_capabilities* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %359, label %351

351:                                              ; preds = %345
  %352 = load %struct.genl_info*, %struct.genl_info** %9, align 8
  %353 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load i64, i64* @NL80211_PMSR_FTM_REQ_ATTR_REQUEST_CIVICLOC, align 8
  %356 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %355
  %357 = load %struct.nlattr*, %struct.nlattr** %356, align 8
  %358 = call i32 @NL_SET_ERR_MSG_ATTR(i32 %354, %struct.nlattr* %357, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %359

359:                                              ; preds = %351, %345, %329
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %360

360:                                              ; preds = %359, %272, %206, %166, %144, %92, %75, %39
  %361 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %361)
  %362 = load i32, i32* %5, align 4
  ret i32 %362
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BIT(i8*) #2

declare dso_local i32 @NL_SET_ERR_MSG(i32, i8*) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32*, i32*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(i32, %struct.nlattr*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
