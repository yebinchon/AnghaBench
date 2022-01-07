; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_send_dest_unreach.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_send_dest_unreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_options = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_HOST_UNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @ipv4_send_dest_unreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv4_send_dest_unreach(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ip_options, align 4
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call i32 @pskb_network_may_pull(%struct.sk_buff* %5, i32 4)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %10 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 4
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %16 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 5
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %8, %1
  br label %65

21:                                               ; preds = %14
  %22 = call i32 @memset(%struct.ip_options* %3, i32 0, i32 4)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 5
  br i1 %27, label %28, label %60

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %31 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 4
  %35 = call i32 @pskb_network_may_pull(%struct.sk_buff* %29, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %65

38:                                               ; preds = %28
  %39 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %40 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %3, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = call i32 (...) @rcu_read_lock()
  %49 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_net(i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %54 = call i32 @__ip_options_compile(i32 %52, %struct.ip_options* %3, %struct.sk_buff* %53, i32* null)
  store i32 %54, i32* %4, align 4
  %55 = call i32 (...) @rcu_read_unlock()
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  br label %65

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59, %21
  %61 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %62 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %63 = load i32, i32* @ICMP_HOST_UNREACH, align 4
  %64 = call i32 @__icmp_send(%struct.sk_buff* %61, i32 %62, i32 %63, i32 0, %struct.ip_options* %3)
  br label %65

65:                                               ; preds = %60, %58, %37, %20
  ret void
}

declare dso_local i32 @pskb_network_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.ip_options*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @__ip_options_compile(i32, %struct.ip_options*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @__icmp_send(%struct.sk_buff*, i32, i32, i32, %struct.ip_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
