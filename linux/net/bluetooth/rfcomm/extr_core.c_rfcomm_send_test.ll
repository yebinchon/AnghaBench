; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_test.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32, %struct.socket* }
%struct.socket = type { i32 }
%struct.kvec = type { i8*, i32 }
%struct.msghdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%p cr %d\00", align 1
@RFCOMM_UIH = common dso_local global i32 0, align 4
@RFCOMM_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i32, i8*, i32)* @rfcomm_send_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_send_test(%struct.rfcomm_session* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfcomm_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  %11 = alloca [3 x %struct.kvec], align 16
  %12 = alloca %struct.msghdr, align 4
  %13 = alloca [5 x i8], align 1
  %14 = alloca [1 x i8], align 1
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %16 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %15, i32 0, i32 1
  %17 = load %struct.socket*, %struct.socket** %16, align 8
  store %struct.socket* %17, %struct.socket** %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 125
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %80

23:                                               ; preds = %4
  %24 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %24, i32 %25)
  %27 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %28 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call zeroext i8 @__addr(i32 %29, i32 0)
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  store i8 %30, i8* %31, align 1
  %32 = load i32, i32* @RFCOMM_UIH, align 4
  %33 = call zeroext i8 @__ctrl(i32 %32, i32 0)
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 1
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 2
  %37 = shl i32 %36, 1
  %38 = or i32 1, %37
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 2
  store i8 %39, i8* %40, align 1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 1
  %43 = shl i32 %42, 1
  %44 = or i32 1, %43
  %45 = load i32, i32* @RFCOMM_TEST, align 4
  %46 = shl i32 %45, 2
  %47 = or i32 %44, %46
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 3
  store i8 %48, i8* %49, align 1
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 1
  %52 = or i32 1, %51
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 4
  store i8 %53, i8* %54, align 1
  %55 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %56 = call zeroext i8 @__fcs(i8* %55)
  %57 = getelementptr inbounds [1 x i8], [1 x i8]* %14, i64 0, i64 0
  store i8 %56, i8* %57, align 1
  %58 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %59 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 0
  %60 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 16
  %61 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 0
  %62 = getelementptr inbounds %struct.kvec, %struct.kvec* %61, i32 0, i32 1
  store i32 5, i32* %62, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 1
  %65 = getelementptr inbounds %struct.kvec, %struct.kvec* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 16
  %66 = load i32, i32* %9, align 4
  %67 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 1
  %68 = getelementptr inbounds %struct.kvec, %struct.kvec* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = getelementptr inbounds [1 x i8], [1 x i8]* %14, i64 0, i64 0
  %70 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 2
  %71 = getelementptr inbounds %struct.kvec, %struct.kvec* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 16
  %72 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 2
  %73 = getelementptr inbounds %struct.kvec, %struct.kvec* %72, i32 0, i32 1
  store i32 1, i32* %73, align 8
  %74 = call i32 @memset(%struct.msghdr* %12, i32 0, i32 4)
  %75 = load %struct.socket*, %struct.socket** %10, align 8
  %76 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %11, i64 0, i64 0
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 6, %77
  %79 = call i32 @kernel_sendmsg(%struct.socket* %75, %struct.msghdr* %12, %struct.kvec* %76, i32 3, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %23, %20
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32) #1

declare dso_local zeroext i8 @__addr(i32, i32) #1

declare dso_local zeroext i8 @__ctrl(i32, i32) #1

declare dso_local zeroext i8 @__fcs(i8*) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @kernel_sendmsg(%struct.socket*, %struct.msghdr*, %struct.kvec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
