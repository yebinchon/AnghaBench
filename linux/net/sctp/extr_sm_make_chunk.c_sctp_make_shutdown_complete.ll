; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_shutdown_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_shutdown_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_CHUNK_FLAG_T = common dso_local global i32 0, align 4
@SCTP_CID_SHUTDOWN_COMPLETE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_shutdown_complete(%struct.sctp_association* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %8 = icmp ne %struct.sctp_association* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @SCTP_CHUNK_FLAG_T, align 4
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ 0, %9 ], [ %11, %10 ]
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %17 = load i32, i32* @SCTP_CID_SHUTDOWN_COMPLETE, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association* %16, i32 %17, i32 %18, i32 0, i32 %19)
  store %struct.sctp_chunk* %20, %struct.sctp_chunk** %5, align 8
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %22 = icmp ne %struct.sctp_chunk* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %12
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %25 = icmp ne %struct.sctp_chunk* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %31 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %23, %12
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  ret %struct.sctp_chunk* %33
}

declare dso_local %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
