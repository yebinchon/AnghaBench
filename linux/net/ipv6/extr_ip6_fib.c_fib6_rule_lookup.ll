; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_rule_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_rule_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rt6_info*, i32 }
%struct.rt6_info = type { %struct.dst_entry }
%struct.flowi6 = type { i32 }
%struct.sk_buff = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_DST_NOREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @fib6_rule_lookup(%struct.net* %0, %struct.flowi6* %1, %struct.sk_buff* %2, i32 %3, %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.flowi6*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)*, align 8
  %11 = alloca %struct.rt6_info*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.flowi6* %1, %struct.flowi6** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)* %4, %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)** %10, align 8
  %12 = load %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)*, %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)** %10, align 8
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = load %struct.net*, %struct.net** %6, align 8
  %15 = getelementptr inbounds %struct.net, %struct.net* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.rt6_info* %12(%struct.net* %13, i32 %17, %struct.flowi6* %18, %struct.sk_buff* %19, i32 %20)
  store %struct.rt6_info* %21, %struct.rt6_info** %11, align 8
  %22 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %23 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %5
  %30 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ip6_rt_put_flags(%struct.rt6_info* %30, i32 %31)
  %33 = load %struct.net*, %struct.net** %6, align 8
  %34 = getelementptr inbounds %struct.net, %struct.net* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.rt6_info*, %struct.rt6_info** %35, align 8
  store %struct.rt6_info* %36, %struct.rt6_info** %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @RT6_LOOKUP_F_DST_NOREF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %29
  %42 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %43 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %42, i32 0, i32 0
  %44 = call i32 @dst_hold(%struct.dst_entry* %43)
  br label %45

45:                                               ; preds = %41, %29
  br label %46

46:                                               ; preds = %45, %5
  %47 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %48 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %47, i32 0, i32 0
  ret %struct.dst_entry* %48
}

declare dso_local i32 @ip6_rt_put_flags(%struct.rt6_info*, i32) #1

declare dso_local i32 @dst_hold(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
