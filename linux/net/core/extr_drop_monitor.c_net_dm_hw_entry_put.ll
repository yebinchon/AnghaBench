; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_entry_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_entry_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_dm_hw_entry = type { i32, i32 }
%struct.nlattr = type { i32 }

@NET_DM_ATTR_HW_ENTRY = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NET_DM_ATTR_HW_TRAP_NAME = common dso_local global i32 0, align 4
@NET_DM_ATTR_HW_TRAP_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_dm_hw_entry*)* @net_dm_hw_entry_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_dm_hw_entry_put(%struct.sk_buff* %0, %struct.net_dm_hw_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_dm_hw_entry*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_dm_hw_entry* %1, %struct.net_dm_hw_entry** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @NET_DM_ATTR_HW_ENTRY, align 4
  %9 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %7, i32 %8)
  store %struct.nlattr* %9, %struct.nlattr** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EMSGSIZE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @NET_DM_ATTR_HW_TRAP_NAME, align 4
  %18 = load %struct.net_dm_hw_entry*, %struct.net_dm_hw_entry** %5, align 8
  %19 = getelementptr inbounds %struct.net_dm_hw_entry, %struct.net_dm_hw_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @nla_put_string(%struct.sk_buff* %16, i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %37

24:                                               ; preds = %15
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* @NET_DM_ATTR_HW_TRAP_COUNT, align 4
  %27 = load %struct.net_dm_hw_entry*, %struct.net_dm_hw_entry** %5, align 8
  %28 = getelementptr inbounds %struct.net_dm_hw_entry, %struct.net_dm_hw_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @nla_put_u32(%struct.sk_buff* %25, i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %37

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %36 = call i32 @nla_nest_end(%struct.sk_buff* %34, %struct.nlattr* %35)
  store i32 0, i32* %3, align 4
  br label %43

37:                                               ; preds = %32, %23
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %40 = call i32 @nla_nest_cancel(%struct.sk_buff* %38, %struct.nlattr* %39)
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %33, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
