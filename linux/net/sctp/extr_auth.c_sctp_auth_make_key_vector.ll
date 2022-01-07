; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_make_key_vector.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_make_key_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_auth_bytes = type { i64 }
%struct.sctp_random_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_chunks_param = type { %struct.TYPE_2__ }
%struct.sctp_hmac_algo_param = type { %struct.TYPE_2__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_auth_bytes* (%struct.sctp_random_param*, %struct.sctp_chunks_param*, %struct.sctp_hmac_algo_param*, i32)* @sctp_auth_make_key_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_auth_bytes* @sctp_auth_make_key_vector(%struct.sctp_random_param* %0, %struct.sctp_chunks_param* %1, %struct.sctp_hmac_algo_param* %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_auth_bytes*, align 8
  %6 = alloca %struct.sctp_random_param*, align 8
  %7 = alloca %struct.sctp_chunks_param*, align 8
  %8 = alloca %struct.sctp_hmac_algo_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_auth_bytes*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.sctp_random_param* %0, %struct.sctp_random_param** %6, align 8
  store %struct.sctp_chunks_param* %1, %struct.sctp_chunks_param** %7, align 8
  store %struct.sctp_hmac_algo_param* %2, %struct.sctp_hmac_algo_param** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.sctp_random_param*, %struct.sctp_random_param** %6, align 8
  %17 = getelementptr inbounds %struct.sctp_random_param, %struct.sctp_random_param* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ntohs(i32 %19)
  store i64 %20, i64* %13, align 8
  %21 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %8, align 8
  %22 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ntohs(i32 %24)
  store i64 %25, i64* %14, align 8
  %26 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %7, align 8
  %27 = icmp ne %struct.sctp_chunks_param* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %7, align 8
  %30 = getelementptr inbounds %struct.sctp_chunks_param, %struct.sctp_chunks_param* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ntohs(i32 %32)
  store i64 %33, i64* %15, align 8
  br label %34

34:                                               ; preds = %28, %4
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %15, align 8
  %39 = add nsw i64 %37, %38
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.sctp_auth_bytes* @sctp_auth_create_key(i64 %40, i32 %41)
  store %struct.sctp_auth_bytes* %42, %struct.sctp_auth_bytes** %10, align 8
  %43 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %44 = icmp ne %struct.sctp_auth_bytes* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  store %struct.sctp_auth_bytes* null, %struct.sctp_auth_bytes** %5, align 8
  br label %82

46:                                               ; preds = %34
  %47 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %48 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.sctp_random_param*, %struct.sctp_random_param** %6, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @memcpy(i64 %49, %struct.sctp_random_param* %50, i64 %51)
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %12, align 8
  %56 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %7, align 8
  %57 = icmp ne %struct.sctp_chunks_param* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %46
  %59 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %60 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.sctp_chunks_param*, %struct.sctp_chunks_param** %7, align 8
  %65 = bitcast %struct.sctp_chunks_param* %64 to %struct.sctp_random_param*
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @memcpy(i64 %63, %struct.sctp_random_param* %65, i64 %66)
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %12, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %58, %46
  %72 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %73 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = add nsw i64 %74, %75
  %77 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %8, align 8
  %78 = bitcast %struct.sctp_hmac_algo_param* %77 to %struct.sctp_random_param*
  %79 = load i64, i64* %14, align 8
  %80 = call i32 @memcpy(i64 %76, %struct.sctp_random_param* %78, i64 %79)
  %81 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  store %struct.sctp_auth_bytes* %81, %struct.sctp_auth_bytes** %5, align 8
  br label %82

82:                                               ; preds = %71, %45
  %83 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %5, align 8
  ret %struct.sctp_auth_bytes* %83
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.sctp_auth_bytes* @sctp_auth_create_key(i64, i32) #1

declare dso_local i32 @memcpy(i64, %struct.sctp_random_param*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
