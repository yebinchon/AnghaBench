; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_strreset_resp.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_strreset_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_strreset_resp = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SCTP_PARAM_RESET_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_strreset_resp(%struct.sctp_association* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_strreset_resp, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 24, i32* %9, align 4
  %11 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call %struct.sctp_chunk* @sctp_make_reconf(%struct.sctp_association* %11, i32 %12)
  store %struct.sctp_chunk* %13, %struct.sctp_chunk** %10, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %15 = icmp ne %struct.sctp_chunk* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %34

17:                                               ; preds = %3
  %18 = load i32, i32* @SCTP_PARAM_RESET_RESPONSE, align 4
  %19 = getelementptr inbounds %struct.sctp_strreset_resp, %struct.sctp_strreset_resp* %8, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @htons(i32 %21)
  %23 = getelementptr inbounds %struct.sctp_strreset_resp, %struct.sctp_strreset_resp* %8, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @htonl(i32 %25)
  %27 = getelementptr inbounds %struct.sctp_strreset_resp, %struct.sctp_strreset_resp* %8, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @htonl(i32 %28)
  %30 = getelementptr inbounds %struct.sctp_strreset_resp, %struct.sctp_strreset_resp* %8, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %32 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %31, i32 24, %struct.sctp_strreset_resp* %8)
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  store %struct.sctp_chunk* %33, %struct.sctp_chunk** %4, align 8
  br label %34

34:                                               ; preds = %17, %16
  %35 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  ret %struct.sctp_chunk* %35
}

declare dso_local %struct.sctp_chunk* @sctp_make_reconf(%struct.sctp_association*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_strreset_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
