; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_register_appl.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_register_appl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_ctr = type { %struct.TYPE_4__, %struct.cmtp_session* }
%struct.TYPE_4__ = type { i32 }
%struct.cmtp_session = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.cmtp_application = type { i64, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@CMTP_INTEROP_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"ctrl %p appl %d level3cnt %d datablkcnt %d datablklen %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Can't allocate memory for new application\00", align 1
@BT_CONFIG = common dso_local global i64 0, align 8
@CAPI_REQ = common dso_local global i32 0, align 4
@CAPI_FUNCTION_REGISTER = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.capi_ctr*, i32, %struct.TYPE_5__*)* @cmtp_register_appl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmtp_register_appl(%struct.capi_ctr* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.capi_ctr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.cmtp_session*, align 8
  %8 = alloca %struct.cmtp_application*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.capi_ctr* %0, %struct.capi_ctr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %14 = load i32, i32* @wait, align 4
  %15 = load i32, i32* @current, align 4
  %16 = call i32 @DECLARE_WAITQUEUE(i32 %14, i32 %15)
  %17 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %18 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %17, i32 0, i32 1
  %19 = load %struct.cmtp_session*, %struct.cmtp_session** %18, align 8
  store %struct.cmtp_session* %19, %struct.cmtp_session** %7, align 8
  %20 = load i64, i64* @CMTP_INTEROP_TIMEOUT, align 8
  store i64 %20, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @BT_DBG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.capi_ctr* %24, i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.cmtp_application* @cmtp_application_add(%struct.cmtp_session* %36, i32 %37)
  store %struct.cmtp_application* %38, %struct.cmtp_application** %8, align 8
  %39 = load %struct.cmtp_application*, %struct.cmtp_application** %8, align 8
  %40 = icmp ne %struct.cmtp_application* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %3
  %42 = call i32 @BT_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %144

43:                                               ; preds = %3
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %48 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 0, %51
  %53 = mul nsw i32 %50, %52
  store i32 %53, i32* %12, align 4
  br label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %61 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %59, %56
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @capimsg_setu16(i8* %65, i32 0, i32 %66)
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @capimsg_setu16(i8* %68, i32 2, i32 %71)
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @capimsg_setu16(i8* %73, i32 4, i32 %76)
  %78 = load i64, i64* @BT_CONFIG, align 8
  %79 = load %struct.cmtp_application*, %struct.cmtp_application** %8, align 8
  %80 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %82 = call i32 @cmtp_msgnum_get(%struct.cmtp_session* %81)
  %83 = load %struct.cmtp_application*, %struct.cmtp_application** %8, align 8
  %84 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %86 = load i32, i32* @CAPI_REQ, align 4
  %87 = load %struct.cmtp_application*, %struct.cmtp_application** %8, align 8
  %88 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CAPI_FUNCTION_REGISTER, align 4
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %92 = call i32 @cmtp_send_interopmsg(%struct.cmtp_session* %85, i32 %86, i32 0, i32 %89, i32 %90, i8* %91, i32 6)
  %93 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %94 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %93, i32 0, i32 0
  %95 = call i32 @add_wait_queue(i32* %94, i32* @wait)
  br label %96

96:                                               ; preds = %64, %129
  %97 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %98 = call i32 @set_current_state(i32 %97)
  %99 = load i64, i64* %9, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %11, align 4
  br label %132

104:                                              ; preds = %96
  %105 = load %struct.cmtp_application*, %struct.cmtp_application** %8, align 8
  %106 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @BT_CLOSED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.cmtp_application*, %struct.cmtp_application** %8, align 8
  %112 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %11, align 4
  br label %132

115:                                              ; preds = %104
  %116 = load %struct.cmtp_application*, %struct.cmtp_application** %8, align 8
  %117 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @BT_CONNECTED, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %132

122:                                              ; preds = %115
  %123 = load i32, i32* @current, align 4
  %124 = call i64 @signal_pending(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* @EINTR, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %11, align 4
  br label %132

129:                                              ; preds = %122
  %130 = load i64, i64* %9, align 8
  %131 = call i64 @schedule_timeout(i64 %130)
  store i64 %131, i64* %9, align 8
  br label %96

132:                                              ; preds = %126, %121, %110, %101
  %133 = load i32, i32* @TASK_RUNNING, align 4
  %134 = call i32 @set_current_state(i32 %133)
  %135 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %136 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %135, i32 0, i32 0
  %137 = call i32 @remove_wait_queue(i32* %136, i32* @wait)
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %142 = load %struct.cmtp_application*, %struct.cmtp_application** %8, align 8
  %143 = call i32 @cmtp_application_del(%struct.cmtp_session* %141, %struct.cmtp_application* %142)
  br label %144

144:                                              ; preds = %41, %140, %132
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.capi_ctr*, i32, i32, i32, i32) #1

declare dso_local %struct.cmtp_application* @cmtp_application_add(%struct.cmtp_session*, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @capimsg_setu16(i8*, i32, i32) #1

declare dso_local i32 @cmtp_msgnum_get(%struct.cmtp_session*) #1

declare dso_local i32 @cmtp_send_interopmsg(%struct.cmtp_session*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @cmtp_application_del(%struct.cmtp_session*, %struct.cmtp_application*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
