; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_evtchnl_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_evtchnl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_info = type { %struct.xenbus_device* }
%struct.xenbus_device = type { i32, i32 }
%struct.xen_snd_front_evtchnl = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, %struct.xen_snd_front_info* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.xensnd_event_page* }
%struct.xensnd_event_page = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.xen_sndif_sring = type { i32 }

@EVTCHNL_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@GRANT_INVALID_REF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@XENSND_DRIVER_NAME = common dso_local global i32 0, align 4
@EVTCHNL_TYPE_REQ = common dso_local global i32 0, align 4
@XENSND_FIELD_RING_REF = common dso_local global i32 0, align 4
@XENSND_FIELD_EVT_RING_REF = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@evtchnl_interrupt_req = common dso_local global i32 0, align 4
@evtchnl_interrupt_evt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to bind IRQ for domid %d port %d: %d\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to allocate ring: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_snd_front_info*, i32, %struct.xen_snd_front_evtchnl*, i32)* @evtchnl_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchnl_alloc(%struct.xen_snd_front_info* %0, i32 %1, %struct.xen_snd_front_evtchnl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_snd_front_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xen_snd_front_evtchnl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xenbus_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.xen_sndif_sring*, align 8
  store %struct.xen_snd_front_info* %0, %struct.xen_snd_front_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xen_snd_front_evtchnl* %2, %struct.xen_snd_front_evtchnl** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %6, align 8
  %18 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %17, i32 0, i32 0
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %18, align 8
  store %struct.xenbus_device* %19, %struct.xenbus_device** %10, align 8
  store i8* null, i8** %14, align 8
  %20 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %21 = call i32 @memset(%struct.xen_snd_front_evtchnl* %20, i32 0, i32 64)
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %24 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %27 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %6, align 8
  %29 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %30 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %29, i32 0, i32 8
  store %struct.xen_snd_front_info* %28, %struct.xen_snd_front_info** %30, align 8
  %31 = load i32, i32* @EVTCHNL_STATE_DISCONNECTED, align 4
  %32 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %33 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @GRANT_INVALID_REF, align 4
  %35 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %36 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i64 @get_zeroed_page(i32 %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %15, align 4
  br label %180

44:                                               ; preds = %4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = load i32, i32* @XENSND_DRIVER_NAME, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @EVTCHNL_TYPE_REQ, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @XENSND_FIELD_RING_REF, align 4
  br label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @XENSND_FIELD_EVT_RING_REF, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i8* @kasprintf(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %55)
  store i8* %56, i8** %14, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %15, align 4
  br label %180

62:                                               ; preds = %54
  %63 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %64 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %63, i32 0, i32 6
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @EVTCHNL_TYPE_REQ, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %104

69:                                               ; preds = %62
  %70 = load i64, i64* %11, align 8
  %71 = inttoptr i64 %70 to %struct.xen_sndif_sring*
  store %struct.xen_sndif_sring* %71, %struct.xen_sndif_sring** %16, align 8
  %72 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %73 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = call i32 @init_completion(i32* %75)
  %77 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %78 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = call i32 @mutex_init(i32* %80)
  %82 = load %struct.xen_sndif_sring*, %struct.xen_sndif_sring** %16, align 8
  %83 = call i32 @SHARED_RING_INIT(%struct.xen_sndif_sring* %82)
  %84 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %85 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.xen_sndif_sring*, %struct.xen_sndif_sring** %16, align 8
  %89 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %90 = call i32 @FRONT_RING_INIT(%struct.TYPE_8__* %87, %struct.xen_sndif_sring* %88, i32 %89)
  %91 = load %struct.xenbus_device*, %struct.xenbus_device** %10, align 8
  %92 = load %struct.xen_sndif_sring*, %struct.xen_sndif_sring** %16, align 8
  %93 = call i32 @xenbus_grant_ring(%struct.xenbus_device* %91, %struct.xen_sndif_sring* %92, i32 1, i32* %12)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %69
  %97 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %98 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  br label %180

102:                                              ; preds = %69
  %103 = load i32, i32* @evtchnl_interrupt_req, align 4
  store i32 %103, i32* %13, align 4
  br label %124

104:                                              ; preds = %62
  %105 = load %struct.xenbus_device*, %struct.xenbus_device** %10, align 8
  %106 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %11, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @virt_to_gfn(i8* %109)
  %111 = call i32 @gnttab_grant_foreign_access(i32 %107, i32 %110, i32 0)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %180

115:                                              ; preds = %104
  %116 = load i64, i64* %11, align 8
  %117 = inttoptr i64 %116 to %struct.xensnd_event_page*
  %118 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %119 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store %struct.xensnd_event_page* %117, %struct.xensnd_event_page** %121, align 8
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* @evtchnl_interrupt_evt, align 4
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %115, %102
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %127 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.xenbus_device*, %struct.xenbus_device** %10, align 8
  %129 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %130 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %129, i32 0, i32 4
  %131 = call i32 @xenbus_alloc_evtchn(%struct.xenbus_device* %128, i32* %130)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %180

135:                                              ; preds = %124
  %136 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %137 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @bind_evtchn_to_irq(i32 %138)
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %135
  %143 = load %struct.xenbus_device*, %struct.xenbus_device** %10, align 8
  %144 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %143, i32 0, i32 0
  %145 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %6, align 8
  %146 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %145, i32 0, i32 0
  %147 = load %struct.xenbus_device*, %struct.xenbus_device** %146, align 8
  %148 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %151 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %144, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %152, i32 %153)
  br label %180

155:                                              ; preds = %135
  %156 = load i32, i32* %15, align 4
  %157 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %158 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %160 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @IRQF_ONESHOT, align 4
  %164 = load i8*, i8** %14, align 8
  %165 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %166 = call i32 @request_threaded_irq(i32 %161, i32* null, i32 %162, i32 %163, i8* %164, %struct.xen_snd_front_evtchnl* %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %155
  %170 = load %struct.xenbus_device*, %struct.xenbus_device** %10, align 8
  %171 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %170, i32 0, i32 0
  %172 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %173 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %15, align 4
  %176 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %171, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %174, i32 %175)
  br label %180

177:                                              ; preds = %155
  %178 = load i8*, i8** %14, align 8
  %179 = call i32 @kfree(i8* %178)
  store i32 0, i32* %5, align 4
  br label %194

180:                                              ; preds = %169, %142, %134, %114, %96, %59, %41
  %181 = load i64, i64* %11, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i64, i64* %11, align 8
  %185 = call i32 @free_page(i64 %184)
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i8*, i8** %14, align 8
  %188 = call i32 @kfree(i8* %187)
  %189 = load %struct.xenbus_device*, %struct.xenbus_device** %10, align 8
  %190 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %189, i32 0, i32 0
  %191 = load i32, i32* %15, align 4
  %192 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %15, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %186, %177
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i32 @memset(%struct.xen_snd_front_evtchnl*, i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @SHARED_RING_INIT(%struct.xen_sndif_sring*) #1

declare dso_local i32 @FRONT_RING_INIT(%struct.TYPE_8__*, %struct.xen_sndif_sring*, i32) #1

declare dso_local i32 @xenbus_grant_ring(%struct.xenbus_device*, %struct.xen_sndif_sring*, i32, i32*) #1

declare dso_local i32 @gnttab_grant_foreign_access(i32, i32, i32) #1

declare dso_local i32 @virt_to_gfn(i8*) #1

declare dso_local i32 @xenbus_alloc_evtchn(%struct.xenbus_device*, i32*) #1

declare dso_local i32 @bind_evtchn_to_irq(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.xen_snd_front_evtchnl*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
