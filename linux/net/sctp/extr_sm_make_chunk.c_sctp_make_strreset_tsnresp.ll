; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_strreset_tsnresp.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_strreset_tsnresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_strreset_resptsn = type { i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SCTP_PARAM_RESET_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_strreset_tsnresp(%struct.sctp_association* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_strreset_resptsn, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 40, i32* %13, align 4
  %15 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %16 = load i32, i32* %13, align 4
  %17 = call %struct.sctp_chunk* @sctp_make_reconf(%struct.sctp_association* %15, i32 %16)
  store %struct.sctp_chunk* %17, %struct.sctp_chunk** %14, align 8
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %19 = icmp ne %struct.sctp_chunk* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %6, align 8
  br label %44

21:                                               ; preds = %5
  %22 = load i32, i32* @SCTP_PARAM_RESET_RESPONSE, align 4
  %23 = getelementptr inbounds %struct.sctp_strreset_resptsn, %struct.sctp_strreset_resptsn* %12, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @htons(i32 %25)
  %27 = getelementptr inbounds %struct.sctp_strreset_resptsn, %struct.sctp_strreset_resptsn* %12, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i8* @htonl(i32 %29)
  %31 = getelementptr inbounds %struct.sctp_strreset_resptsn, %struct.sctp_strreset_resptsn* %12, i32 0, i32 3
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @htonl(i32 %32)
  %34 = getelementptr inbounds %struct.sctp_strreset_resptsn, %struct.sctp_strreset_resptsn* %12, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i8* @htonl(i32 %35)
  %37 = getelementptr inbounds %struct.sctp_strreset_resptsn, %struct.sctp_strreset_resptsn* %12, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i8* @htonl(i32 %38)
  %40 = getelementptr inbounds %struct.sctp_strreset_resptsn, %struct.sctp_strreset_resptsn* %12, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %42 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %41, i32 40, %struct.sctp_strreset_resptsn* %12)
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  store %struct.sctp_chunk* %43, %struct.sctp_chunk** %6, align 8
  br label %44

44:                                               ; preds = %21, %20
  %45 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  ret %struct.sctp_chunk* %45
}

declare dso_local %struct.sctp_chunk* @sctp_make_reconf(%struct.sctp_association*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_strreset_resptsn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
