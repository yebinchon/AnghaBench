; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_reconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_reconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_reconf_chunk = type { i32 }

@SCTP_CID_RECONF = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_chunk* (%struct.sctp_association*, i32)* @sctp_make_reconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_chunk* @sctp_make_reconf(%struct.sctp_association* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_chunk*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_reconf_chunk*, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %9 = load i32, i32* @SCTP_CID_RECONF, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association* %8, i32 %9, i32 0, i32 %10, i32 %11)
  store %struct.sctp_chunk* %12, %struct.sctp_chunk** %7, align 8
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %14 = icmp ne %struct.sctp_chunk* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %3, align 8
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %18 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.sctp_reconf_chunk*
  store %struct.sctp_reconf_chunk* %20, %struct.sctp_reconf_chunk** %6, align 8
  %21 = load %struct.sctp_reconf_chunk*, %struct.sctp_reconf_chunk** %6, align 8
  %22 = getelementptr inbounds %struct.sctp_reconf_chunk, %struct.sctp_reconf_chunk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %25 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  store %struct.sctp_chunk* %27, %struct.sctp_chunk** %3, align 8
  br label %28

28:                                               ; preds = %16, %15
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  ret %struct.sctp_chunk* %29
}

declare dso_local %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
