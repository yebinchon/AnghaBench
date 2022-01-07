; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_1_abort.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_1_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_ADDR_DEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_9_1_abort(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
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
  %19 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %20 = call i32 @sctp_vtag_verify_either(%struct.sctp_chunk* %18, %struct.sctp_association* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %6
  %23 = load %struct.net*, %struct.net** %9, align 8
  %24 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %25 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %28 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sctp_sf_pdiscard(%struct.net* %23, %struct.sctp_endpoint* %24, %struct.sctp_association* %25, i32 %29, i8* %26, %struct.sctp_cmd_seq* %27)
  store i32 %30, i32* %7, align 4
  br label %71

31:                                               ; preds = %6
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %33 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %32, i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = load %struct.net*, %struct.net** %9, align 8
  %37 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %38 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %41 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sctp_sf_pdiscard(%struct.net* %36, %struct.sctp_endpoint* %37, %struct.sctp_association* %38, i32 %42, i8* %39, %struct.sctp_cmd_seq* %40)
  store i32 %43, i32* %7, align 4
  br label %71

44:                                               ; preds = %31
  %45 = load i64, i64* @SCTP_ADDR_DEL, align 8
  %46 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %47 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %50 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %49, i32 0, i32 0
  %51 = call i64 @sctp_bind_addr_state(i32* %48, i32* %50)
  %52 = icmp eq i64 %45, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load %struct.net*, %struct.net** %9, align 8
  %55 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %56 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %59 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sctp_sf_discard_chunk(%struct.net* %54, %struct.sctp_endpoint* %55, %struct.sctp_association* %56, i32 %60, i8* %57, %struct.sctp_cmd_seq* %58)
  store i32 %61, i32* %7, align 4
  br label %71

62:                                               ; preds = %44
  %63 = load %struct.net*, %struct.net** %9, align 8
  %64 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %65 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %68 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @__sctp_sf_do_9_1_abort(%struct.net* %63, %struct.sctp_endpoint* %64, %struct.sctp_association* %65, i32 %69, i8* %66, %struct.sctp_cmd_seq* %67)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %62, %53, %35, %22
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @sctp_vtag_verify_either(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i64 @sctp_bind_addr_state(i32*, i32*) #1

declare dso_local i32 @sctp_sf_discard_chunk(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @__sctp_sf_do_9_1_abort(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
