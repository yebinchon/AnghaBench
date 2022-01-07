; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_ecn_cwr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_ecn_cwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sctp_cwrhdr = type { i32 }

@SCTP_CMD_ECN_CWR = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_ecn_cwr(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_cwrhdr*, align 8
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %17, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = bitcast i8* %18 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %19, %struct.sctp_chunk** %14, align 8
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %22 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %20, %struct.sctp_association* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %6
  %25 = load %struct.net*, %struct.net** %9, align 8
  %26 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %30 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sctp_sf_pdiscard(%struct.net* %25, %struct.sctp_endpoint* %26, %struct.sctp_association* %27, i32 %31, i8* %28, %struct.sctp_cmd_seq* %29)
  store i32 %32, i32* %7, align 4
  br label %75

33:                                               ; preds = %6
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %35 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %34, i32 4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load %struct.net*, %struct.net** %9, align 8
  %39 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %40 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %43 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sctp_sf_violation_chunklen(%struct.net* %38, %struct.sctp_endpoint* %39, %struct.sctp_association* %40, i32 %44, i8* %41, %struct.sctp_cmd_seq* %42)
  store i32 %45, i32* %7, align 4
  br label %75

46:                                               ; preds = %33
  %47 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %48 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.sctp_cwrhdr*
  store %struct.sctp_cwrhdr* %52, %struct.sctp_cwrhdr** %15, align 8
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %54 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call i32 @skb_pull(%struct.TYPE_2__* %55, i32 4)
  %57 = load %struct.sctp_cwrhdr*, %struct.sctp_cwrhdr** %15, align 8
  %58 = getelementptr inbounds %struct.sctp_cwrhdr, %struct.sctp_cwrhdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohl(i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %62 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i64 @TSN_lte(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %46
  %68 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %69 = load i32, i32* @SCTP_CMD_ECN_CWR, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @SCTP_U32(i32 %70)
  %72 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %68, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %67, %46
  %74 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %37, %24
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @skb_pull(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @TSN_lte(i32, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_U32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
