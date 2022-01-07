; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_heartbeat_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_heartbeat_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SCTP_CID_HEARTBEAT_ACK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_heartbeat_ack(%struct.sctp_association* %0, %struct.sctp_chunk* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %11 = load i32, i32* @SCTP_CID_HEARTBEAT_ACK, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association* %10, i32 %11, i32 0, i64 %12, i32 %13)
  store %struct.sctp_chunk* %14, %struct.sctp_chunk** %9, align 8
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %16 = icmp ne %struct.sctp_chunk* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %35

18:                                               ; preds = %4
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %19, i64 %20, i8* %21)
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %24 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %27 = icmp ne %struct.sctp_chunk* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %30 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %33 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %18
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  ret %struct.sctp_chunk* %36
}

declare dso_local %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association*, i32, i32, i64, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
