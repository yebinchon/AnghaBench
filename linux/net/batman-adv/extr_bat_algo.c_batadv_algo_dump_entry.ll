; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_algo.c_batadv_algo_dump_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_algo.c_batadv_algo_dump_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.batadv_algo_ops = type { i32 }

@batadv_netlink_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@BATADV_CMD_GET_ROUTING_ALGOS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@BATADV_ATTR_ALGO_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.batadv_algo_ops*)* @batadv_algo_dump_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_algo_dump_entry(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.batadv_algo_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.batadv_algo_ops*, align 8
  %10 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.batadv_algo_ops* %3, %struct.batadv_algo_ops** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @NLM_F_MULTI, align 4
  %15 = load i32, i32* @BATADV_CMD_GET_ROUTING_ALGOS, align 4
  %16 = call i8* @genlmsg_put(%struct.sk_buff* %11, i32 %12, i32 %13, i32* @batadv_netlink_family, i32 %14, i32 %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EMSGSIZE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %41

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* @BATADV_ATTR_ALGO_NAME, align 4
  %25 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %9, align 8
  %26 = getelementptr inbounds %struct.batadv_algo_ops, %struct.batadv_algo_ops* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @nla_put_string(%struct.sk_buff* %23, i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %35

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @genlmsg_end(%struct.sk_buff* %32, i8* %33)
  store i32 0, i32* %5, align 4
  br label %41

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @genlmsg_cancel(%struct.sk_buff* %36, i8* %37)
  %39 = load i32, i32* @EMSGSIZE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %35, %31, %19
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
