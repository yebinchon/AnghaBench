; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c___tipc_nl_add_sk_con.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c___tipc_nl_add_sk_con.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_sock = type { i64, i64 }
%struct.nlattr = type { i32 }

@TIPC_NLA_SOCK_CON = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_CON_NODE = common dso_local global i32 0, align 4
@TIPC_NLA_CON_SOCK = common dso_local global i32 0, align 4
@TIPC_NLA_CON_FLAG = common dso_local global i32 0, align 4
@TIPC_NLA_CON_TYPE = common dso_local global i32 0, align 4
@TIPC_NLA_CON_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tipc_sock*)* @__tipc_nl_add_sk_con to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_sk_con(%struct.sk_buff* %0, %struct.tipc_sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tipc_sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tipc_sock* %1, %struct.tipc_sock** %5, align 8
  %9 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %10 = call i64 @tsk_peer_node(%struct.tipc_sock* %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %12 = call i64 @tsk_peer_port(%struct.tipc_sock* %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* @TIPC_NLA_SOCK_CON, align 4
  %15 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %13, i32 %14)
  store %struct.nlattr* %15, %struct.nlattr** %8, align 8
  %16 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EMSGSIZE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %75

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @TIPC_NLA_CON_NODE, align 4
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @nla_put_u32(%struct.sk_buff* %22, i32 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %69

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* @TIPC_NLA_CON_SOCK, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @nla_put_u32(%struct.sk_buff* %29, i32 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %69

35:                                               ; preds = %28
  %36 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %37 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load i32, i32* @TIPC_NLA_CON_FLAG, align 4
  %43 = call i64 @nla_put_flag(%struct.sk_buff* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %69

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32, i32* @TIPC_NLA_CON_TYPE, align 4
  %49 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %50 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %69

55:                                               ; preds = %46
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load i32, i32* @TIPC_NLA_CON_INST, align 4
  %58 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %59 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @nla_put_u32(%struct.sk_buff* %56, i32 %57, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %69

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %35
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %68 = call i32 @nla_nest_end(%struct.sk_buff* %66, %struct.nlattr* %67)
  store i32 0, i32* %3, align 4
  br label %75

69:                                               ; preds = %63, %54, %45, %34, %27
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %72 = call i32 @nla_nest_cancel(%struct.sk_buff* %70, %struct.nlattr* %71)
  %73 = load i32, i32* @EMSGSIZE, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %69, %65, %18
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @tsk_peer_node(%struct.tipc_sock*) #1

declare dso_local i64 @tsk_peer_port(%struct.tipc_sock*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
