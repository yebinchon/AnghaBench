; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_rt_fib_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_rt_fib_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rtable = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.flowi4 = type { i32, i32, i32, i32, i32, i32 }

@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mr_table* (%struct.net*, %struct.sk_buff*)* @ipmr_rt_fib_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mr_table* @ipmr_rt_fib_lookup(%struct.net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mr_table*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rtable*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.flowi4, align 4
  %9 = alloca %struct.mr_table*, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %11)
  store %struct.rtable* %12, %struct.rtable** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %13)
  store %struct.iphdr* %14, %struct.iphdr** %7, align 8
  %15 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 0
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 1
  %20 = load %struct.rtable*, %struct.rtable** %6, align 8
  %21 = call i32 @rt_is_output_route(%struct.rtable* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %25, %23
  %32 = phi i32 [ %24, %23 ], [ %30, %25 ]
  store i32 %32, i32* %19, align 4
  %33 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 2
  %34 = load %struct.rtable*, %struct.rtable** %6, align 8
  %35 = call i32 @rt_is_output_route(%struct.rtable* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %44

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i32 [ %42, %37 ], [ 0, %43 ]
  store i32 %45, i32* %33, align 4
  %46 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 3
  %47 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @RT_TOS(i32 %49)
  store i32 %50, i32* %46, align 4
  %51 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 4
  %52 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %53 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %51, align 4
  %55 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 5
  %56 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %57 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %55, align 4
  %59 = load %struct.net*, %struct.net** %4, align 8
  %60 = call i32 @ipmr_fib_lookup(%struct.net* %59, %struct.flowi4* %8, %struct.mr_table** %9)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %44
  %64 = load i32, i32* %10, align 4
  %65 = call %struct.mr_table* @ERR_PTR(i32 %64)
  store %struct.mr_table* %65, %struct.mr_table** %3, align 8
  br label %68

66:                                               ; preds = %44
  %67 = load %struct.mr_table*, %struct.mr_table** %9, align 8
  store %struct.mr_table* %67, %struct.mr_table** %3, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = load %struct.mr_table*, %struct.mr_table** %3, align 8
  ret %struct.mr_table* %69
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @rt_is_output_route(%struct.rtable*) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @ipmr_fib_lookup(%struct.net*, %struct.flowi4*, %struct.mr_table**) #1

declare dso_local %struct.mr_table* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
