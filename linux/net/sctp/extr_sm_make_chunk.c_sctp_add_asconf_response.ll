; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_add_asconf_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_add_asconf_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_addip_param = type { i8*, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.sctp_errhdr = type { i8*, i64, i32, %struct.TYPE_2__ }

@SCTP_ERROR_NO_ERROR = common dso_local global i64 0, align 8
@SCTP_PARAM_SUCCESS_REPORT = common dso_local global i64 0, align 8
@SCTP_PARAM_ERR_CAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_chunk*, i32, i64, %struct.sctp_addip_param*)* @sctp_add_asconf_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_add_asconf_response(%struct.sctp_chunk* %0, i32 %1, i64 %2, %struct.sctp_addip_param* %3) #0 {
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sctp_addip_param*, align 8
  %9 = alloca %struct.sctp_addip_param, align 8
  %10 = alloca %struct.sctp_errhdr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.sctp_addip_param* %3, %struct.sctp_addip_param** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i64, i64* @SCTP_ERROR_NO_ERROR, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* @SCTP_PARAM_SUCCESS_REPORT, align 8
  store i64 %18, i64* %13, align 8
  br label %30

19:                                               ; preds = %4
  %20 = load i64, i64* @SCTP_PARAM_ERR_CAUSE, align 8
  store i64 %20, i64* %13, align 8
  store i32 40, i32* %12, align 4
  %21 = load %struct.sctp_addip_param*, %struct.sctp_addip_param** %8, align 8
  %22 = icmp ne %struct.sctp_addip_param* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.sctp_addip_param*, %struct.sctp_addip_param** %8, align 8
  %25 = getelementptr inbounds %struct.sctp_addip_param, %struct.sctp_addip_param* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @ntohs(i8* %27)
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %23, %19
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i64, i64* %13, align 8
  %32 = getelementptr inbounds %struct.sctp_addip_param, %struct.sctp_addip_param* %9, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 40, %35
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %36, %38
  %40 = trunc i64 %39 to i32
  %41 = call i8* @htons(i32 %40)
  %42 = getelementptr inbounds %struct.sctp_addip_param, %struct.sctp_addip_param* %9, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = getelementptr inbounds %struct.sctp_addip_param, %struct.sctp_addip_param* %9, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %47 = bitcast %struct.sctp_addip_param* %9 to %struct.sctp_errhdr*
  %48 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %46, i32 40, %struct.sctp_errhdr* %47)
  %49 = load i64, i64* @SCTP_ERROR_NO_ERROR, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %30
  br label %72

53:                                               ; preds = %30
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %10, i32 0, i32 1
  store i64 %54, i64* %55, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i8* @htons(i32 %58)
  %60 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %10, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  %61 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %61, i32 %62, %struct.sctp_errhdr* %10)
  %64 = load %struct.sctp_addip_param*, %struct.sctp_addip_param** %8, align 8
  %65 = icmp ne %struct.sctp_addip_param* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.sctp_addip_param*, %struct.sctp_addip_param** %8, align 8
  %70 = bitcast %struct.sctp_addip_param* %69 to %struct.sctp_errhdr*
  %71 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %67, i32 %68, %struct.sctp_errhdr* %70)
  br label %72

72:                                               ; preds = %52, %66, %53
  ret void
}

declare dso_local i32 @ntohs(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_errhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
