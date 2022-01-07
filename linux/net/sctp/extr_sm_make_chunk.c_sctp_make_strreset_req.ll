; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_strreset_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_strreset_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i64, i64, i64 }
%struct.sctp_strreset_outreq = type { i8*, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.sctp_strreset_inreq = type { i8*, %struct.TYPE_2__, i8*, i8* }

@SCTP_PARAM_RESET_OUT_REQUEST = common dso_local global i32 0, align 4
@SCTP_PARAM_RESET_IN_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_strreset_req(%struct.sctp_association* %0, i32 %1, %struct.sctp_strreset_outreq* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctp_strreset_outreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sctp_strreset_outreq, align 8
  %14 = alloca %struct.sctp_strreset_inreq, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sctp_strreset_outreq* %2, %struct.sctp_strreset_outreq** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 40, %23
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 40, %30
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %31, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %17, align 4
  %36 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %17, align 4
  %39 = add nsw i32 %37, %38
  %40 = call %struct.sctp_chunk* @sctp_make_reconf(%struct.sctp_association* %36, i32 %39)
  store %struct.sctp_chunk* %40, %struct.sctp_chunk** %15, align 8
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %42 = icmp ne %struct.sctp_chunk* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %5
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %6, align 8
  br label %114

44:                                               ; preds = %5
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %44
  %48 = load i32, i32* @SCTP_PARAM_RESET_OUT_REQUEST, align 4
  %49 = getelementptr inbounds %struct.sctp_strreset_outreq, %struct.sctp_strreset_outreq* %13, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %16, align 4
  %52 = call i8* @htons(i32 %51)
  %53 = getelementptr inbounds %struct.sctp_strreset_outreq, %struct.sctp_strreset_outreq* %13, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %56 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @htonl(i64 %57)
  %59 = getelementptr inbounds %struct.sctp_strreset_outreq, %struct.sctp_strreset_outreq* %13, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %61 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 1
  %64 = call i8* @htonl(i64 %63)
  %65 = getelementptr inbounds %struct.sctp_strreset_outreq, %struct.sctp_strreset_outreq* %13, i32 0, i32 3
  store i8* %64, i8** %65, align 8
  %66 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %67 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, 1
  %70 = call i8* @htonl(i64 %69)
  %71 = getelementptr inbounds %struct.sctp_strreset_outreq, %struct.sctp_strreset_outreq* %13, i32 0, i32 2
  store i8* %70, i8** %71, align 8
  %72 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %73 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %72, i32 40, %struct.sctp_strreset_outreq* %13)
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %47
  %77 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.sctp_strreset_outreq*, %struct.sctp_strreset_outreq** %9, align 8
  %80 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %77, i32 %78, %struct.sctp_strreset_outreq* %79)
  br label %81

81:                                               ; preds = %76, %47
  br label %82

82:                                               ; preds = %81, %44
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %82
  %86 = load i32, i32* @SCTP_PARAM_RESET_IN_REQUEST, align 4
  %87 = getelementptr inbounds %struct.sctp_strreset_inreq, %struct.sctp_strreset_inreq* %14, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i8* @htons(i32 %89)
  %91 = getelementptr inbounds %struct.sctp_strreset_inreq, %struct.sctp_strreset_inreq* %14, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %94 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = call i8* @htonl(i64 %98)
  %100 = getelementptr inbounds %struct.sctp_strreset_inreq, %struct.sctp_strreset_inreq* %14, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  %101 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %102 = bitcast %struct.sctp_strreset_inreq* %14 to %struct.sctp_strreset_outreq*
  %103 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %101, i32 40, %struct.sctp_strreset_outreq* %102)
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %85
  %107 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.sctp_strreset_outreq*, %struct.sctp_strreset_outreq** %9, align 8
  %110 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %107, i32 %108, %struct.sctp_strreset_outreq* %109)
  br label %111

111:                                              ; preds = %106, %85
  br label %112

112:                                              ; preds = %111, %82
  %113 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  store %struct.sctp_chunk* %113, %struct.sctp_chunk** %6, align 8
  br label %114

114:                                              ; preds = %112, %43
  %115 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  ret %struct.sctp_chunk* %115
}

declare dso_local %struct.sctp_chunk* @sctp_make_reconf(%struct.sctp_association*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_strreset_outreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
