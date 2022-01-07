; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_from_user_sec_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_from_user_sec_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.nlattr = type { i32 }
%struct.xfrm_user_sec_ctx = type { i32 }

@XFRMA_SEC_CTX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, %struct.nlattr**)* @copy_from_user_sec_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_from_user_sec_ctx(%struct.xfrm_policy* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.xfrm_user_sec_ctx*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %8 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %9 = load i64, i64* @XFRMA_SEC_CTX, align 8
  %10 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %9
  %11 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  store %struct.nlattr* %11, %struct.nlattr** %6, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %17 = call %struct.xfrm_user_sec_ctx* @nla_data(%struct.nlattr* %16)
  store %struct.xfrm_user_sec_ctx* %17, %struct.xfrm_user_sec_ctx** %7, align 8
  %18 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %19 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %18, i32 0, i32 0
  %20 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %7, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @security_xfrm_policy_alloc(i32* %19, %struct.xfrm_user_sec_ctx* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %15, %14
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.xfrm_user_sec_ctx* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @security_xfrm_policy_alloc(i32*, %struct.xfrm_user_sec_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
