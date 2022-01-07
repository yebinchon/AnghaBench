; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_asoc_verify_hmac_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_asoc_verify_hmac_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sctp_hmac_algo_param = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_auth_asoc_verify_hmac_id(%struct.sctp_association* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_hmac_algo_param*, align 8
  %7 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %9 = icmp ne %struct.sctp_association* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.sctp_hmac_algo_param*
  store %struct.sctp_hmac_algo_param* %16, %struct.sctp_hmac_algo_param** %6, align 8
  %17 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %6, align 8
  %18 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohs(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 4
  %24 = lshr i64 %23, 1
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %6, align 8
  %27 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @__sctp_auth_find_hmacid(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %11, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @__sctp_auth_find_hmacid(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
