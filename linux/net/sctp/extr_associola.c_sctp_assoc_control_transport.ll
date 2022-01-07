; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_assoc_control_transport.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_assoc_control_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.sctp_ulpevent*)* }
%struct.sctp_ulpevent = type { i32 }
%struct.sctp_transport = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_storage = type { i32 }

@SCTP_UNCONFIRMED = common dso_local global i32 0, align 4
@SCTP_HEARTBEAT_SUCCESS = common dso_local global i32 0, align 4
@SCTP_ADDR_CONFIRMED = common dso_local global i32 0, align 4
@SCTP_ADDR_AVAILABLE = common dso_local global i32 0, align 4
@SCTP_PF = common dso_local global i32 0, align 4
@SCTP_ACTIVE = common dso_local global i32 0, align 4
@SCTP_INACTIVE = common dso_local global i32 0, align 4
@SCTP_ADDR_UNREACHABLE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_assoc_control_transport(%struct.sctp_association* %0, %struct.sctp_transport* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_transport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctp_ulpevent*, align 8
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %63 [
    i32 128, label %14
    i32 130, label %44
    i32 129, label %59
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @SCTP_UNCONFIRMED, align 4
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %17 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* @SCTP_HEARTBEAT_SUCCESS, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @SCTP_ADDR_CONFIRMED, align 4
  store i32 %25, i32* %11, align 4
  br label %28

26:                                               ; preds = %20, %14
  %27 = load i32, i32* @SCTP_ADDR_AVAILABLE, align 4
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %30 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SCTP_PF, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  %35 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %36 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %39 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* @SCTP_ACTIVE, align 4
  %42 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %43 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %64

44:                                               ; preds = %4
  %45 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %46 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SCTP_UNCONFIRMED, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @SCTP_INACTIVE, align 4
  %52 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %53 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %57

54:                                               ; preds = %44
  %55 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %56 = call i32 @sctp_transport_dst_release(%struct.sctp_transport* %55)
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* @SCTP_ADDR_UNREACHABLE, align 4
  store i32 %58, i32* %11, align 4
  br label %64

59:                                               ; preds = %4
  %60 = load i32, i32* @SCTP_PF, align 4
  %61 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %62 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %12, align 4
  br label %64

63:                                               ; preds = %4
  br label %99

64:                                               ; preds = %59, %57, %40
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %64
  %68 = call i32 @memset(%struct.sockaddr_storage* %10, i32 0, i32 4)
  %69 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %70 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %69, i32 0, i32 1
  %71 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %72 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(%struct.sockaddr_storage* %10, i32* %70, i32 %75)
  %77 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @GFP_ATOMIC, align 4
  %81 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_peer_addr_change(%struct.sctp_association* %77, %struct.sockaddr_storage* %10, i32 0, i32 %78, i32 %79, i32 %80)
  store %struct.sctp_ulpevent* %81, %struct.sctp_ulpevent** %9, align 8
  %82 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  %83 = icmp ne %struct.sctp_ulpevent* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %67
  %85 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %86 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32 (i32*, %struct.sctp_ulpevent*)*, i32 (i32*, %struct.sctp_ulpevent*)** %89, align 8
  %91 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %92 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %91, i32 0, i32 0
  %93 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  %94 = call i32 %90(i32* %92, %struct.sctp_ulpevent* %93)
  br label %95

95:                                               ; preds = %84, %67
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %98 = call i32 @sctp_select_active_and_retran_path(%struct.sctp_association* %97)
  br label %99

99:                                               ; preds = %96, %63
  ret void
}

declare dso_local i32 @sctp_transport_dst_release(%struct.sctp_transport*) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, i32*, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_peer_addr_change(%struct.sctp_association*, %struct.sockaddr_storage*, i32, i32, i32, i32) #1

declare dso_local i32 @sctp_select_active_and_retran_path(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
