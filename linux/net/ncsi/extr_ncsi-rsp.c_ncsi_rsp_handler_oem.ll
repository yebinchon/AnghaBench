; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_oem.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_oem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_rsp_oem_handler = type { i32, i32 (%struct.ncsi_request.0*)* }
%struct.ncsi_request.0 = type opaque
%struct.ncsi_request = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_rsp_oem_pkt = type { i32 }

@ncsi_rsp_oem_handlers = common dso_local global %struct.ncsi_rsp_oem_handler* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"Received unrecognized OEM packet with MFR-ID (0x%x)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_oem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_oem(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_rsp_oem_handler*, align 8
  %5 = alloca %struct.ncsi_rsp_oem_pkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  store %struct.ncsi_rsp_oem_handler* null, %struct.ncsi_rsp_oem_handler** %4, align 8
  %8 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %9 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @skb_network_header(i32 %10)
  %12 = inttoptr i64 %11 to %struct.ncsi_rsp_oem_pkt*
  store %struct.ncsi_rsp_oem_pkt* %12, %struct.ncsi_rsp_oem_pkt** %5, align 8
  %13 = load %struct.ncsi_rsp_oem_pkt*, %struct.ncsi_rsp_oem_pkt** %5, align 8
  %14 = getelementptr inbounds %struct.ncsi_rsp_oem_pkt, %struct.ncsi_rsp_oem_pkt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohl(i32 %15)
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %47, %1
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ncsi_rsp_oem_handler*, %struct.ncsi_rsp_oem_handler** @ncsi_rsp_oem_handlers, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.ncsi_rsp_oem_handler* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %17
  %23 = load %struct.ncsi_rsp_oem_handler*, %struct.ncsi_rsp_oem_handler** @ncsi_rsp_oem_handlers, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ncsi_rsp_oem_handler, %struct.ncsi_rsp_oem_handler* %23, i64 %25
  %27 = getelementptr inbounds %struct.ncsi_rsp_oem_handler, %struct.ncsi_rsp_oem_handler* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load %struct.ncsi_rsp_oem_handler*, %struct.ncsi_rsp_oem_handler** @ncsi_rsp_oem_handlers, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ncsi_rsp_oem_handler, %struct.ncsi_rsp_oem_handler* %32, i64 %34
  %36 = getelementptr inbounds %struct.ncsi_rsp_oem_handler, %struct.ncsi_rsp_oem_handler* %35, i32 0, i32 1
  %37 = load i32 (%struct.ncsi_request.0*)*, i32 (%struct.ncsi_request.0*)** %36, align 8
  %38 = icmp ne i32 (%struct.ncsi_request.0*)* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.ncsi_rsp_oem_handler*, %struct.ncsi_rsp_oem_handler** @ncsi_rsp_oem_handlers, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ncsi_rsp_oem_handler, %struct.ncsi_rsp_oem_handler* %40, i64 %42
  store %struct.ncsi_rsp_oem_handler* %43, %struct.ncsi_rsp_oem_handler** %4, align 8
  br label %45

44:                                               ; preds = %31
  store %struct.ncsi_rsp_oem_handler* null, %struct.ncsi_rsp_oem_handler** %4, align 8
  br label %45

45:                                               ; preds = %44, %39
  br label %50

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %17

50:                                               ; preds = %45, %17
  %51 = load %struct.ncsi_rsp_oem_handler*, %struct.ncsi_rsp_oem_handler** %4, align 8
  %52 = icmp ne %struct.ncsi_rsp_oem_handler* %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %55 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @netdev_err(i32 %59, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %71

64:                                               ; preds = %50
  %65 = load %struct.ncsi_rsp_oem_handler*, %struct.ncsi_rsp_oem_handler** %4, align 8
  %66 = getelementptr inbounds %struct.ncsi_rsp_oem_handler, %struct.ncsi_rsp_oem_handler* %65, i32 0, i32 1
  %67 = load i32 (%struct.ncsi_request.0*)*, i32 (%struct.ncsi_request.0*)** %66, align 8
  %68 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %69 = bitcast %struct.ncsi_request* %68 to %struct.ncsi_request.0*
  %70 = call i32 %67(%struct.ncsi_request.0* %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %64, %53
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ncsi_rsp_oem_handler*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
