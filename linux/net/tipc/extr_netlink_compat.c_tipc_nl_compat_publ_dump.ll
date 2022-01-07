; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_publ_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_publ_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_compat_msg = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_nl_compat_cmd_dump = type { i32, i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tipc_genl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@TIPC_NL_PUBL_GET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK_REF = common dso_local global i32 0, align 4
@tipc_nl_publ_dump = common dso_local global i32 0, align 4
@__tipc_nl_compat_publ_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_compat_msg*, i32)* @tipc_nl_compat_publ_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_nl_compat_publ_dump(%struct.tipc_nl_compat_msg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_nl_compat_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.tipc_nl_compat_cmd_dump, align 4
  store %struct.tipc_nl_compat_msg* %0, %struct.tipc_nl_compat_msg** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sk_buff* @nlmsg_new(i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = load i32, i32* @NLM_F_MULTI, align 4
  %22 = load i32, i32* @TIPC_NL_PUBL_GET, align 4
  %23 = call i8* @genlmsg_put(%struct.sk_buff* %20, i32 0, i32 0, i32* @tipc_genl_family, i32 %21, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = call i32 @kfree_skb(%struct.sk_buff* %27)
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %70

31:                                               ; preds = %19
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = load i32, i32* @TIPC_NLA_SOCK, align 4
  %34 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %32, i32 %33)
  store %struct.nlattr* %34, %struct.nlattr** %8, align 8
  %35 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  %40 = load i32, i32* @EMSGSIZE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %70

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load i32, i32* @TIPC_NLA_SOCK_REF, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @nla_put_u32(%struct.sk_buff* %43, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call i32 @kfree_skb(%struct.sk_buff* %49)
  %51 = load i32, i32* @EMSGSIZE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %70

53:                                               ; preds = %42
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %56 = call i32 @nla_nest_end(%struct.sk_buff* %54, %struct.nlattr* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @genlmsg_end(%struct.sk_buff* %57, i8* %58)
  %60 = load i32, i32* @tipc_nl_publ_dump, align 4
  %61 = getelementptr inbounds %struct.tipc_nl_compat_cmd_dump, %struct.tipc_nl_compat_cmd_dump* %10, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @__tipc_nl_compat_publ_dump, align 4
  %63 = getelementptr inbounds %struct.tipc_nl_compat_cmd_dump, %struct.tipc_nl_compat_cmd_dump* %10, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = call i32 @__tipc_nl_compat_dumpit(%struct.tipc_nl_compat_cmd_dump* %10, %struct.tipc_nl_compat_msg* %64, %struct.sk_buff* %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %53, %48, %37, %26, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @__tipc_nl_compat_dumpit(%struct.tipc_nl_compat_cmd_dump*, %struct.tipc_nl_compat_msg*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
