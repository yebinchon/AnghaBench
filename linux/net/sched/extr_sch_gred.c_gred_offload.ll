; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32, i32 }
%struct.gred_sched = type { i32, %struct.gred_sched_data**, i32 }
%struct.gred_sched_data = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.net_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.net_device*, i32, %struct.tc_gred_qopt_offload*)* }
%struct.tc_gred_qopt_offload = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@TC_GRED_REPLACE = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_GRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, i32)* @gred_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gred_offload(%struct.Qdisc* %0, i32 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gred_sched*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.tc_gred_qopt_offload, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gred_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %11 = call %struct.gred_sched* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.gred_sched* %11, %struct.gred_sched** %5, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %13 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %12)
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = bitcast %struct.tc_gred_qopt_offload* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 56, i1 false)
  %15 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 0
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 2
  %18 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %19 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 8
  %21 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 3
  %22 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call i32 @tc_can_offload(%struct.net_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32 (%struct.net_device*, i32, %struct.tc_gred_qopt_offload*)*, i32 (%struct.net_device*, i32, %struct.tc_gred_qopt_offload*)** %32, align 8
  %34 = icmp ne i32 (%struct.net_device*, i32, %struct.tc_gred_qopt_offload*)* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28, %2
  br label %191

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @TC_GRED_REPLACE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %182

40:                                               ; preds = %36
  %41 = load %struct.gred_sched*, %struct.gred_sched** %5, align 8
  %42 = call i32 @gred_rio_mode(%struct.gred_sched* %41)
  %43 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.gred_sched*, %struct.gred_sched** %5, align 8
  %46 = call i32 @gred_wred_mode(%struct.gred_sched* %45)
  %47 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.gred_sched*, %struct.gred_sched** %5, align 8
  %50 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.gred_sched*, %struct.gred_sched** %5, align 8
  %55 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %174, %40
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.gred_sched*, %struct.gred_sched** %5, align 8
  %62 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %177

65:                                               ; preds = %59
  %66 = load %struct.gred_sched*, %struct.gred_sched** %5, align 8
  %67 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %66, i32 0, i32 1
  %68 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %68, i64 %70
  %72 = load %struct.gred_sched_data*, %struct.gred_sched_data** %71, align 8
  store %struct.gred_sched_data* %72, %struct.gred_sched_data** %9, align 8
  %73 = load %struct.gred_sched_data*, %struct.gred_sched_data** %9, align 8
  %74 = icmp ne %struct.gred_sched_data* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %174

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.gred_sched_data*, %struct.gred_sched_data** %9, align 8
  %85 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 8
  store i32 %86, i32* %93, align 8
  %94 = load %struct.gred_sched_data*, %struct.gred_sched_data** %9, align 8
  %95 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 7
  store i32 %96, i32* %103, align 4
  %104 = load %struct.gred_sched_data*, %struct.gred_sched_data** %9, align 8
  %105 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.gred_sched_data*, %struct.gred_sched_data** %9, align 8
  %109 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %107, %111
  %113 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32 %112, i32* %119, align 4
  %120 = load %struct.gred_sched_data*, %struct.gred_sched_data** %9, align 8
  %121 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.gred_sched_data*, %struct.gred_sched_data** %9, align 8
  %125 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %123, %127
  %129 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  store i32 %128, i32* %135, align 8
  %136 = load %struct.gred_sched_data*, %struct.gred_sched_data** %9, align 8
  %137 = call i32 @gred_use_ecn(%struct.gred_sched_data* %136)
  %138 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 6
  store i32 %137, i32* %144, align 8
  %145 = load %struct.gred_sched_data*, %struct.gred_sched_data** %9, align 8
  %146 = call i32 @gred_use_harddrop(%struct.gred_sched_data* %145)
  %147 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 5
  store i32 %146, i32* %153, align 4
  %154 = load %struct.gred_sched_data*, %struct.gred_sched_data** %9, align 8
  %155 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 4
  store i32 %157, i32* %164, align 8
  %165 = load %struct.gred_sched_data*, %struct.gred_sched_data** %9, align 8
  %166 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  store i32* %166, i32** %173, align 8
  br label %174

174:                                              ; preds = %76, %75
  %175 = load i32, i32* %8, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %59

177:                                              ; preds = %59
  %178 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %179 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %7, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  store i32* %179, i32** %181, align 8
  br label %182

182:                                              ; preds = %177, %36
  %183 = load %struct.net_device*, %struct.net_device** %6, align 8
  %184 = getelementptr inbounds %struct.net_device, %struct.net_device* %183, i32 0, i32 0
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32 (%struct.net_device*, i32, %struct.tc_gred_qopt_offload*)*, i32 (%struct.net_device*, i32, %struct.tc_gred_qopt_offload*)** %186, align 8
  %188 = load %struct.net_device*, %struct.net_device** %6, align 8
  %189 = load i32, i32* @TC_SETUP_QDISC_GRED, align 4
  %190 = call i32 %187(%struct.net_device* %188, i32 %189, %struct.tc_gred_qopt_offload* %7)
  br label %191

191:                                              ; preds = %182, %35
  ret void
}

declare dso_local %struct.gred_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tc_can_offload(%struct.net_device*) #1

declare dso_local i32 @gred_rio_mode(%struct.gred_sched*) #1

declare dso_local i32 @gred_wred_mode(%struct.gred_sched*) #1

declare dso_local i32 @gred_use_ecn(%struct.gred_sched_data*) #1

declare dso_local i32 @gred_use_harddrop(%struct.gred_sched_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
