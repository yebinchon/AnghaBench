; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_release_appl.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_release_appl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_ctr = type { %struct.cmtp_session* }
%struct.cmtp_session = type { i32 }
%struct.cmtp_application = type { i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ctrl %p appl %d\00", align 1
@CMTP_APPLID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't find application\00", align 1
@CAPI_REQ = common dso_local global i32 0, align 4
@CAPI_FUNCTION_RELEASE = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i64 0, align 8
@CMTP_INTEROP_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.capi_ctr*, i32)* @cmtp_release_appl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmtp_release_appl(%struct.capi_ctr* %0, i32 %1) #0 {
  %3 = alloca %struct.capi_ctr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmtp_session*, align 8
  %6 = alloca %struct.cmtp_application*, align 8
  store %struct.capi_ctr* %0, %struct.capi_ctr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.capi_ctr*, %struct.capi_ctr** %3, align 8
  %8 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %7, i32 0, i32 0
  %9 = load %struct.cmtp_session*, %struct.cmtp_session** %8, align 8
  store %struct.cmtp_session* %9, %struct.cmtp_session** %5, align 8
  %10 = load %struct.capi_ctr*, %struct.capi_ctr** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.capi_ctr* %10, i32 %11)
  %13 = load %struct.cmtp_session*, %struct.cmtp_session** %5, align 8
  %14 = load i32, i32* @CMTP_APPLID, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.cmtp_application* @cmtp_application_get(%struct.cmtp_session* %13, i32 %14, i32 %15)
  store %struct.cmtp_application* %16, %struct.cmtp_application** %6, align 8
  %17 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %18 = icmp ne %struct.cmtp_application* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 @BT_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.cmtp_session*, %struct.cmtp_session** %5, align 8
  %23 = call i32 @cmtp_msgnum_get(%struct.cmtp_session* %22)
  %24 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %25 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.cmtp_session*, %struct.cmtp_session** %5, align 8
  %27 = load i32, i32* @CAPI_REQ, align 4
  %28 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %29 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %32 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CAPI_FUNCTION_RELEASE, align 4
  %35 = call i32 @cmtp_send_interopmsg(%struct.cmtp_session* %26, i32 %27, i32 %30, i32 %33, i32 %34, i32* null, i32 0)
  %36 = load %struct.cmtp_session*, %struct.cmtp_session** %5, align 8
  %37 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %40 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BT_CLOSED, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @CMTP_INTEROP_TIMEOUT, align 4
  %46 = call i32 @wait_event_interruptible_timeout(i32 %38, i32 %44, i32 %45)
  %47 = load %struct.cmtp_session*, %struct.cmtp_session** %5, align 8
  %48 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %49 = call i32 @cmtp_application_del(%struct.cmtp_session* %47, %struct.cmtp_application* %48)
  br label %50

50:                                               ; preds = %21, %19
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.capi_ctr*, i32) #1

declare dso_local %struct.cmtp_application* @cmtp_application_get(%struct.cmtp_session*, i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @cmtp_msgnum_get(%struct.cmtp_session*) #1

declare dso_local i32 @cmtp_send_interopmsg(%struct.cmtp_session*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @cmtp_application_del(%struct.cmtp_session*, %struct.cmtp_application*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
