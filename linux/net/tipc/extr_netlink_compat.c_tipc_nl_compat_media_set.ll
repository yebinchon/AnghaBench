; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_media_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_media_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_nl_compat_msg = type { i32 }
%struct.nlattr = type { i32 }
%struct.tipc_link_config = type { i32 }

@TIPC_NLA_MEDIA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_MEDIA_NAME = common dso_local global i32 0, align 4
@TIPC_NLA_MEDIA_PROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tipc_nl_compat_msg*)* @tipc_nl_compat_media_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_nl_compat_media_set(%struct.sk_buff* %0, %struct.tipc_nl_compat_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tipc_nl_compat_msg*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.tipc_link_config*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tipc_nl_compat_msg* %1, %struct.tipc_nl_compat_msg** %5, align 8
  %9 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %10 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @TLV_DATA(i32 %11)
  %13 = inttoptr i64 %12 to %struct.tipc_link_config*
  store %struct.tipc_link_config* %13, %struct.tipc_link_config** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @TIPC_NLA_MEDIA, align 4
  %16 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %14, i32 %15)
  store %struct.nlattr* %16, %struct.nlattr** %7, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EMSGSIZE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @TIPC_NLA_MEDIA_NAME, align 4
  %25 = load %struct.tipc_link_config*, %struct.tipc_link_config** %8, align 8
  %26 = getelementptr inbounds %struct.tipc_link_config, %struct.tipc_link_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @nla_put_string(%struct.sk_buff* %23, i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %22
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @TIPC_NLA_MEDIA_PROP, align 4
  %36 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %34, i32 %35)
  store %struct.nlattr* %36, %struct.nlattr** %6, align 8
  %37 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @EMSGSIZE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %53

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %45 = load %struct.tipc_link_config*, %struct.tipc_link_config** %8, align 8
  %46 = call i32 @__tipc_add_link_prop(%struct.sk_buff* %43, %struct.tipc_nl_compat_msg* %44, %struct.tipc_link_config* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %49 = call i32 @nla_nest_end(%struct.sk_buff* %47, %struct.nlattr* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %52 = call i32 @nla_nest_end(%struct.sk_buff* %50, %struct.nlattr* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %42, %39, %30, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @TLV_DATA(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @__tipc_add_link_prop(%struct.sk_buff*, %struct.tipc_nl_compat_msg*, %struct.tipc_link_config*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
