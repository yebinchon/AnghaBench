; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnet_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnet_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.net = type { i32 }

@SMC_PNETID_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @smc_pnet_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_pnet_del(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %7 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %8 = call %struct.net* @genl_info_net(%struct.genl_info* %7)
  store %struct.net* %8, %struct.net** %6, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @SMC_PNETID_NAME, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.net*, %struct.net** %6, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @SMC_PNETID_NAME, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @nla_data(i32 %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @smc_pnet_remove_by_pnetid(%struct.net* %20, i8* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %19, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @smc_pnet_remove_by_pnetid(%struct.net*, i8*) #1

declare dso_local i64 @nla_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
