; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_connect_add_peer.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_connect_add_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i64, %struct.sctp_endpoint* }
%struct.sctp_endpoint = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_transport = type { i32 }

@SCTP_STATE_ESTABLISHED = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SCTP_UNKNOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, %union.sctp_addr*, i32)* @sctp_connect_add_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_connect_add_peer(%struct.sctp_association* %0, %union.sctp_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_endpoint*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca %struct.sctp_transport*, align 8
  %11 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %13 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %12, i32 0, i32 1
  %14 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %13, align 8
  store %struct.sctp_endpoint* %14, %struct.sctp_endpoint** %8, align 8
  %15 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %16 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @sctp_verify_addr(i32 %18, %union.sctp_addr* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %70

26:                                               ; preds = %3
  %27 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %28 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %29 = call %struct.sctp_association* @sctp_endpoint_lookup_assoc(%struct.sctp_endpoint* %27, %union.sctp_addr* %28, %struct.sctp_transport** %10)
  store %struct.sctp_association* %29, %struct.sctp_association** %9, align 8
  %30 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %31 = icmp ne %struct.sctp_association* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %34 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %35 = icmp ne %struct.sctp_association* %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %38 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SCTP_STATE_ESTABLISHED, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EISCONN, align 4
  %44 = sub nsw i32 0, %43
  br label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EALREADY, align 4
  %47 = sub nsw i32 0, %46
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i32 [ %44, %42 ], [ %47, %45 ]
  store i32 %49, i32* %4, align 4
  br label %70

50:                                               ; preds = %32, %26
  %51 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %52 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %53 = call i64 @sctp_endpoint_is_peeled_off(%struct.sctp_endpoint* %51, %union.sctp_addr* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EADDRNOTAVAIL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %70

58:                                               ; preds = %50
  %59 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %60 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = load i32, i32* @SCTP_UNKNOWN, align 4
  %63 = call %struct.sctp_transport* @sctp_assoc_add_peer(%struct.sctp_association* %59, %union.sctp_addr* %60, i32 %61, i32 %62)
  store %struct.sctp_transport* %63, %struct.sctp_transport** %10, align 8
  %64 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %65 = icmp ne %struct.sctp_transport* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %70

69:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %66, %55, %48, %24
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @sctp_verify_addr(i32, %union.sctp_addr*, i32) #1

declare dso_local %struct.sctp_association* @sctp_endpoint_lookup_assoc(%struct.sctp_endpoint*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local i64 @sctp_endpoint_is_peeled_off(%struct.sctp_endpoint*, %union.sctp_addr*) #1

declare dso_local %struct.sctp_transport* @sctp_assoc_add_peer(%struct.sctp_association*, %union.sctp_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
