; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_init_hmacs.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_init_hmacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sctp_endpoint = type { %struct.crypto_shash** }
%struct.crypto_shash = type { i32 }

@SCTP_AUTH_NUM_HMACS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@sctp_hmac_list = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_auth_init_hmacs(%struct.sctp_endpoint* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_shash*, align 8
  %7 = alloca i64, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.crypto_shash* null, %struct.crypto_shash** %6, align 8
  %8 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %8, i32 0, i32 0
  %10 = load %struct.crypto_shash**, %struct.crypto_shash*** %9, align 8
  %11 = icmp ne %struct.crypto_shash** %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

13:                                               ; preds = %2
  %14 = load i64, i64* @SCTP_AUTH_NUM_HMACS, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.crypto_shash** @kcalloc(i64 %14, i32 8, i32 %15)
  %17 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %18 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %17, i32 0, i32 0
  store %struct.crypto_shash** %16, %struct.crypto_shash*** %18, align 8
  %19 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %20 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %19, i32 0, i32 0
  %21 = load %struct.crypto_shash**, %struct.crypto_shash*** %20, align 8
  %22 = icmp ne %struct.crypto_shash** %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %77

26:                                               ; preds = %13
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %66, %26
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @SCTP_AUTH_NUM_HMACS, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sctp_hmac_list, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %66

39:                                               ; preds = %31
  %40 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %41 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %40, i32 0, i32 0
  %42 = load %struct.crypto_shash**, %struct.crypto_shash*** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.crypto_shash*, %struct.crypto_shash** %42, i64 %43
  %45 = load %struct.crypto_shash*, %struct.crypto_shash** %44, align 8
  %46 = icmp ne %struct.crypto_shash* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %66

48:                                               ; preds = %39
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sctp_hmac_list, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.crypto_shash* @crypto_alloc_shash(i32 %53, i32 0, i32 0)
  store %struct.crypto_shash* %54, %struct.crypto_shash** %6, align 8
  %55 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %56 = call i64 @IS_ERR(%struct.crypto_shash* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %70

59:                                               ; preds = %48
  %60 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %61 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %62 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %61, i32 0, i32 0
  %63 = load %struct.crypto_shash**, %struct.crypto_shash*** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.crypto_shash*, %struct.crypto_shash** %63, i64 %64
  store %struct.crypto_shash* %60, %struct.crypto_shash** %65, align 8
  br label %66

66:                                               ; preds = %59, %47, %38
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %27

69:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %77

70:                                               ; preds = %58
  %71 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %72 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %71, i32 0, i32 0
  %73 = load %struct.crypto_shash**, %struct.crypto_shash*** %72, align 8
  %74 = call i32 @sctp_auth_destroy_hmacs(%struct.crypto_shash** %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %69, %23, %12
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.crypto_shash** @kcalloc(i64, i32, i32) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @sctp_auth_destroy_hmacs(%struct.crypto_shash**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
