; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_strreset_addstrm.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_strreset_addstrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i64 }
%struct.sctp_strreset_addstrm = type { i64, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@SCTP_PARAM_RESET_ADD_OUT_STREAMS = common dso_local global i32 0, align 4
@SCTP_PARAM_RESET_ADD_IN_STREAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_strreset_addstrm(%struct.sctp_association* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_strreset_addstrm, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 40, i32* %9, align 4
  %11 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %16, %21
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %22, %23
  %25 = call %struct.sctp_chunk* @sctp_make_reconf(%struct.sctp_association* %11, i32 %24)
  store %struct.sctp_chunk* %25, %struct.sctp_chunk** %10, align 8
  %26 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %27 = icmp ne %struct.sctp_chunk* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %84

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i32, i32* @SCTP_PARAM_RESET_ADD_OUT_STREAMS, align 4
  %34 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %8, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @htons(i32 %36)
  %38 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %8, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i8* @htons(i32 %40)
  %42 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %8, i32 0, i32 2
  store i8* %41, i8** %42, align 8
  %43 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %44 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @htonl(i64 %45)
  %47 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %8, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %8, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %49, i32 %50, %struct.sctp_strreset_addstrm* %8)
  br label %52

52:                                               ; preds = %32, %29
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load i32, i32* @SCTP_PARAM_RESET_ADD_IN_STREAMS, align 4
  %57 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %8, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @htons(i32 %59)
  %61 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %8, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i8* @htons(i32 %63)
  %65 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %8, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  %66 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %67 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %68, %74
  %76 = call i8* @htonl(i64 %75)
  %77 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %8, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %8, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %79, i32 %80, %struct.sctp_strreset_addstrm* %8)
  br label %82

82:                                               ; preds = %55, %52
  %83 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  store %struct.sctp_chunk* %83, %struct.sctp_chunk** %4, align 8
  br label %84

84:                                               ; preds = %82, %28
  %85 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  ret %struct.sctp_chunk* %85
}

declare dso_local %struct.sctp_chunk* @sctp_make_reconf(%struct.sctp_association*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_strreset_addstrm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
