; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_xen_snd_front_stream_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_xen_snd_front_stream_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_evtchnl = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.xen_front_pgdir_shbuf = type { i32 }
%struct.xensnd_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i32 }

@XENSND_OP_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_snd_front_stream_prepare(%struct.xen_snd_front_evtchnl* %0, %struct.xen_front_pgdir_shbuf* %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.xen_snd_front_evtchnl*, align 8
  %9 = alloca %struct.xen_front_pgdir_shbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.xensnd_req*, align 8
  %16 = alloca i32, align 4
  store %struct.xen_snd_front_evtchnl* %0, %struct.xen_snd_front_evtchnl** %8, align 8
  store %struct.xen_front_pgdir_shbuf* %1, %struct.xen_front_pgdir_shbuf** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %18 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %23 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %26 = load i32, i32* @XENSND_OP_OPEN, align 4
  %27 = call %struct.xensnd_req* @be_stream_prepare_req(%struct.xen_snd_front_evtchnl* %25, i32 %26)
  store %struct.xensnd_req* %27, %struct.xensnd_req** %15, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.xensnd_req*, %struct.xensnd_req** %15, align 8
  %30 = getelementptr inbounds %struct.xensnd_req, %struct.xensnd_req* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 5
  store i32 %28, i32* %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.xensnd_req*, %struct.xensnd_req** %15, align 8
  %35 = getelementptr inbounds %struct.xensnd_req, %struct.xensnd_req* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.xensnd_req*, %struct.xensnd_req** %15, align 8
  %40 = getelementptr inbounds %struct.xensnd_req, %struct.xensnd_req* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load i8*, i8** %13, align 8
  %44 = load %struct.xensnd_req*, %struct.xensnd_req** %15, align 8
  %45 = getelementptr inbounds %struct.xensnd_req, %struct.xensnd_req* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  store i8* %43, i8** %47, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load %struct.xensnd_req*, %struct.xensnd_req** %15, align 8
  %50 = getelementptr inbounds %struct.xensnd_req, %struct.xensnd_req* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i8* %48, i8** %52, align 8
  %53 = load %struct.xen_front_pgdir_shbuf*, %struct.xen_front_pgdir_shbuf** %9, align 8
  %54 = call i32 @xen_front_pgdir_shbuf_get_dir_start(%struct.xen_front_pgdir_shbuf* %53)
  %55 = load %struct.xensnd_req*, %struct.xensnd_req** %15, align 8
  %56 = getelementptr inbounds %struct.xensnd_req, %struct.xensnd_req* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32 %54, i32* %58, align 8
  %59 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %60 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %63 = call i32 @be_stream_do_io(%struct.xen_snd_front_evtchnl* %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %7
  %67 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %68 = call i32 @be_stream_wait_io(%struct.xen_snd_front_evtchnl* %67)
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %66, %7
  %70 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %71 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %16, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.xensnd_req* @be_stream_prepare_req(%struct.xen_snd_front_evtchnl*, i32) #1

declare dso_local i32 @xen_front_pgdir_shbuf_get_dir_start(%struct.xen_front_pgdir_shbuf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @be_stream_do_io(%struct.xen_snd_front_evtchnl*) #1

declare dso_local i32 @be_stream_wait_io(%struct.xen_snd_front_evtchnl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
