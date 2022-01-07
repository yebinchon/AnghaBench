; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @icmp_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmp_redirect(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 4
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_net(i32 %12)
  %14 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %15 = call i32 @__ICMP_INC_STATS(i32 %13, i32 %14)
  store i32 0, i32* %2, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i32 @pskb_may_pull(%struct.sk_buff* %17, i32 4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %30

21:                                               ; preds = %16
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohl(i32 %27)
  %29 = call i32 @icmp_socket_deliver(%struct.sk_buff* %22, i32 %28)
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %20, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @__ICMP_INC_STATS(i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @icmp_socket_deliver(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
