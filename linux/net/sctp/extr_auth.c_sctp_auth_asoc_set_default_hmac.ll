; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_asoc_set_default_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_asoc_set_default_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, %struct.sctp_endpoint* }
%struct.sctp_endpoint = type { i64* }
%struct.sctp_hmac_algo_param = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SCTP_AUTH_HMAC_ID_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_auth_asoc_set_default_hmac(%struct.sctp_association* %0, %struct.sctp_hmac_algo_param* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_hmac_algo_param*, align 8
  %5 = alloca %struct.sctp_endpoint*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_hmac_algo_param* %1, %struct.sctp_hmac_algo_param** %4, align 8
  %9 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %10 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %60

14:                                               ; preds = %2
  %15 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ntohs(i32 %18)
  %20 = sub i64 %19, 4
  %21 = lshr i64 %20, 1
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %24 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %23, i32 0, i32 1
  %25 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %24, align 8
  store %struct.sctp_endpoint* %25, %struct.sctp_endpoint** %5, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %57, %14
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %4, align 8
  %32 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ntohs(i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @SCTP_AUTH_HMAC_ID_MAX, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %57

43:                                               ; preds = %30
  %44 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %45 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i64, i64* %6, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %55 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %60

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %42
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %26

60:                                               ; preds = %13, %51, %26
  ret void
}

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
