; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_compare.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_compare_arg = type { %struct.netlink_compare_arg* }
%struct.netlink_compare_arg = type { i64, i32 }
%struct.netlink_sock = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable_compare_arg*, i8*)* @netlink_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_compare(%struct.rhashtable_compare_arg* %0, i8* %1) #0 {
  %3 = alloca %struct.rhashtable_compare_arg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netlink_compare_arg*, align 8
  %6 = alloca %struct.netlink_sock*, align 8
  store %struct.rhashtable_compare_arg* %0, %struct.rhashtable_compare_arg** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.rhashtable_compare_arg*, %struct.rhashtable_compare_arg** %3, align 8
  %8 = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %7, i32 0, i32 0
  %9 = load %struct.netlink_compare_arg*, %struct.netlink_compare_arg** %8, align 8
  store %struct.netlink_compare_arg* %9, %struct.netlink_compare_arg** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.netlink_sock*
  store %struct.netlink_sock* %11, %struct.netlink_sock** %6, align 8
  %12 = load %struct.netlink_sock*, %struct.netlink_sock** %6, align 8
  %13 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.netlink_compare_arg*, %struct.netlink_compare_arg** %5, align 8
  %16 = getelementptr inbounds %struct.netlink_compare_arg, %struct.netlink_compare_arg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load %struct.netlink_sock*, %struct.netlink_sock** %6, align 8
  %21 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %20, i32 0, i32 1
  %22 = call i32 @sock_net(i32* %21)
  %23 = load %struct.netlink_compare_arg*, %struct.netlink_compare_arg** %5, align 8
  %24 = getelementptr inbounds %struct.netlink_compare_arg, %struct.netlink_compare_arg* %23, i32 0, i32 1
  %25 = call i32 @read_pnet(i32* %24)
  %26 = call i32 @net_eq(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %19, %2
  %30 = phi i1 [ true, %2 ], [ %28, %19 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @sock_net(i32*) #1

declare dso_local i32 @read_pnet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
