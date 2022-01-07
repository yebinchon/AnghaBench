; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_cookie_wait_abort.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_cookie_wait_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_errhdr = type { i32 }

@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_cookie_wait_abort(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
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
  %17 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %17, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %18 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i8*, i8** %12, align 8
  %20 = bitcast i8* %19 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %20, %struct.sctp_chunk** %15, align 8
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %23 = call i32 @sctp_vtag_verify_either(%struct.sctp_chunk* %21, %struct.sctp_association* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %6
  %26 = load %struct.net*, %struct.net** %9, align 8
  %27 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %28 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %31 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sctp_sf_pdiscard(%struct.net* %26, %struct.sctp_endpoint* %27, %struct.sctp_association* %28, i32 %32, i8* %29, %struct.sctp_cmd_seq* %30)
  store i32 %33, i32* %7, align 4
  br label %76

34:                                               ; preds = %6
  %35 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %36 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %35, i32 4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load %struct.net*, %struct.net** %9, align 8
  %40 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %41 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %44 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sctp_sf_pdiscard(%struct.net* %39, %struct.sctp_endpoint* %40, %struct.sctp_association* %41, i32 %45, i8* %42, %struct.sctp_cmd_seq* %43)
  store i32 %46, i32* %7, align 4
  br label %76

47:                                               ; preds = %34
  %48 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %49 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohs(i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = zext i32 %54 to i64
  %56 = icmp uge i64 %55, 8
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %59 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.sctp_errhdr*
  %64 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %57, %47
  %67 = load %struct.net*, %struct.net** %9, align 8
  %68 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @ECONNREFUSED, align 4
  %71 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %72 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %73 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @sctp_stop_t1_and_abort(%struct.net* %67, %struct.sctp_cmd_seq* %68, i32 %69, i32 %70, %struct.sctp_association* %71, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %66, %38, %25
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @sctp_vtag_verify_either(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_stop_t1_and_abort(%struct.net*, %struct.sctp_cmd_seq*, i32, i32, %struct.sctp_association*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
