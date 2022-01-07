; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_8_5_1_E_sa.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_8_5_1_E_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_MIB_OUTOFBLUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_8_5_1_E_sa(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %15, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = bitcast i8* %16 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %17, %struct.sctp_chunk** %14, align 8
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %19 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %18, i32 4)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %6
  %22 = load %struct.net*, %struct.net** %9, align 8
  %23 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %24 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %27 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sctp_sf_violation_chunklen(%struct.net* %22, %struct.sctp_endpoint* %23, %struct.sctp_association* %24, i32 %28, i8* %25, %struct.sctp_cmd_seq* %26)
  store i32 %29, i32* %7, align 4
  br label %41

30:                                               ; preds = %6
  %31 = load %struct.net*, %struct.net** %9, align 8
  %32 = load i32, i32* @SCTP_MIB_OUTOFBLUES, align 4
  %33 = call i32 @SCTP_INC_STATS(%struct.net* %31, i32 %32)
  %34 = load %struct.net*, %struct.net** %9, align 8
  %35 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %38 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sctp_sf_shut_8_4_5(%struct.net* %34, %struct.sctp_endpoint* %35, i32* null, i32 %39, i8* %36, %struct.sctp_cmd_seq* %37)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %30, %21
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_sf_shut_8_4_5(%struct.net*, %struct.sctp_endpoint*, i32*, i32, i8*, %struct.sctp_cmd_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
