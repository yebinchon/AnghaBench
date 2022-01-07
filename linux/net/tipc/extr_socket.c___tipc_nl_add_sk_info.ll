; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c___tipc_nl_add_sk_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c___tipc_nl_add_sk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_sock = type { i32, i32, %struct.sock }
%struct.sock = type { i32 }
%struct.net = type { i32 }

@TIPC_NLA_SOCK_REF = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK_ADDR = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_SOCK_HAS_PUBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tipc_sock*)* @__tipc_nl_add_sk_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_sk_info(%struct.sk_buff* %0, %struct.tipc_sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tipc_sock*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tipc_sock* %1, %struct.tipc_sock** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.net* @sock_net(i32 %10)
  store %struct.net* %11, %struct.net** %6, align 8
  %12 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %13 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %12, i32 0, i32 2
  store %struct.sock* %13, %struct.sock** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @TIPC_NLA_SOCK_REF, align 4
  %16 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %17 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @nla_put_u32(%struct.sk_buff* %14, i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @TIPC_NLA_SOCK_ADDR, align 4
  %24 = load %struct.net*, %struct.net** %6, align 8
  %25 = call i32 @tipc_own_addr(%struct.net* %24)
  %26 = call i64 @nla_put_u32(%struct.sk_buff* %22, i32 %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21, %2
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %60

31:                                               ; preds = %21
  %32 = load %struct.sock*, %struct.sock** %7, align 8
  %33 = call i64 @tipc_sk_connected(%struct.sock* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %38 = call i64 @__tipc_nl_add_sk_con(%struct.sk_buff* %36, %struct.tipc_sock* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %60

43:                                               ; preds = %35
  br label %59

44:                                               ; preds = %31
  %45 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %46 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %45, i32 0, i32 0
  %47 = call i32 @list_empty(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load i32, i32* @TIPC_NLA_SOCK_HAS_PUBL, align 4
  %52 = call i64 @nla_put_flag(%struct.sk_buff* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EMSGSIZE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %60

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %44
  br label %59

59:                                               ; preds = %58, %43
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %54, %40, %28
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local i64 @tipc_sk_connected(%struct.sock*) #1

declare dso_local i64 @__tipc_nl_add_sk_con(%struct.sk_buff*, %struct.tipc_sock*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
