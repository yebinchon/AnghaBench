; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param* }
%struct.sctp_hmac_algo_param = type { %struct.TYPE_2__, i8** }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.sctp_chunks_param = type { %struct.TYPE_2__, i8** }

@ENOMEM = common dso_local global i32 0, align 4
@hmac_ids = common dso_local global i32 0, align 4
@SCTP_AUTH_NUM_HMACS = common dso_local global i32 0, align 4
@SCTP_PARAM_HMAC_ALGO = common dso_local global i32 0, align 4
@SCTP_AUTH_HMAC_ID_SHA1 = common dso_local global i32 0, align 4
@SCTP_NUM_CHUNK_TYPES = common dso_local global i64 0, align 8
@SCTP_PARAM_CHUNKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_auth_init(%struct.sctp_endpoint* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_hmac_algo_param*, align 8
  %8 = alloca %struct.sctp_chunks_param*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %11, i32 0, i32 1
  %13 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %12, align 8
  %14 = icmp ne %struct.sctp_hmac_algo_param* %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %2
  %16 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %7, align 8
  %17 = load i32, i32* @hmac_ids, align 4
  %18 = load i32, i32* @SCTP_AUTH_NUM_HMACS, align 4
  %19 = call i64 @struct_size(%struct.sctp_hmac_algo_param* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @kzalloc(i64 %19, i32 %20)
  %22 = bitcast i8* %21 to %struct.sctp_hmac_algo_param*
  store %struct.sctp_hmac_algo_param* %22, %struct.sctp_hmac_algo_param** %7, align 8
  %23 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %7, align 8
  %24 = icmp ne %struct.sctp_hmac_algo_param* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %79

26:                                               ; preds = %15
  %27 = load i32, i32* @SCTP_PARAM_HMAC_ALGO, align 4
  %28 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %7, align 8
  %29 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = call i8* @htons(i32 6)
  %32 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %7, align 8
  %33 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* @SCTP_AUTH_HMAC_ID_SHA1, align 4
  %36 = call i8* @htons(i32 %35)
  %37 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %7, align 8
  %38 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* %36, i8** %40, align 8
  %41 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %7, align 8
  %42 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %43 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %42, i32 0, i32 1
  store %struct.sctp_hmac_algo_param* %41, %struct.sctp_hmac_algo_param** %43, align 8
  br label %44

44:                                               ; preds = %26, %2
  %45 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %46 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %45, i32 0, i32 0
  %47 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %46, align 8
  %48 = icmp ne %struct.sctp_hmac_algo_param* %47, null
  br i1 %48, label %71, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* @SCTP_NUM_CHUNK_TYPES, align 8
  %51 = add i64 24, %50
  %52 = load i32, i32* %5, align 4
  %53 = call i8* @kzalloc(i64 %51, i32 %52)
  %54 = bitcast i8* %53 to %struct.sctp_chunks_param*
  store %struct.sctp_chunks_param* %54, %struct.sctp_chunks_param** %8, align 8
  %55 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %8, align 8
  %56 = icmp ne %struct.sctp_chunks_param* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %79

58:                                               ; preds = %49
  %59 = load i32, i32* @SCTP_PARAM_CHUNKS, align 4
  %60 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %8, align 8
  %61 = getelementptr inbounds %struct.sctp_chunks_param, %struct.sctp_chunks_param* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = call i8* @htons(i32 4)
  %64 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %8, align 8
  %65 = getelementptr inbounds %struct.sctp_chunks_param, %struct.sctp_chunks_param* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %8, align 8
  %68 = bitcast %struct.sctp_chunks_param* %67 to %struct.sctp_hmac_algo_param*
  %69 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %70 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %69, i32 0, i32 0
  store %struct.sctp_hmac_algo_param* %68, %struct.sctp_hmac_algo_param** %70, align 8
  br label %71

71:                                               ; preds = %58, %44
  %72 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @sctp_auth_init_hmacs(%struct.sctp_endpoint* %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %79

78:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %93

79:                                               ; preds = %77, %57, %25
  %80 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %81 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %80, i32 0, i32 1
  %82 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %81, align 8
  %83 = call i32 @kfree(%struct.sctp_hmac_algo_param* %82)
  %84 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %85 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %84, i32 0, i32 0
  %86 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %85, align 8
  %87 = call i32 @kfree(%struct.sctp_hmac_algo_param* %86)
  %88 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %89 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %88, i32 0, i32 1
  store %struct.sctp_hmac_algo_param* null, %struct.sctp_hmac_algo_param** %89, align 8
  %90 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %91 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %90, i32 0, i32 0
  store %struct.sctp_hmac_algo_param* null, %struct.sctp_hmac_algo_param** %91, align 8
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %79, %78
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i64 @struct_size(%struct.sctp_hmac_algo_param*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @sctp_auth_init_hmacs(%struct.sctp_endpoint*, i32) #1

declare dso_local i32 @kfree(%struct.sctp_hmac_algo_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
