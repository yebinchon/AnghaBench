; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_genl_rcv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_genl_rcv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.genl_family = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @genl_rcv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genl_rcv_msg(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.genl_family*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %11 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.genl_family* @genl_family_find_byid(i32 %12)
  store %struct.genl_family* %13, %struct.genl_family** %8, align 8
  %14 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %15 = icmp eq %struct.genl_family* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %40

19:                                               ; preds = %3
  %20 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %21 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 (...) @genl_lock()
  br label %26

26:                                               ; preds = %24, %19
  %27 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %31 = call i32 @genl_family_rcv_msg(%struct.genl_family* %27, %struct.sk_buff* %28, %struct.nlmsghdr* %29, %struct.netlink_ext_ack* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %33 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = call i32 (...) @genl_unlock()
  br label %38

38:                                               ; preds = %36, %26
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.genl_family* @genl_family_find_byid(i32) #1

declare dso_local i32 @genl_lock(...) #1

declare dso_local i32 @genl_family_rcv_msg(%struct.genl_family*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @genl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
