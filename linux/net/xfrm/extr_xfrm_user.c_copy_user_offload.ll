; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_user_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_user_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state_offload = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xfrm_user_offload = type { i32, i32 }
%struct.nlattr = type { i32 }

@XFRMA_OFFLOAD_DEV = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state_offload*, %struct.sk_buff*)* @copy_user_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_user_offload(%struct.xfrm_state_offload* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state_offload*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_user_offload*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.xfrm_state_offload* %0, %struct.xfrm_state_offload** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = load i32, i32* @XFRMA_OFFLOAD_DEV, align 4
  %10 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %8, i32 %9, i32 8)
  store %struct.nlattr* %10, %struct.nlattr** %7, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %12 = icmp eq %struct.nlattr* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EMSGSIZE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %18 = call %struct.xfrm_user_offload* @nla_data(%struct.nlattr* %17)
  store %struct.xfrm_user_offload* %18, %struct.xfrm_user_offload** %6, align 8
  %19 = load %struct.xfrm_user_offload*, %struct.xfrm_user_offload** %6, align 8
  %20 = call i32 @memset(%struct.xfrm_user_offload* %19, i32 0, i32 8)
  %21 = load %struct.xfrm_state_offload*, %struct.xfrm_state_offload** %4, align 8
  %22 = getelementptr inbounds %struct.xfrm_state_offload, %struct.xfrm_state_offload* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xfrm_user_offload*, %struct.xfrm_user_offload** %6, align 8
  %27 = getelementptr inbounds %struct.xfrm_user_offload, %struct.xfrm_user_offload* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.xfrm_state_offload*, %struct.xfrm_state_offload** %4, align 8
  %29 = getelementptr inbounds %struct.xfrm_state_offload, %struct.xfrm_state_offload* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.xfrm_user_offload*, %struct.xfrm_user_offload** %6, align 8
  %32 = getelementptr inbounds %struct.xfrm_user_offload, %struct.xfrm_user_offload* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %16, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.xfrm_user_offload* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memset(%struct.xfrm_user_offload*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
