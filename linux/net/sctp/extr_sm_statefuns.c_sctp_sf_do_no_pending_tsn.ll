; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_no_pending_tsn.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_no_pending_tsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_ulpevent = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_no_pending_tsn(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_ulpevent*, align 8
  %15 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %15, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %16 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_sender_dry_event(%struct.sctp_association* %16, i32 %17)
  store %struct.sctp_ulpevent* %18, %struct.sctp_ulpevent** %14, align 8
  %19 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %20 = icmp ne %struct.sctp_ulpevent* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %22, i32* %7, align 4
  br label %30

23:                                               ; preds = %6
  %24 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %25 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %26 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %27 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %26)
  %28 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %24, i32 %25, i32 %27)
  %29 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %23, %21
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_sender_dry_event(%struct.sctp_association*, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
