; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_transport_on.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_transport_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_association = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_transport = type { i64, i32, i64, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.sctp_chunk = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.sctp_sender_hb_info = type { i64 }

@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i64 0, align 8
@SCTP_INACTIVE = common dso_local global i64 0, align 8
@SCTP_UNCONFIRMED = common dso_local global i64 0, align 8
@SCTP_TRANSPORT_UP = common dso_local global i32 0, align 4
@SCTP_HEARTBEAT_SUCCESS = common dso_local global i32 0, align 4
@SCTP_PF = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_cmd_seq*, %struct.sctp_association*, %struct.sctp_transport*, %struct.sctp_chunk*)* @sctp_cmd_transport_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_transport_on(%struct.sctp_cmd_seq* %0, %struct.sctp_association* %1, %struct.sctp_transport* %2, %struct.sctp_chunk* %3) #0 {
  %5 = alloca %struct.sctp_cmd_seq*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_transport*, align 8
  %8 = alloca %struct.sctp_chunk*, align 8
  %9 = alloca %struct.sctp_sender_hb_info*, align 8
  %10 = alloca i32, align 4
  store %struct.sctp_cmd_seq* %0, %struct.sctp_cmd_seq** %5, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %6, align 8
  store %struct.sctp_transport* %2, %struct.sctp_transport** %7, align 8
  store %struct.sctp_chunk* %3, %struct.sctp_chunk** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %12 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %14 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SCTP_STATE_SHUTDOWN_PENDING, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %22 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %20, %4
  %26 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %27 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %29 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SCTP_INACTIVE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %35 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SCTP_UNCONFIRMED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33, %25
  store i32 1, i32* %10, align 4
  %40 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %41 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %42 = load i32, i32* @SCTP_TRANSPORT_UP, align 4
  %43 = load i32, i32* @SCTP_HEARTBEAT_SUCCESS, align 4
  %44 = call i32 @sctp_assoc_control_transport(%struct.sctp_association* %40, %struct.sctp_transport* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %47 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SCTP_PF, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %53 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %54 = load i32, i32* @SCTP_TRANSPORT_UP, align 4
  %55 = load i32, i32* @SCTP_HEARTBEAT_SUCCESS, align 4
  %56 = call i32 @sctp_assoc_control_transport(%struct.sctp_association* %52, %struct.sctp_transport* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %59 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %64 = call i32 @sctp_transport_dst_confirm(%struct.sctp_transport* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %67 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %72 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %71, i32 0, i32 1
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %75 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.sctp_sender_hb_info*
  store %struct.sctp_sender_hb_info* %79, %struct.sctp_sender_hb_info** %9, align 8
  %80 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %81 = load i64, i64* @jiffies, align 8
  %82 = load %struct.sctp_sender_hb_info*, %struct.sctp_sender_hb_info** %9, align 8
  %83 = getelementptr inbounds %struct.sctp_sender_hb_info, %struct.sctp_sender_hb_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = call i32 @sctp_transport_update_rto(%struct.sctp_transport* %80, i64 %85)
  %87 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %88 = call i32 @sctp_transport_reset_hb_timer(%struct.sctp_transport* %87)
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %73
  %92 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %93 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %99 = call i32 @sctp_transport_immediate_rtx(%struct.sctp_transport* %98)
  br label %100

100:                                              ; preds = %97, %91, %73
  ret void
}

declare dso_local i32 @sctp_assoc_control_transport(%struct.sctp_association*, %struct.sctp_transport*, i32, i32) #1

declare dso_local i32 @sctp_transport_dst_confirm(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_transport_update_rto(%struct.sctp_transport*, i64) #1

declare dso_local i32 @sctp_transport_reset_hb_timer(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_transport_immediate_rtx(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
