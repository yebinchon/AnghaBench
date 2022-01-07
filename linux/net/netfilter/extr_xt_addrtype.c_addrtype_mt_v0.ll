; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_addrtype.c_addrtype_mt_v0.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_addrtype.c_addrtype_mt_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_addrtype_info* }
%struct.xt_addrtype_info = type { i32, i32, i64, i64 }
%struct.net = type { i32 }
%struct.iphdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @addrtype_mt_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrtype_mt_v0(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.xt_addrtype_info*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %10 = call %struct.net* @xt_net(%struct.xt_action_param* %9)
  store %struct.net* %10, %struct.net** %5, align 8
  %11 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %12 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %11, i32 0, i32 0
  %13 = load %struct.xt_addrtype_info*, %struct.xt_addrtype_info** %12, align 8
  store %struct.xt_addrtype_info* %13, %struct.xt_addrtype_info** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %14)
  store %struct.iphdr* %15, %struct.iphdr** %7, align 8
  store i32 1, i32* %8, align 4
  %16 = load %struct.xt_addrtype_info*, %struct.xt_addrtype_info** %6, align 8
  %17 = getelementptr inbounds %struct.xt_addrtype_info, %struct.xt_addrtype_info* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load %struct.net*, %struct.net** %5, align 8
  %22 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xt_addrtype_info*, %struct.xt_addrtype_info** %6, align 8
  %26 = getelementptr inbounds %struct.xt_addrtype_info, %struct.xt_addrtype_info* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @match_type(%struct.net* %21, i32* null, i32 %24, i64 %27)
  %29 = load %struct.xt_addrtype_info*, %struct.xt_addrtype_info** %6, align 8
  %30 = getelementptr inbounds %struct.xt_addrtype_info, %struct.xt_addrtype_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %28, %31
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %20, %2
  %36 = load %struct.xt_addrtype_info*, %struct.xt_addrtype_info** %6, align 8
  %37 = getelementptr inbounds %struct.xt_addrtype_info, %struct.xt_addrtype_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.net*, %struct.net** %5, align 8
  %42 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xt_addrtype_info*, %struct.xt_addrtype_info** %6, align 8
  %46 = getelementptr inbounds %struct.xt_addrtype_info, %struct.xt_addrtype_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @match_type(%struct.net* %41, i32* null, i32 %44, i64 %47)
  %49 = load %struct.xt_addrtype_info*, %struct.xt_addrtype_info** %6, align 8
  %50 = getelementptr inbounds %struct.xt_addrtype_info, %struct.xt_addrtype_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %48, %51
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %40, %35
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.net* @xt_net(%struct.xt_action_param*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @match_type(%struct.net*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
