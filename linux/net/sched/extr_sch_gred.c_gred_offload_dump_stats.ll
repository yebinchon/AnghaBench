; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_offload_dump_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_offload_dump_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.gred_sched = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.tc_gred_qopt_offload = type { %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__*, i32** }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TC_GRED_STATS = common dso_local global i32 0, align 4
@MAX_DPs = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_GRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*)* @gred_offload_dump_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gred_offload_dump_stats(%struct.Qdisc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.gred_sched*, align 8
  %5 = alloca %struct.tc_gred_qopt_offload*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.gred_sched* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.gred_sched* %9, %struct.gred_sched** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.tc_gred_qopt_offload* @kzalloc(i32 40, i32 %10)
  store %struct.tc_gred_qopt_offload* %11, %struct.tc_gred_qopt_offload** %5, align 8
  %12 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %13 = icmp ne %struct.tc_gred_qopt_offload* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %255

17:                                               ; preds = %1
  %18 = load i32, i32* @TC_GRED_STATS, align 4
  %19 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %20 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %22 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %25 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %30 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %61, %17
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAX_DPs, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %31
  %36 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %37 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %35
  %45 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %46 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %54 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  store i32* %52, i32** %59, align 8
  br label %60

60:                                               ; preds = %44, %35
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %31

64:                                               ; preds = %31
  %65 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %66 = load i32, i32* @TC_SETUP_QDISC_GRED, align 4
  %67 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %68 = call i32 @qdisc_offload_dump_helper(%struct.Qdisc* %65, i32 %66, %struct.tc_gred_qopt_offload* %67)
  store i32 %68, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %248, %64
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @MAX_DPs, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %251

73:                                               ; preds = %69
  %74 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %75 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %78
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %248

83:                                               ; preds = %73
  %84 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %85 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %94 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %95, i64 %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %92
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %106 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %115 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %116, i64 %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %113
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 4
  %126 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %127 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %136 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %137, i64 %139
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %134
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  %147 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %148 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %147, i32 0, i32 1
  %149 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %150 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %159 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @_bstats_update(i32* %148, i64 %157, i64 %166)
  %168 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %169 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %178 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %176
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 4
  %184 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %185 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %194 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %192
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 4
  %200 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %201 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %210 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %208
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %211, align 4
  %216 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %217 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %226 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %229, %224
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %227, align 4
  %232 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %233 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %242 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %245, %240
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %243, align 4
  br label %248

248:                                              ; preds = %83, %82
  %249 = load i32, i32* %6, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %6, align 4
  br label %69

251:                                              ; preds = %69
  %252 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %5, align 8
  %253 = call i32 @kfree(%struct.tc_gred_qopt_offload* %252)
  %254 = load i32, i32* %7, align 4
  store i32 %254, i32* %2, align 4
  br label %255

255:                                              ; preds = %251, %14
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local %struct.gred_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.tc_gred_qopt_offload* @kzalloc(i32, i32) #1

declare dso_local i32 @qdisc_offload_dump_helper(%struct.Qdisc*, i32, %struct.tc_gred_qopt_offload*) #1

declare dso_local i32 @_bstats_update(i32*, i64, i64) #1

declare dso_local i32 @kfree(%struct.tc_gred_qopt_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
