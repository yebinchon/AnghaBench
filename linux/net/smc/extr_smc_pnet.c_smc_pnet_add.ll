; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnet_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnet_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%struct.net = type { i32 }
%struct.smc_user_pnetentry = type { i64 }
%struct.smc_pnettable = type { i32 }
%struct.smc_net = type { %struct.smc_pnettable }

@smc_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @smc_pnet_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_pnet_add(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.smc_user_pnetentry, align 8
  %7 = alloca %struct.smc_pnettable*, align 8
  %8 = alloca %struct.smc_net*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %11 = call %struct.net* @genl_info_net(%struct.genl_info* %10)
  store %struct.net* %11, %struct.net** %5, align 8
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = load i32, i32* @smc_net_id, align 4
  %14 = call %struct.smc_net* @net_generic(%struct.net* %12, i32 %13)
  store %struct.smc_net* %14, %struct.smc_net** %8, align 8
  %15 = load %struct.smc_net*, %struct.smc_net** %8, align 8
  %16 = getelementptr inbounds %struct.smc_net, %struct.smc_net* %15, i32 0, i32 0
  store %struct.smc_pnettable* %16, %struct.smc_pnettable** %7, align 8
  %17 = load %struct.net*, %struct.net** %5, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @smc_pnet_fill_entry(%struct.net* %17, %struct.smc_user_pnetentry* %6, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.smc_pnettable*, %struct.smc_pnettable** %7, align 8
  %26 = call i32 @smc_pnet_enter(%struct.smc_pnettable* %25, %struct.smc_user_pnetentry* %6)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %2
  %28 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dev_put(i64 %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local %struct.smc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @smc_pnet_fill_entry(%struct.net*, %struct.smc_user_pnetentry*, i32) #1

declare dso_local i32 @smc_pnet_enter(%struct.smc_pnettable*, %struct.smc_user_pnetentry*) #1

declare dso_local i32 @dev_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
