; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_4__, %struct.sctp_transport* }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_transport = type { i32, i32 }
%struct.sctp_sender_hb_info = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SCTP_CID_HEARTBEAT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_PARAM_HEARTBEAT_INFO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_heartbeat(%struct.sctp_association* %0, %struct.sctp_transport* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_transport*, align 8
  %5 = alloca %struct.sctp_sender_hb_info, align 4
  %6 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %4, align 8
  %7 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %8 = load i32, i32* @SCTP_CID_HEARTBEAT, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association* %7, i32 %8, i32 0, i32 20, i32 %9)
  store %struct.sctp_chunk* %10, %struct.sctp_chunk** %6, align 8
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %12 = icmp ne %struct.sctp_chunk* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %39

14:                                               ; preds = %2
  %15 = load i32, i32* @SCTP_PARAM_HEARTBEAT_INFO, align 4
  %16 = getelementptr inbounds %struct.sctp_sender_hb_info, %struct.sctp_sender_hb_info* %5, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = call i32 @htons(i32 20)
  %19 = getelementptr inbounds %struct.sctp_sender_hb_info, %struct.sctp_sender_hb_info* %5, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %22 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.sctp_sender_hb_info, %struct.sctp_sender_hb_info* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @jiffies, align 4
  %26 = getelementptr inbounds %struct.sctp_sender_hb_info, %struct.sctp_sender_hb_info* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.sctp_sender_hb_info, %struct.sctp_sender_hb_info* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %33 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %32, i32 0, i32 1
  store %struct.sctp_transport* %31, %struct.sctp_transport** %33, align 8
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %35 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %34, i32 20, %struct.sctp_sender_hb_info* %5)
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %37 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  br label %39

39:                                               ; preds = %14, %13
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  ret %struct.sctp_chunk* %40
}

declare dso_local %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association*, i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_sender_hb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
