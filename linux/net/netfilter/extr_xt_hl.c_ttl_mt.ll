; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hl.c_ttl_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hl.c_ttl_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ipt_ttl_info* }
%struct.ipt_ttl_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ttl_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttl_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ipt_ttl_info*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %8 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %9 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %8, i32 0, i32 0
  %10 = load %struct.ipt_ttl_info*, %struct.ipt_ttl_info** %9, align 8
  store %struct.ipt_ttl_info* %10, %struct.ipt_ttl_info** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ipt_ttl_info*, %struct.ipt_ttl_info** %6, align 8
  %16 = getelementptr inbounds %struct.ipt_ttl_info, %struct.ipt_ttl_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %46 [
    i32 131, label %18
    i32 128, label %25
    i32 129, label %32
    i32 130, label %39
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ipt_ttl_info*, %struct.ipt_ttl_info** %6, align 8
  %21 = getelementptr inbounds %struct.ipt_ttl_info, %struct.ipt_ttl_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %47

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ipt_ttl_info*, %struct.ipt_ttl_info** %6, align 8
  %28 = getelementptr inbounds %struct.ipt_ttl_info, %struct.ipt_ttl_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %26, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.ipt_ttl_info*, %struct.ipt_ttl_info** %6, align 8
  %35 = getelementptr inbounds %struct.ipt_ttl_info, %struct.ipt_ttl_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %47

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ipt_ttl_info*, %struct.ipt_ttl_info** %6, align 8
  %42 = getelementptr inbounds %struct.ipt_ttl_info, %struct.ipt_ttl_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %40, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %39, %32, %25, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
