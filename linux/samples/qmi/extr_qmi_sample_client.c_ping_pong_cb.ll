; ModuleID = '/home/carl/AnghaBench/linux/samples/qmi/extr_qmi_sample_client.c_ping_pong_cb.c'
source_filename = "/home/carl/AnghaBench/linux/samples/qmi/extr_qmi_sample_client.c_ping_pong_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { i32 }
%struct.sockaddr_qrtr = type { i32 }
%struct.qmi_txn = type { i32, i32 }
%struct.test_ping_resp_msg_v01 = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"spurious ping response\0A\00", align 1
@QMI_RESULT_FAILURE_V01 = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pong\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qmi_handle*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*)* @ping_pong_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ping_pong_cb(%struct.qmi_handle* %0, %struct.sockaddr_qrtr* %1, %struct.qmi_txn* %2, i8* %3) #0 {
  %5 = alloca %struct.qmi_handle*, align 8
  %6 = alloca %struct.sockaddr_qrtr*, align 8
  %7 = alloca %struct.qmi_txn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.test_ping_resp_msg_v01*, align 8
  store %struct.qmi_handle* %0, %struct.qmi_handle** %5, align 8
  store %struct.sockaddr_qrtr* %1, %struct.sockaddr_qrtr** %6, align 8
  store %struct.qmi_txn* %2, %struct.qmi_txn** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.test_ping_resp_msg_v01*
  store %struct.test_ping_resp_msg_v01* %11, %struct.test_ping_resp_msg_v01** %9, align 8
  %12 = load %struct.qmi_txn*, %struct.qmi_txn** %7, align 8
  %13 = icmp ne %struct.qmi_txn* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %49

16:                                               ; preds = %4
  %17 = load %struct.test_ping_resp_msg_v01*, %struct.test_ping_resp_msg_v01** %9, align 8
  %18 = getelementptr inbounds %struct.test_ping_resp_msg_v01, %struct.test_ping_resp_msg_v01* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QMI_RESULT_FAILURE_V01, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.qmi_txn*, %struct.qmi_txn** %7, align 8
  %27 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %45

28:                                               ; preds = %16
  %29 = load %struct.test_ping_resp_msg_v01*, %struct.test_ping_resp_msg_v01** %9, align 8
  %30 = getelementptr inbounds %struct.test_ping_resp_msg_v01, %struct.test_ping_resp_msg_v01* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.test_ping_resp_msg_v01*, %struct.test_ping_resp_msg_v01** %9, align 8
  %35 = getelementptr inbounds %struct.test_ping_resp_msg_v01, %struct.test_ping_resp_msg_v01* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @memcmp(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33, %28
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = load %struct.qmi_txn*, %struct.qmi_txn** %7, align 8
  %43 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %33
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.qmi_txn*, %struct.qmi_txn** %7, align 8
  %47 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %46, i32 0, i32 0
  %48 = call i32 @complete(i32* %47)
  br label %49

49:                                               ; preds = %45, %14
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
