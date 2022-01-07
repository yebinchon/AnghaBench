; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_process_sack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_process_sack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_association = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.net = type { i32 }

@SCTP_EVENT_T_OTHER = common dso_local global i32 0, align 4
@SCTP_EVENT_NO_PENDING_TSN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_cmd_seq*, %struct.sctp_association*, %struct.sctp_chunk*)* @sctp_cmd_process_sack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_cmd_process_sack(%struct.sctp_cmd_seq* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2) #0 {
  %4 = alloca %struct.sctp_cmd_seq*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  store %struct.sctp_cmd_seq* %0, %struct.sctp_cmd_seq** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %10 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %9, i32 0, i32 3
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %12 = call i64 @sctp_outq_sack(i32* %10, %struct.sctp_chunk* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %16 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %8, align 8
  %20 = load %struct.net*, %struct.net** %8, align 8
  %21 = load i32, i32* @SCTP_EVENT_T_OTHER, align 4
  %22 = load i32, i32* @SCTP_EVENT_NO_PENDING_TSN, align 4
  %23 = call i32 @SCTP_ST_OTHER(i32 %22)
  %24 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %28 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call i32 @sctp_do_sm(%struct.net* %20, i32 %21, i32 %23, i32 %26, i32 %29, %struct.sctp_association* %30, i32* null, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %14, %3
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i64 @sctp_outq_sack(i32*, %struct.sctp_chunk*) #1

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @sctp_do_sm(%struct.net*, i32, i32, i32, i32, %struct.sctp_association*, i32*, i32) #1

declare dso_local i32 @SCTP_ST_OTHER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
