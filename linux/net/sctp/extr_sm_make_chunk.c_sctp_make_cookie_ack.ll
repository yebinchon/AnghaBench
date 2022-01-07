; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_cookie_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_cookie_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SCTP_CID_COOKIE_ACK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %6 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %7 = load i32, i32* @SCTP_CID_COOKIE_ACK, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association* %6, i32 %7, i32 0, i32 0, i32 %8)
  store %struct.sctp_chunk* %9, %struct.sctp_chunk** %5, align 8
  %10 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %11 = icmp ne %struct.sctp_chunk* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %14 = icmp ne %struct.sctp_chunk* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %17 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call %struct.TYPE_2__* @sctp_assoc_lookup_paddr(%struct.sctp_association* %21, i32* %25)
  %27 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %28 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %27, i32 0, i32 0
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %28, align 8
  br label %29

29:                                               ; preds = %20, %15, %12, %2
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  ret %struct.sctp_chunk* %30
}

declare dso_local %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @sctp_assoc_lookup_paddr(%struct.sctp_association*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
