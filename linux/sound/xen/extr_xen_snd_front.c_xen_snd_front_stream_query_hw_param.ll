; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_xen_snd_front_stream_query_hw_param.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_xen_snd_front_stream_query_hw_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_evtchnl = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.xensnd_query_hw_param }
%struct.xensnd_query_hw_param = type { i32 }
%struct.xensnd_req = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.xensnd_query_hw_param }

@XENSND_OP_HW_PARAM_QUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_snd_front_stream_query_hw_param(%struct.xen_snd_front_evtchnl* %0, %struct.xensnd_query_hw_param* %1, %struct.xensnd_query_hw_param* %2) #0 {
  %4 = alloca %struct.xen_snd_front_evtchnl*, align 8
  %5 = alloca %struct.xensnd_query_hw_param*, align 8
  %6 = alloca %struct.xensnd_query_hw_param*, align 8
  %7 = alloca %struct.xensnd_req*, align 8
  %8 = alloca i32, align 4
  store %struct.xen_snd_front_evtchnl* %0, %struct.xen_snd_front_evtchnl** %4, align 8
  store %struct.xensnd_query_hw_param* %1, %struct.xensnd_query_hw_param** %5, align 8
  store %struct.xensnd_query_hw_param* %2, %struct.xensnd_query_hw_param** %6, align 8
  %9 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %10 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %15 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %18 = load i32, i32* @XENSND_OP_HW_PARAM_QUERY, align 4
  %19 = call %struct.xensnd_req* @be_stream_prepare_req(%struct.xen_snd_front_evtchnl* %17, i32 %18)
  store %struct.xensnd_req* %19, %struct.xensnd_req** %7, align 8
  %20 = load %struct.xensnd_req*, %struct.xensnd_req** %7, align 8
  %21 = getelementptr inbounds %struct.xensnd_req, %struct.xensnd_req* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.xensnd_query_hw_param*, %struct.xensnd_query_hw_param** %5, align 8
  %24 = bitcast %struct.xensnd_query_hw_param* %22 to i8*
  %25 = bitcast %struct.xensnd_query_hw_param* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %27 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %30 = call i32 @be_stream_do_io(%struct.xen_snd_front_evtchnl* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %35 = call i32 @be_stream_wait_io(%struct.xen_snd_front_evtchnl* %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %3
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.xensnd_query_hw_param*, %struct.xensnd_query_hw_param** %6, align 8
  %41 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %42 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = bitcast %struct.xensnd_query_hw_param* %40 to i8*
  %47 = bitcast %struct.xensnd_query_hw_param* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  br label %48

48:                                               ; preds = %39, %36
  %49 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %50 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.xensnd_req* @be_stream_prepare_req(%struct.xen_snd_front_evtchnl*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @be_stream_do_io(%struct.xen_snd_front_evtchnl*) #1

declare dso_local i32 @be_stream_wait_io(%struct.xen_snd_front_evtchnl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
