; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_cwr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_cwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_cwrhdr = type { i32 }

@SCTP_CID_ECN_CWR = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_cwr(%struct.sctp_association* %0, i32 %1, %struct.sctp_chunk* %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  %8 = alloca %struct.sctp_cwrhdr, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @htonl(i32 %9)
  %11 = getelementptr inbounds %struct.sctp_cwrhdr, %struct.sctp_cwrhdr* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %13 = load i32, i32* @SCTP_CID_ECN_CWR, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association* %12, i32 %13, i32 0, i32 4, i32 %14)
  store %struct.sctp_chunk* %15, %struct.sctp_chunk** %7, align 8
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %17 = icmp ne %struct.sctp_chunk* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %21 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %20, i32 4, %struct.sctp_cwrhdr* %8)
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %23 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %26 = icmp ne %struct.sctp_chunk* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %29 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %32 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %19
  br label %34

34:                                               ; preds = %33, %18
  %35 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  ret %struct.sctp_chunk* %35
}

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association*, i32, i32, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_cwrhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
