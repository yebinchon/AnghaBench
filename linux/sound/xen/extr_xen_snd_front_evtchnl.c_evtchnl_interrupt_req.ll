; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_evtchnl_interrupt_req.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_evtchnl_interrupt_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_evtchnl = type { i64, i64, i32, %struct.TYPE_14__, %struct.xen_snd_front_info* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.xen_snd_front_info = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.xensnd_resp = type { i64, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@EVTCHNL_STATE_CONNECTED = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Operation %d is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @evtchnl_interrupt_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchnl_interrupt_req(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xen_snd_front_evtchnl*, align 8
  %7 = alloca %struct.xen_snd_front_info*, align 8
  %8 = alloca %struct.xensnd_resp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.xen_snd_front_evtchnl*
  store %struct.xen_snd_front_evtchnl* %13, %struct.xen_snd_front_evtchnl** %6, align 8
  %14 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %15 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %14, i32 0, i32 4
  %16 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %15, align 8
  store %struct.xen_snd_front_info* %16, %struct.xen_snd_front_info** %7, align 8
  %17 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %18 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EVTCHNL_STATE_CONNECTED, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %26, i32* %3, align 4
  br label %159

27:                                               ; preds = %2
  %28 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %29 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %28, i32 0, i32 2
  %30 = call i32 @mutex_lock(i32* %29)
  br label %31

31:                                               ; preds = %142, %27
  %32 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %33 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = call i32 (...) @rmb()
  %41 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %42 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %115, %31
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %118

51:                                               ; preds = %47
  %52 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %53 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %9, align 8
  %57 = call %struct.xensnd_resp* @RING_GET_RESPONSE(%struct.TYPE_15__* %55, i64 %56)
  store %struct.xensnd_resp* %57, %struct.xensnd_resp** %8, align 8
  %58 = load %struct.xensnd_resp*, %struct.xensnd_resp** %8, align 8
  %59 = getelementptr inbounds %struct.xensnd_resp, %struct.xensnd_resp* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %62 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %115

66:                                               ; preds = %51
  %67 = load %struct.xensnd_resp*, %struct.xensnd_resp** %8, align 8
  %68 = getelementptr inbounds %struct.xensnd_resp, %struct.xensnd_resp* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %105 [
    i32 131, label %70
    i32 133, label %70
    i32 130, label %70
    i32 128, label %70
    i32 129, label %70
    i32 132, label %83
  ]

70:                                               ; preds = %66, %66, %66, %66, %66
  %71 = load %struct.xensnd_resp*, %struct.xensnd_resp** %8, align 8
  %72 = getelementptr inbounds %struct.xensnd_resp, %struct.xensnd_resp* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %75 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  store i32 %73, i32* %77, align 8
  %78 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %79 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = call i32 @complete(i32* %81)
  br label %114

83:                                               ; preds = %66
  %84 = load %struct.xensnd_resp*, %struct.xensnd_resp** %8, align 8
  %85 = getelementptr inbounds %struct.xensnd_resp, %struct.xensnd_resp* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %88 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 3
  store i32 %86, i32* %90, align 8
  %91 = load %struct.xensnd_resp*, %struct.xensnd_resp** %8, align 8
  %92 = getelementptr inbounds %struct.xensnd_resp, %struct.xensnd_resp* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %96 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 4
  %100 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %101 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = call i32 @complete(i32* %103)
  br label %114

105:                                              ; preds = %66
  %106 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %7, align 8
  %107 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.xensnd_resp*, %struct.xensnd_resp** %8, align 8
  %111 = getelementptr inbounds %struct.xensnd_resp, %struct.xensnd_resp* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %105, %83, %70
  br label %115

115:                                              ; preds = %114, %65
  %116 = load i64, i64* %9, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %9, align 8
  br label %47

118:                                              ; preds = %47
  %119 = load i64, i64* %9, align 8
  %120 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %121 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  store i64 %119, i64* %124, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %127 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %125, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %118
  %134 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %135 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @RING_FINAL_CHECK_FOR_RESPONSES(%struct.TYPE_15__* %137, i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %31

143:                                              ; preds = %133
  br label %154

144:                                              ; preds = %118
  %145 = load i64, i64* %9, align 8
  %146 = add nsw i64 %145, 1
  %147 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %148 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  store i64 %146, i64* %153, align 8
  br label %154

154:                                              ; preds = %144, %143
  %155 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %6, align 8
  %156 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %155, i32 0, i32 2
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %154, %25
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local %struct.xensnd_resp* @RING_GET_RESPONSE(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @RING_FINAL_CHECK_FOR_RESPONSES(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
