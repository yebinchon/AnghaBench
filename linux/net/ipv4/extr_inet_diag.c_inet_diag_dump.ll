; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.nlattr = type { i32 }

@INET_DIAG_REQ_BYTECODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @inet_diag_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  store i32 4, i32* %5, align 4
  store %struct.nlattr* null, %struct.nlattr** %6, align 8
  %7 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %8 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @nlmsg_attrlen(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %15 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @INET_DIAG_REQ_BYTECODE, align 4
  %19 = call %struct.nlattr* @nlmsg_find_attr(i32 %16, i32 %17, i32 %18)
  store %struct.nlattr* %19, %struct.nlattr** %6, align 8
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %24 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nlmsg_data(i32 %25)
  %27 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %28 = call i32 @__inet_diag_dump(%struct.sk_buff* %21, %struct.netlink_callback* %22, i32 %26, %struct.nlattr* %27)
  ret i32 %28
}

declare dso_local i64 @nlmsg_attrlen(i32, i32) #1

declare dso_local %struct.nlattr* @nlmsg_find_attr(i32, i32, i32) #1

declare dso_local i32 @__inet_diag_dump(%struct.sk_buff*, %struct.netlink_callback*, i32, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
