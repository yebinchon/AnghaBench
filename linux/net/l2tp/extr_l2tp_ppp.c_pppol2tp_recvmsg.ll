; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i64 }

@EIO = common dso_local global i32 0, align 4
@PPPOX_BOUND = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @pppol2tp_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %11, align 8
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sock*, %struct.sock** %11, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PPPOX_BOUND, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %76

24:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %25 = load %struct.sock*, %struct.sock** %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MSG_DONTWAIT, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MSG_DONTWAIT, align 4
  %32 = and i32 %30, %31
  %33 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %25, i32 %29, i32 %32, i32* %9)
  store %struct.sk_buff* %33, %struct.sk_buff** %10, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %76

37:                                               ; preds = %24
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  br label %60

47:                                               ; preds = %37
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* @MSG_TRUNC, align 4
  %55 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %47
  br label %60

60:                                               ; preds = %59, %43
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %61, i32 0, %struct.msghdr* %62, i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @likely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i64, i64* %7, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %60
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %73, %36, %23
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
