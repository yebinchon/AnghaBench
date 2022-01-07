; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_asoc_get_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_asoc_get_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_hmac = type { i32 }
%struct.sctp_association = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sctp_hmac_algo_param* }
%struct.sctp_hmac_algo_param = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@sctp_hmac_list = common dso_local global %struct.sctp_hmac* null, align 8
@SCTP_AUTH_HMAC_ID_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_hmac* @sctp_auth_asoc_get_hmac(%struct.sctp_association* %0) #0 {
  %2 = alloca %struct.sctp_hmac*, align 8
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_hmac_algo_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.sctp_hmac*, %struct.sctp_hmac** @sctp_hmac_list, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sctp_hmac, %struct.sctp_hmac* %13, i64 %17
  store %struct.sctp_hmac* %18, %struct.sctp_hmac** %2, align 8
  br label %75

19:                                               ; preds = %1
  %20 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %22, align 8
  store %struct.sctp_hmac_algo_param* %23, %struct.sctp_hmac_algo_param** %4, align 8
  %24 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %4, align 8
  %25 = icmp ne %struct.sctp_hmac_algo_param* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store %struct.sctp_hmac* null, %struct.sctp_hmac** %2, align 8
  br label %75

27:                                               ; preds = %19
  %28 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %4, align 8
  %29 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ntohs(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, 4
  %35 = lshr i64 %34, 1
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %63, %27
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load %struct.sctp_hmac_algo_param*, %struct.sctp_hmac_algo_param** %4, align 8
  %43 = getelementptr inbounds %struct.sctp_hmac_algo_param, %struct.sctp_hmac_algo_param* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SCTP_AUTH_HMAC_ID_MAX, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %41
  %54 = load %struct.sctp_hmac*, %struct.sctp_hmac** @sctp_hmac_list, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sctp_hmac, %struct.sctp_hmac* %54, i64 %56
  %58 = getelementptr inbounds %struct.sctp_hmac, %struct.sctp_hmac* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53, %41
  store i32 0, i32* %6, align 4
  br label %63

62:                                               ; preds = %53
  br label %66

63:                                               ; preds = %61
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %37

66:                                               ; preds = %62, %37
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store %struct.sctp_hmac* null, %struct.sctp_hmac** %2, align 8
  br label %75

70:                                               ; preds = %66
  %71 = load %struct.sctp_hmac*, %struct.sctp_hmac** @sctp_hmac_list, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sctp_hmac, %struct.sctp_hmac* %71, i64 %73
  store %struct.sctp_hmac* %74, %struct.sctp_hmac** %2, align 8
  br label %75

75:                                               ; preds = %70, %69, %26, %12
  %76 = load %struct.sctp_hmac*, %struct.sctp_hmac** %2, align 8
  ret %struct.sctp_hmac* %76
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
