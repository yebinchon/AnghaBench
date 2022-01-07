; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_datagram.c_pn_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_datagram.c_pn_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32* }
%struct.sk_buff = type { i32 }
%struct.sockaddr_pn = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@MSG_CMSG_COMPAT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)* @pn_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_recvmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.sockaddr_pn, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.msghdr* %1, %struct.msghdr** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @MSG_PEEK, align 4
  %21 = load i32, i32* @MSG_TRUNC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MSG_DONTWAIT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MSG_NOSIGNAL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MSG_CMSG_COMPAT, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %19, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  br label %98

33:                                               ; preds = %6
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %34, i32 %35, i32 %36, i32* %15)
  store %struct.sk_buff* %37, %struct.sk_buff** %13, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %39 = icmp eq %struct.sk_buff* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %98

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %43 = call i32 @pn_skb_get_src_sockaddr(%struct.sk_buff* %42, %struct.sockaddr_pn* %14)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load i32, i32* @MSG_TRUNC, align 4
  %53 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %54 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %51, %41
  %60 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %61 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %60, i32 0, %struct.msghdr* %61, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @EFAULT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %15, align 4
  br label %94

69:                                               ; preds = %59
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @MSG_TRUNC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  br label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %16, align 4
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i32 [ %77, %74 ], [ %79, %78 ]
  store i32 %81, i32* %15, align 4
  %82 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %83 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = call i32 @__sockaddr_check_size(i32 4)
  %88 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %89 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @memcpy(i32* %90, %struct.sockaddr_pn* %14, i32 4)
  %92 = load i32*, i32** %12, align 8
  store i32 4, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %80
  br label %94

94:                                               ; preds = %93, %66
  %95 = load %struct.sock*, %struct.sock** %7, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %97 = call i32 @skb_free_datagram(%struct.sock* %95, %struct.sk_buff* %96)
  br label %98

98:                                               ; preds = %94, %40, %32
  %99 = load i32, i32* %15, align 4
  ret i32 %99
}

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @pn_skb_get_src_sockaddr(%struct.sk_buff*, %struct.sockaddr_pn*) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i32) #1

declare dso_local i32 @__sockaddr_check_size(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_pn*, i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
