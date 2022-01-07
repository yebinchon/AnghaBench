; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v3_checkentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v3_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, i32, i32, %struct.xt_set_info_target_v3* }
%struct.xt_set_info_target_v3 = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Cannot find add_set index %u as target\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Cannot find del_set index %u as target\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"mangle\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"--map-set only usable from mangle table\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPSET_FLAG_MAP_SKBPRIO = common dso_local global i32 0, align 4
@IPSET_FLAG_MAP_SKBQUEUE = common dso_local global i32 0, align 4
@NF_INET_FORWARD = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [85 x i8] c"mapping of prio or/and queue is allowed only from OUTPUT/FORWARD/POSTROUTING chains\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Cannot find map_set index %u as target\0A\00", align 1
@IPSET_DIM_MAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"SET target dimension over the limit!\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @set_target_v3_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target_v3_checkentry(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_set_info_target_v3*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %7 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %8 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %7, i32 0, i32 3
  %9 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %8, align 8
  store %struct.xt_set_info_target_v3* %9, %struct.xt_set_info_target_v3** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %11 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IPSET_INVALID_ID, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %18 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %21 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @ip_set_nfnl_get_byindex(i32 %19, i64 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @IPSET_INVALID_ID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %16
  %29 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %30 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %213

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %39 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IPSET_INVALID_ID, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %37
  %45 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %46 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %49 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @ip_set_nfnl_get_byindex(i32 %47, i64 %51)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @IPSET_INVALID_ID, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %44
  %57 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %58 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %195

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %67 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IPSET_INVALID_ID, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %135

72:                                               ; preds = %65
  %73 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %74 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @strncmp(i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %178

82:                                               ; preds = %72
  %83 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %84 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IPSET_FLAG_MAP_SKBPRIO, align 4
  %87 = and i32 %85, %86
  %88 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %89 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IPSET_FLAG_MAP_SKBQUEUE, align 4
  %92 = and i32 %90, %91
  %93 = or i32 %87, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %82
  %96 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %97 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @NF_INET_FORWARD, align 4
  %100 = shl i32 1, %99
  %101 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %102 = shl i32 1, %101
  %103 = or i32 %100, %102
  %104 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %105 = shl i32 1, %104
  %106 = or i32 %103, %105
  %107 = xor i32 %106, -1
  %108 = and i32 %98, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %95
  %111 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %178

114:                                              ; preds = %95, %82
  %115 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %116 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %119 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @ip_set_nfnl_get_byindex(i32 %117, i64 %121)
  store i64 %122, i64* %5, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @IPSET_INVALID_ID, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %114
  %127 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %128 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %130)
  %132 = load i32, i32* @ENOENT, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %178

134:                                              ; preds = %114
  br label %135

135:                                              ; preds = %134, %65
  %136 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %137 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @IPSET_DIM_MAX, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %156, label %142

142:                                              ; preds = %135
  %143 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %144 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @IPSET_DIM_MAX, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %156, label %149

149:                                              ; preds = %142
  %150 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %151 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @IPSET_DIM_MAX, align 8
  %155 = icmp sgt i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %149, %142, %135
  %157 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %158 = load i32, i32* @ERANGE, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  br label %161

160:                                              ; preds = %149
  store i32 0, i32* %2, align 4
  br label %213

161:                                              ; preds = %156
  %162 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %163 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @IPSET_INVALID_ID, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %161
  %169 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %170 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %173 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @ip_set_nfnl_put(i32 %171, i64 %175)
  br label %177

177:                                              ; preds = %168, %161
  br label %178

178:                                              ; preds = %177, %126, %110, %78
  %179 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %180 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @IPSET_INVALID_ID, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %178
  %186 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %187 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %190 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @ip_set_nfnl_put(i32 %188, i64 %192)
  br label %194

194:                                              ; preds = %185, %178
  br label %195

195:                                              ; preds = %194, %56
  %196 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %197 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @IPSET_INVALID_ID, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %195
  %203 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %204 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.xt_set_info_target_v3*, %struct.xt_set_info_target_v3** %4, align 8
  %207 = getelementptr inbounds %struct.xt_set_info_target_v3, %struct.xt_set_info_target_v3* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @ip_set_nfnl_put(i32 %205, i64 %209)
  br label %211

211:                                              ; preds = %202, %195
  %212 = load i32, i32* %6, align 4
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %211, %160, %28
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i64 @ip_set_nfnl_get_byindex(i32, i64) #1

declare dso_local i32 @pr_info_ratelimited(i8*, ...) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @ip_set_nfnl_put(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
