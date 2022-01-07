; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_dupcook_b.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_dupcook_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sctp_init_chunk* }
%struct.sctp_init_chunk = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_association = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DISCARD = common dso_local global i32 0, align 4
@SCTP_CMD_UPDATE_ASSOC = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_ESTABLISHED = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMERS_START = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_CHANGE = common dso_local global i32 0, align 4
@SCTP_COMM_UP = common dso_local global i32 0, align 4
@SCTP_CMD_ADAPTATION_IND = common dso_local global i32 0, align 4
@SCTP_CMD_PEER_NO_AUTH = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_cmd_seq*, %struct.sctp_association*)* @sctp_sf_do_dupcook_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_do_dupcook_b(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, %struct.sctp_chunk* %3, %struct.sctp_cmd_seq* %4, %struct.sctp_association* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sctp_endpoint*, align 8
  %10 = alloca %struct.sctp_association*, align 8
  %11 = alloca %struct.sctp_chunk*, align 8
  %12 = alloca %struct.sctp_cmd_seq*, align 8
  %13 = alloca %struct.sctp_association*, align 8
  %14 = alloca %struct.sctp_init_chunk*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %9, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %10, align 8
  store %struct.sctp_chunk* %3, %struct.sctp_chunk** %11, align 8
  store %struct.sctp_cmd_seq* %4, %struct.sctp_cmd_seq** %12, align 8
  store %struct.sctp_association* %5, %struct.sctp_association** %13, align 8
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %17 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %21, align 8
  %23 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %22, i64 0
  store %struct.sctp_init_chunk* %23, %struct.sctp_init_chunk** %14, align 8
  %24 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %26 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %27 = call i32 @sctp_source(%struct.sctp_chunk* %26)
  %28 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %14, align 8
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call i32 @sctp_process_init(%struct.sctp_association* %24, %struct.sctp_chunk* %25, i32 %27, %struct.sctp_init_chunk* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %6
  br label %105

33:                                               ; preds = %6
  %34 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i64 @sctp_auth_asoc_init_active_key(%struct.sctp_association* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %105

39:                                               ; preds = %33
  %40 = load %struct.net*, %struct.net** %8, align 8
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %42 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %43 = call i32 @sctp_auth_chunk_verify(%struct.net* %40, %struct.sctp_chunk* %41, %struct.sctp_association* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %46, i32* %7, align 4
  br label %107

47:                                               ; preds = %39
  %48 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %49 = load i32, i32* @SCTP_CMD_UPDATE_ASSOC, align 4
  %50 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %51 = call i32 @SCTP_ASOC(%struct.sctp_association* %50)
  %52 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %48, i32 %49, i32 %51)
  %53 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %54 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %55 = load i32, i32* @SCTP_STATE_ESTABLISHED, align 4
  %56 = call i32 @SCTP_STATE(i32 %55)
  %57 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %53, i32 %54, i32 %56)
  %58 = load %struct.net*, %struct.net** %8, align 8
  %59 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %60 = call i32 @SCTP_INC_STATS(%struct.net* %58, i32 %59)
  %61 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %62 = load i32, i32* @SCTP_CMD_HB_TIMERS_START, align 4
  %63 = call i32 (...) @SCTP_NULL()
  %64 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %61, i32 %62, i32 %63)
  %65 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %66 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %67 = call %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association* %65, %struct.sctp_chunk* %66)
  store %struct.sctp_chunk* %67, %struct.sctp_chunk** %15, align 8
  %68 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %69 = icmp ne %struct.sctp_chunk* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %47
  br label %105

71:                                               ; preds = %47
  %72 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %73 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %74 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %75 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %74)
  %76 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %72, i32 %73, i32 %75)
  %77 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %78 = load i32, i32* @SCTP_CMD_ASSOC_CHANGE, align 4
  %79 = load i32, i32* @SCTP_COMM_UP, align 4
  %80 = call i32 @SCTP_U8(i32 %79)
  %81 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %77, i32 %78, i32 %80)
  %82 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %83 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %71
  %88 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %89 = load i32, i32* @SCTP_CMD_ADAPTATION_IND, align 4
  %90 = call i32 (...) @SCTP_NULL()
  %91 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %71
  %93 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %94 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  %99 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %100 = load i32, i32* @SCTP_CMD_PEER_NO_AUTH, align 4
  %101 = call i32 (...) @SCTP_NULL()
  %102 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %92
  %104 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %104, i32* %7, align 4
  br label %107

105:                                              ; preds = %70, %38, %32
  %106 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %105, %103, %45
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @sctp_process_init(%struct.sctp_association*, %struct.sctp_chunk*, i32, %struct.sctp_init_chunk*, i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

declare dso_local i64 @sctp_auth_asoc_init_active_key(%struct.sctp_association*, i32) #1

declare dso_local i32 @sctp_auth_chunk_verify(%struct.net*, %struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_ASOC(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_U8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
