; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_assoc_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_assoc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_association = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_ERROR_RSRC_LOW = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_cmd_seq*, %struct.sctp_association*, %struct.sctp_association*)* @sctp_cmd_assoc_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_assoc_update(%struct.sctp_cmd_seq* %0, %struct.sctp_association* %1, %struct.sctp_association* %2) #0 {
  %4 = alloca %struct.sctp_cmd_seq*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_cmd_seq* %0, %struct.sctp_cmd_seq** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %6, align 8
  %9 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %10 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net* @sock_net(i32 %12)
  store %struct.net* %13, %struct.net** %7, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %15 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %16 = call i32 @sctp_assoc_update(%struct.sctp_association* %14, %struct.sctp_association* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %21 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %20, i32* null, i32 4)
  store %struct.sctp_chunk* %21, %struct.sctp_chunk** %8, align 8
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %23 = icmp ne %struct.sctp_chunk* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %26 = load i32, i32* @SCTP_ERROR_RSRC_LOW, align 4
  %27 = call i32 @sctp_init_cause(%struct.sctp_chunk* %25, i32 %26, i32 0)
  %28 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %4, align 8
  %29 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %31 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %30)
  %32 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %28, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %24, %19
  %34 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %4, align 8
  %35 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %36 = load i32, i32* @ECONNABORTED, align 4
  %37 = call i32 @SCTP_ERROR(i32 %36)
  %38 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %34, i32 %35, i32 %37)
  %39 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %4, align 8
  %40 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %41 = load i32, i32* @SCTP_ERROR_RSRC_LOW, align 4
  %42 = call i32 @SCTP_PERR(i32 %41)
  %43 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %39, i32 %40, i32 %42)
  %44 = load %struct.net*, %struct.net** %7, align 8
  %45 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %46 = call i32 @SCTP_INC_STATS(%struct.net* %44, i32 %45)
  %47 = load %struct.net*, %struct.net** %7, align 8
  %48 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %49 = call i32 @SCTP_DEC_STATS(%struct.net* %47, i32 %48)
  br label %50

50:                                               ; preds = %33, %18
  ret void
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @sctp_assoc_update(%struct.sctp_association*, %struct.sctp_association*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association*, i32*, i32) #1

declare dso_local i32 @sctp_init_cause(%struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_DEC_STATS(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
