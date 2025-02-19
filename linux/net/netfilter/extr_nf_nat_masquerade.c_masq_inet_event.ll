; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_masquerade.c_masq_inet_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_masquerade.c_masq_inet_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.in_device = type { i64, i32 }
%struct.net = type { i32 }
%struct.in_ifaddr = type { %struct.in_device* }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@NETDEV_DOWN = common dso_local global i64 0, align 8
@inet_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @masq_inet_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @masq_inet_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in_device*, align 8
  %9 = alloca %struct.net*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.in_ifaddr*
  %12 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %11, i32 0, i32 0
  %13 = load %struct.in_device*, %struct.in_device** %12, align 8
  store %struct.in_device* %13, %struct.in_device** %8, align 8
  %14 = load %struct.in_device*, %struct.in_device** %8, align 8
  %15 = getelementptr inbounds %struct.in_device, %struct.in_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.net* @dev_net(i32 %16)
  store %struct.net* %17, %struct.net** %9, align 8
  %18 = load %struct.in_device*, %struct.in_device** %8, align 8
  %19 = getelementptr inbounds %struct.in_device, %struct.in_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @NETDEV_DOWN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.net*, %struct.net** %9, align 8
  %30 = load i32, i32* @inet_cmp, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @nf_ct_iterate_cleanup_net(%struct.net* %29, i32 %30, i8* %31, i32 0, i32 0)
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %22
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @nf_ct_iterate_cleanup_net(%struct.net*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
