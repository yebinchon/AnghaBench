; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c___sctp_sf_do_9_1_abort.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c___sctp_sf_do_9_1_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_3__*, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_errhdr = type { i32 }

@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*)* @__sctp_sf_do_9_1_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sctp_sf_do_9_1_abort(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sctp_errhdr*, align 8
  %18 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %18, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %19 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i8*, i8** %12, align 8
  %21 = bitcast i8* %20 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %21, %struct.sctp_chunk** %15, align 8
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %23 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntohs(i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = zext i32 %28 to i64
  %30 = icmp uge i64 %29, 8
  br i1 %30, label %31, label %62

31:                                               ; preds = %6
  %32 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %17, align 8
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %34 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @sctp_walk_errors(%struct.sctp_errhdr* %32, %struct.TYPE_4__* %35)
  %37 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %17, align 8
  %38 = bitcast %struct.sctp_errhdr* %37 to i8*
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %40 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = icmp ne i8* %38, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load %struct.net*, %struct.net** %9, align 8
  %46 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %47 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %50 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sctp_sf_pdiscard(%struct.net* %45, %struct.sctp_endpoint* %46, %struct.sctp_association* %47, i32 %51, i8* %48, %struct.sctp_cmd_seq* %49)
  store i32 %52, i32* %7, align 4
  br label %80

53:                                               ; preds = %31
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %55 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.sctp_errhdr*
  %60 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %53, %6
  %63 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %64 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %65 = load i32, i32* @ECONNRESET, align 4
  %66 = call i32 @SCTP_ERROR(i32 %65)
  %67 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %63, i32 %64, i32 %66)
  %68 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %69 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @SCTP_PERR(i32 %70)
  %72 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %68, i32 %69, i32 %71)
  %73 = load %struct.net*, %struct.net** %9, align 8
  %74 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %75 = call i32 @SCTP_INC_STATS(%struct.net* %73, i32 %74)
  %76 = load %struct.net*, %struct.net** %9, align 8
  %77 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %78 = call i32 @SCTP_DEC_STATS(%struct.net* %76, i32 %77)
  %79 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %62, %44
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_walk_errors(%struct.sctp_errhdr*, %struct.TYPE_4__*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

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
