; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_verify_aead.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_verify_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.xfrm_algo_aead = type { i8* }

@XFRMA_ALG_AEAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**)* @verify_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_aead(%struct.nlattr** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.xfrm_algo_aead*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %7 = load i64, i64* @XFRMA_ALG_AEAD, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  store %struct.nlattr* %9, %struct.nlattr** %4, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %15 = call %struct.xfrm_algo_aead* @nla_data(%struct.nlattr* %14)
  store %struct.xfrm_algo_aead* %15, %struct.xfrm_algo_aead** %5, align 8
  %16 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %17 = call i32 @nla_len(%struct.nlattr* %16)
  %18 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %5, align 8
  %19 = call i64 @aead_len(%struct.xfrm_algo_aead* %18)
  %20 = trunc i64 %19 to i32
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %30

25:                                               ; preds = %13
  %26 = load %struct.xfrm_algo_aead*, %struct.xfrm_algo_aead** %5, align 8
  %27 = getelementptr inbounds %struct.xfrm_algo_aead, %struct.xfrm_algo_aead* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 7
  store i8 0, i8* %29, align 1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %22, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.xfrm_algo_aead* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i64 @aead_len(%struct.xfrm_algo_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
