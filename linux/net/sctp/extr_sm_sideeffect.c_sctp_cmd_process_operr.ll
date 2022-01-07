; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_process_operr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_process_operr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_association = type { %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*, %struct.sctp_ulpevent*)* }
%struct.sctp_ulpevent = type { i32 }
%struct.sctp_chunk = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.sctp_errhdr = type { i32, i64 }
%struct.sctp_chunkhdr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T4_RTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_cmd_seq*, %struct.sctp_association*, %struct.sctp_chunk*)* @sctp_cmd_process_operr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_process_operr(%struct.sctp_cmd_seq* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2) #0 {
  %4 = alloca %struct.sctp_cmd_seq*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_errhdr*, align 8
  %8 = alloca %struct.sctp_ulpevent*, align 8
  %9 = alloca %struct.sctp_chunkhdr*, align 8
  store %struct.sctp_cmd_seq* %0, %struct.sctp_cmd_seq** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %6, align 8
  br label %10

10:                                               ; preds = %75, %3
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %15 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %13, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %10
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %22 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.sctp_errhdr*
  store %struct.sctp_errhdr* %26, %struct.sctp_errhdr** %7, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_remote_error(%struct.sctp_association* %27, %struct.sctp_chunk* %28, i32 0, i32 %29)
  store %struct.sctp_ulpevent* %30, %struct.sctp_ulpevent** %8, align 8
  %31 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %32 = icmp ne %struct.sctp_ulpevent* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  br label %76

34:                                               ; preds = %20
  %35 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %36 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32 (i32*, %struct.sctp_ulpevent*)*, i32 (i32*, %struct.sctp_ulpevent*)** %39, align 8
  %41 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %42 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %41, i32 0, i32 1
  %43 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %44 = call i32 %40(i32* %42, %struct.sctp_ulpevent* %43)
  %45 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %7, align 8
  %46 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %74 [
    i32 128, label %48
  ]

48:                                               ; preds = %34
  %49 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %7, align 8
  %50 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %52, %struct.sctp_chunkhdr** %9, align 8
  %53 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %9, align 8
  %54 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %72 [
    i32 129, label %56
  ]

56:                                               ; preds = %48
  %57 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %58 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %73

63:                                               ; preds = %56
  %64 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %65 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %4, align 8
  %68 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %69 = load i32, i32* @SCTP_EVENT_TIMEOUT_T4_RTO, align 4
  %70 = call i32 @SCTP_TO(i32 %69)
  %71 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %67, i32 %68, i32 %70)
  br label %73

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %72, %63, %62
  br label %75

74:                                               ; preds = %34
  br label %75

75:                                               ; preds = %74, %73
  br label %10

76:                                               ; preds = %33, %10
  ret void
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_remote_error(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
