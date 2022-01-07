; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_bredr_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_bredr_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.hci_cp_inquiry = type { i32, i32 }

@__const.bredr_inquiry.giac = private unnamed_addr constant [3 x i32] [i32 51, i32 139, i32 158], align 4
@__const.bredr_inquiry.liac = private unnamed_addr constant [3 x i32] [i32 0, i32 139, i32 158], align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_OP_INQUIRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_request*, i64)* @bredr_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bredr_inquiry(%struct.hci_request* %0, i64 %1) #0 {
  %3 = alloca %struct.hci_request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca %struct.hci_cp_inquiry, align 4
  store %struct.hci_request* %0, %struct.hci_request** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([3 x i32]* @__const.bredr_inquiry.giac to i8*), i64 12, i1 false)
  %12 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast ([3 x i32]* @__const.bredr_inquiry.liac to i8*), i64 12, i1 false)
  %13 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %14 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %20 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 @hci_dev_lock(%struct.TYPE_6__* %21)
  %23 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %24 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i32 @hci_inquiry_cache_flush(%struct.TYPE_6__* %25)
  %27 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %28 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = call i32 @hci_dev_unlock(%struct.TYPE_6__* %29)
  %31 = call i32 @memset(%struct.hci_cp_inquiry* %8, i32 0, i32 8)
  %32 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %33 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.hci_cp_inquiry, %struct.hci_cp_inquiry* %8, i32 0, i32 1
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %42 = call i32 @memcpy(i32* %40, i32* %41, i32 4)
  br label %47

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.hci_cp_inquiry, %struct.hci_cp_inquiry* %8, i32 0, i32 1
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %46 = call i32 @memcpy(i32* %44, i32* %45, i32 4)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %5, align 4
  %49 = getelementptr inbounds %struct.hci_cp_inquiry, %struct.hci_cp_inquiry* %8, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.hci_request*, %struct.hci_request** %3, align 8
  %51 = load i32, i32* @HCI_OP_INQUIRY, align 4
  %52 = call i32 @hci_req_add(%struct.hci_request* %50, i32 %51, i32 8, %struct.hci_cp_inquiry* %8)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BT_DBG(i8*, i32) #2

declare dso_local i32 @hci_dev_lock(%struct.TYPE_6__*) #2

declare dso_local i32 @hci_inquiry_cache_flush(%struct.TYPE_6__*) #2

declare dso_local i32 @hci_dev_unlock(%struct.TYPE_6__*) #2

declare dso_local i32 @memset(%struct.hci_cp_inquiry*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_inquiry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
