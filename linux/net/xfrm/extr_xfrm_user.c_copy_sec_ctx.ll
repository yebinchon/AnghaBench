; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_sec_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_sec_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_sec_ctx = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.xfrm_user_sec_ctx = type { i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@XFRMA_SEC_CTX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_sec_ctx*, %struct.sk_buff*)* @copy_sec_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_sec_ctx(%struct.xfrm_sec_ctx* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_sec_ctx*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_user_sec_ctx*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.xfrm_sec_ctx* %0, %struct.xfrm_sec_ctx** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 20, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load i32, i32* @XFRMA_SEC_CTX, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %15, i32 %16, i32 %17)
  store %struct.nlattr* %18, %struct.nlattr** %7, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %20 = icmp eq %struct.nlattr* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EMSGSIZE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %57

24:                                               ; preds = %2
  %25 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %26 = call %struct.xfrm_user_sec_ctx* @nla_data(%struct.nlattr* %25)
  store %struct.xfrm_user_sec_ctx* %26, %struct.xfrm_user_sec_ctx** %6, align 8
  %27 = load i32, i32* @XFRMA_SEC_CTX, align 4
  %28 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %48, i64 1
  %50 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(%struct.xfrm_user_sec_ctx* %49, i32 %52, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %24, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.xfrm_user_sec_ctx* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memcpy(%struct.xfrm_user_sec_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
