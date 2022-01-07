; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c___inet_diag_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c___inet_diag_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.inet_diag_req_v2 = type { i32 }
%struct.nlattr = type { i32 }
%struct.inet_diag_handler = type { i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.inet_diag_req_v2*, %struct.nlattr*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.inet_diag_req_v2*, %struct.nlattr*)* @__inet_diag_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__inet_diag_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.inet_diag_req_v2* %2, %struct.nlattr* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.inet_diag_req_v2*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.inet_diag_handler*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %6, align 8
  store %struct.inet_diag_req_v2* %2, %struct.inet_diag_req_v2** %7, align 8
  store %struct.nlattr* %3, %struct.nlattr** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %7, align 8
  %12 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inet_diag_handler* @inet_diag_lock_handler(i32 %13)
  store %struct.inet_diag_handler* %14, %struct.inet_diag_handler** %9, align 8
  %15 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %9, align 8
  %16 = call i32 @IS_ERR(%struct.inet_diag_handler* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %4
  %19 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %9, align 8
  %20 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %19, i32 0, i32 0
  %21 = load i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.inet_diag_req_v2*, %struct.nlattr*)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.inet_diag_req_v2*, %struct.nlattr*)** %20, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %24 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %7, align 8
  %25 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %26 = call i32 %21(%struct.sk_buff* %22, %struct.netlink_callback* %23, %struct.inet_diag_req_v2* %24, %struct.nlattr* %25)
  br label %30

27:                                               ; preds = %4
  %28 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %9, align 8
  %29 = call i32 @PTR_ERR(%struct.inet_diag_handler* %28)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %27, %18
  %31 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %9, align 8
  %32 = call i32 @inet_diag_unlock_handler(%struct.inet_diag_handler* %31)
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %40

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %36, %35
  %41 = phi i32 [ %33, %35 ], [ %39, %36 ]
  ret i32 %41
}

declare dso_local %struct.inet_diag_handler* @inet_diag_lock_handler(i32) #1

declare dso_local i32 @IS_ERR(%struct.inet_diag_handler*) #1

declare dso_local i32 @PTR_ERR(%struct.inet_diag_handler*) #1

declare dso_local i32 @inet_diag_unlock_handler(%struct.inet_diag_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
