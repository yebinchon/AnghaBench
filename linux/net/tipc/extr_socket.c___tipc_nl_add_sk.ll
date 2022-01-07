; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c___tipc_nl_add_sk.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c___tipc_nl_add_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tipc_sock = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@tipc_genl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@TIPC_NL_SOCK_GET = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.tipc_sock*)* @__tipc_nl_add_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_sk(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.tipc_sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.tipc_sock*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %6, align 8
  store %struct.tipc_sock* %2, %struct.tipc_sock** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %13 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @NETLINK_CB(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %20 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NLM_F_MULTI, align 4
  %25 = load i32, i32* @TIPC_NL_SOCK_GET, align 4
  %26 = call i8* @genlmsg_put(%struct.sk_buff* %11, i32 %18, i32 %23, i32* @tipc_genl_family, i32 %24, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %58

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i32, i32* @TIPC_NLA_SOCK, align 4
  %33 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %31, i32 %32)
  store %struct.nlattr* %33, %struct.nlattr** %8, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %54

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load %struct.tipc_sock*, %struct.tipc_sock** %7, align 8
  %40 = call i64 @__tipc_nl_add_sk_info(%struct.sk_buff* %38, %struct.tipc_sock* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %46 = call i32 @nla_nest_end(%struct.sk_buff* %44, %struct.nlattr* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @genlmsg_end(%struct.sk_buff* %47, i8* %48)
  store i32 0, i32* %4, align 4
  br label %61

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %53 = call i32 @nla_nest_cancel(%struct.sk_buff* %51, %struct.nlattr* %52)
  br label %54

54:                                               ; preds = %50, %36
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @genlmsg_cancel(%struct.sk_buff* %55, i8* %56)
  br label %58

58:                                               ; preds = %54, %29
  %59 = load i32, i32* @EMSGSIZE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %43
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @__tipc_nl_add_sk_info(%struct.sk_buff*, %struct.tipc_sock*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
