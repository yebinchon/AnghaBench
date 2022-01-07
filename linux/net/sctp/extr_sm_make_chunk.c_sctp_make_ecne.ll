; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_ecne.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_ecne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_ecnehdr = type { i32 }

@SCTP_CID_ECN_ECNE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_ecne(%struct.sctp_association* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sctp_ecnehdr, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @htonl(i32 %7)
  %9 = getelementptr inbounds %struct.sctp_ecnehdr, %struct.sctp_ecnehdr* %6, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %11 = load i32, i32* @SCTP_CID_ECN_ECNE, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association* %10, i32 %11, i32 0, i32 4, i32 %12)
  store %struct.sctp_chunk* %13, %struct.sctp_chunk** %5, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %15 = icmp ne %struct.sctp_chunk* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %19 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %18, i32 4, %struct.sctp_ecnehdr* %6)
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %21 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %16
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  ret %struct.sctp_chunk* %24
}

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association*, i32, i32, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_ecnehdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
