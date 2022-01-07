; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_rtm_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_rtm_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.mr_table = type { i32 }
%struct.mfcctl = type { i32 }

@RTM_NEWROUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @ipmr_rtm_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_rtm_route(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mr_table*, align 8
  %13 = alloca %struct.mfcctl, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %8, align 8
  store i32 0, i32* %10, align 4
  store %struct.mr_table* null, %struct.mr_table** %12, align 8
  %18 = load %struct.net*, %struct.net** %8, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %21 = call i32 @rtm_to_ipmr_mfcc(%struct.net* %18, %struct.nlmsghdr* %19, %struct.mfcctl* %13, i32* %10, %struct.mr_table** %12, %struct.netlink_ext_ack* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %50

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.mfcctl, %struct.mfcctl* %13, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ -1, %32 ]
  store i32 %34, i32* %11, align 4
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %36 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RTM_NEWROUTE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.net*, %struct.net** %8, align 8
  %42 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @ipmr_mfc_add(%struct.net* %41, %struct.mr_table* %42, %struct.mfcctl* %13, i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %33
  %47 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @ipmr_mfc_delete(%struct.mr_table* %47, %struct.mfcctl* %13, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %40, %24
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @rtm_to_ipmr_mfcc(%struct.net*, %struct.nlmsghdr*, %struct.mfcctl*, i32*, %struct.mr_table**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @ipmr_mfc_add(%struct.net*, %struct.mr_table*, %struct.mfcctl*, i32, i32) #1

declare dso_local i32 @ipmr_mfc_delete(%struct.mr_table*, %struct.mfcctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
