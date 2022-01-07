; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_to_user_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_to_user_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_algo_auth = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.xfrm_algo = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@XFRMA_ALG_AUTH = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_algo_auth*, %struct.sk_buff*)* @copy_to_user_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_to_user_auth(%struct.xfrm_algo_auth* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_algo_auth*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_algo*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.xfrm_algo_auth* %0, %struct.xfrm_algo_auth** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = load i32, i32* @XFRMA_ALG_AUTH, align 4
  %10 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %4, align 8
  %11 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 7
  %14 = sdiv i32 %13, 8
  %15 = sext i32 %14 to i64
  %16 = add i64 12, %15
  %17 = trunc i64 %16 to i32
  %18 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %8, i32 %9, i32 %17)
  store %struct.nlattr* %18, %struct.nlattr** %7, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EMSGSIZE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %26 = call %struct.xfrm_algo* @nla_data(%struct.nlattr* %25)
  store %struct.xfrm_algo* %26, %struct.xfrm_algo** %6, align 8
  %27 = load %struct.xfrm_algo*, %struct.xfrm_algo** %6, align 8
  %28 = getelementptr inbounds %struct.xfrm_algo, %struct.xfrm_algo* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %4, align 8
  %31 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strncpy(i32 %29, i32 %32, i32 4)
  %34 = load %struct.xfrm_algo*, %struct.xfrm_algo** %6, align 8
  %35 = getelementptr inbounds %struct.xfrm_algo, %struct.xfrm_algo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %4, align 8
  %38 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %4, align 8
  %41 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 7
  %44 = sdiv i32 %43, 8
  %45 = call i32 @memcpy(i32 %36, i32 %39, i32 %44)
  %46 = load %struct.xfrm_algo_auth*, %struct.xfrm_algo_auth** %4, align 8
  %47 = getelementptr inbounds %struct.xfrm_algo_auth, %struct.xfrm_algo_auth* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xfrm_algo*, %struct.xfrm_algo** %6, align 8
  %50 = getelementptr inbounds %struct.xfrm_algo, %struct.xfrm_algo* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %24, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.xfrm_algo* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
