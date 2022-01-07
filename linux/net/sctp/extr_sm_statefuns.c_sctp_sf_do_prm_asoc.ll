; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_prm_asoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_prm_asoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_WAIT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_CHOOSE_TRANSPORT = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_ASOC = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_START = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_prm_asoc(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_association*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %16, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %17 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %18 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %19 = load i32, i32* @SCTP_STATE_COOKIE_WAIT, align 4
  %20 = call i32 @SCTP_STATE(i32 %19)
  %21 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %17, i32 %18, i32 %20)
  %22 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %23 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %24 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.sctp_chunk* @sctp_make_init(%struct.sctp_association* %22, i32* %25, i32 %26, i32 0)
  store %struct.sctp_chunk* %27, %struct.sctp_chunk** %15, align 8
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %29 = icmp ne %struct.sctp_chunk* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %6
  br label %54

31:                                               ; preds = %6
  %32 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %33 = load i32, i32* @SCTP_CMD_INIT_CHOOSE_TRANSPORT, align 4
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %35 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %34)
  %36 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %32, i32 %33, i32 %35)
  %37 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  store %struct.sctp_association* %37, %struct.sctp_association** %14, align 8
  %38 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %39 = load i32, i32* @SCTP_CMD_NEW_ASOC, align 4
  %40 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %41 = call i32 @SCTP_ASOC(%struct.sctp_association* %40)
  %42 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %38, i32 %39, i32 %41)
  %43 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %44 = load i32, i32* @SCTP_CMD_TIMER_START, align 4
  %45 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_INIT, align 4
  %46 = call i32 @SCTP_TO(i32 %45)
  %47 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %43, i32 %44, i32 %46)
  %48 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %49 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %50 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %51 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %50)
  %52 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %48, i32 %49, i32 %51)
  %53 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %53, i32* %7, align 4
  br label %56

54:                                               ; preds = %30
  %55 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %31
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_init(%struct.sctp_association*, i32*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_ASOC(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_TO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
