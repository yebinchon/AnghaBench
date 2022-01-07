; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c_sock_diag_rcv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c_sock_diag_rcv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@sock_diag_table_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @sock_diag_rcv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_diag_rcv_msg(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %9 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %10 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %23 [
    i32 128, label %12
    i32 131, label %12
    i32 129, label %19
    i32 130, label %19
  ]

12:                                               ; preds = %3, %3
  %13 = call i32 @mutex_lock(i32* @sock_diag_table_mutex)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %16 = call i32 @inet_rcv_compat(%struct.sk_buff* %14, %struct.nlmsghdr* %15)
  store i32 %16, i32* %8, align 4
  %17 = call i32 @mutex_unlock(i32* @sock_diag_table_mutex)
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %26

19:                                               ; preds = %3, %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %22 = call i32 @__sock_diag_cmd(%struct.sk_buff* %20, %struct.nlmsghdr* %21)
  store i32 %22, i32* %4, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %19, %12
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @inet_rcv_compat(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__sock_diag_cmd(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
