; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_rawsock.c_rawsock_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_rawsock.c_rawsock_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.msghdr = type { i32, i64 }
%struct.nfc_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.nfc_dev* }

@.str = private unnamed_addr constant [23 x i8] c"sock=%p sk=%p len=%zu\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64)* @rawsock_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawsock_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.nfc_dev*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 1
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %8, align 8
  %15 = load %struct.sock*, %struct.sock** %8, align 8
  %16 = call %struct.TYPE_3__* @nfc_rawsock(%struct.sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load %struct.nfc_dev*, %struct.nfc_dev** %17, align 8
  store %struct.nfc_dev* %18, %struct.nfc_dev** %9, align 8
  %19 = load %struct.socket*, %struct.socket** %5, align 8
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.socket* %19, %struct.sock* %20, i64 %21)
  %23 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %93

30:                                               ; preds = %3
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SS_CONNECTED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOTCONN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %93

39:                                               ; preds = %30
  %40 = load %struct.nfc_dev*, %struct.nfc_dev** %9, align 8
  %41 = load %struct.sock*, %struct.sock** %8, align 8
  %42 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %43 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call %struct.sk_buff* @nfc_alloc_send_skb(%struct.nfc_dev* %40, %struct.sock* %41, i32 %44, i64 %45, i32* %11)
  store %struct.sk_buff* %46, %struct.sk_buff** %10, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %48 = icmp eq %struct.sk_buff* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %93

51:                                               ; preds = %39
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @skb_put(%struct.sk_buff* %52, i64 %53)
  %55 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @memcpy_from_msg(i32 %54, %struct.msghdr* %55, i64 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %93

64:                                               ; preds = %51
  %65 = load %struct.sock*, %struct.sock** %8, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.sock*, %struct.sock** %8, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = call i32 @__skb_queue_tail(%struct.TYPE_4__* %70, %struct.sk_buff* %71)
  %73 = load %struct.sock*, %struct.sock** %8, align 8
  %74 = call %struct.TYPE_3__* @nfc_rawsock(%struct.sock* %73)
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %64
  %79 = load %struct.sock*, %struct.sock** %8, align 8
  %80 = call %struct.TYPE_3__* @nfc_rawsock(%struct.sock* %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = call i32 @schedule_work(i32* %81)
  %83 = load %struct.sock*, %struct.sock** %8, align 8
  %84 = call %struct.TYPE_3__* @nfc_rawsock(%struct.sock* %83)
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %78, %64
  %87 = load %struct.sock*, %struct.sock** %8, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock_bh(i32* %89)
  %91 = load i64, i64* %7, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %86, %60, %49, %36, %27
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_3__* @nfc_rawsock(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, %struct.socket*, %struct.sock*, i64) #1

declare dso_local %struct.sk_buff* @nfc_alloc_send_skb(%struct.nfc_dev*, %struct.sock*, i32, i64, i32*) #1

declare dso_local i32 @memcpy_from_msg(i32, %struct.msghdr*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
