; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_evtchnl_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_evtchnl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_info = type { i32 }
%struct.xen_snd_front_evtchnl = type { i64, i64, i64, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@EVTCHNL_TYPE_REQ = common dso_local global i64 0, align 8
@EVTCHNL_TYPE_EVT = common dso_local global i64 0, align 8
@EVTCHNL_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GRANT_INVALID_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_snd_front_info*, %struct.xen_snd_front_evtchnl*)* @evtchnl_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evtchnl_free(%struct.xen_snd_front_info* %0, %struct.xen_snd_front_evtchnl* %1) #0 {
  %3 = alloca %struct.xen_snd_front_info*, align 8
  %4 = alloca %struct.xen_snd_front_evtchnl*, align 8
  %5 = alloca i64, align 8
  store %struct.xen_snd_front_info* %0, %struct.xen_snd_front_info** %3, align 8
  store %struct.xen_snd_front_evtchnl* %1, %struct.xen_snd_front_evtchnl** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %7 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EVTCHNL_TYPE_REQ, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %13 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %20 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EVTCHNL_TYPE_EVT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %26 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %24, %18
  br label %31

31:                                               ; preds = %30, %11
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %98

35:                                               ; preds = %31
  %36 = load i32, i32* @EVTCHNL_STATE_DISCONNECTED, align 4
  %37 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %38 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %40 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EVTCHNL_TYPE_REQ, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %35
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  %47 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %48 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %52 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = call i32 @complete_all(i32* %54)
  br label %56

56:                                               ; preds = %44, %35
  %57 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %58 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %63 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %66 = call i32 @unbind_from_irqhandler(i64 %64, %struct.xen_snd_front_evtchnl* %65)
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %69 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %74 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %77 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @xenbus_free_evtchn(i32 %75, i64 %78)
  br label %80

80:                                               ; preds = %72, %67
  %81 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %82 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @GRANT_INVALID_REF, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %88 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @gnttab_end_foreign_access(i64 %89, i32 0, i64 %90)
  br label %95

92:                                               ; preds = %80
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @free_page(i64 %93)
  br label %95

95:                                               ; preds = %92, %86
  %96 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %97 = call i32 @memset(%struct.xen_snd_front_evtchnl* %96, i32 0, i32 64)
  br label %98

98:                                               ; preds = %95, %34
  ret void
}

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @unbind_from_irqhandler(i64, %struct.xen_snd_front_evtchnl*) #1

declare dso_local i32 @xenbus_free_evtchn(i32, i64) #1

declare dso_local i32 @gnttab_end_foreign_access(i64, i32, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @memset(%struct.xen_snd_front_evtchnl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
