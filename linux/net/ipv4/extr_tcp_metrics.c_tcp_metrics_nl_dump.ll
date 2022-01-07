; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_metrics_nl_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_metrics_nl_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_hash_bucket = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32* }
%struct.net = type { i32 }
%struct.tcp_metrics_block = type { i32 }

@tcp_metrics_hash_log = common dso_local global i32 0, align 4
@tcp_metrics_hash = common dso_local global %struct.tcpm_hash_bucket* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @tcp_metrics_nl_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_metrics_nl_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tcp_metrics_block*, align 8
  %12 = alloca %struct.tcpm_hash_bucket*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net* @sock_net(i32 %15)
  store %struct.net* %16, %struct.net** %5, align 8
  %17 = load i32, i32* @tcp_metrics_hash_log, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %20 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %25 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %78, %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %31
  %36 = load %struct.tcpm_hash_bucket*, %struct.tcpm_hash_bucket** @tcp_metrics_hash, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.tcpm_hash_bucket, %struct.tcpm_hash_bucket* %36, i64 %38
  store %struct.tcpm_hash_bucket* %39, %struct.tcpm_hash_bucket** %12, align 8
  %40 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %10, align 4
  %41 = load %struct.tcpm_hash_bucket*, %struct.tcpm_hash_bucket** %12, align 8
  %42 = getelementptr inbounds %struct.tcpm_hash_bucket, %struct.tcpm_hash_bucket* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.tcp_metrics_block* @rcu_dereference(i32 %43)
  store %struct.tcp_metrics_block* %44, %struct.tcp_metrics_block** %11, align 8
  br label %45

45:                                               ; preds = %69, %35
  %46 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %11, align 8
  %47 = icmp ne %struct.tcp_metrics_block* %46, null
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  %49 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %11, align 8
  %50 = call i32 @tm_net(%struct.tcp_metrics_block* %49)
  %51 = load %struct.net*, %struct.net** %5, align 8
  %52 = call i32 @net_eq(i32 %50, %struct.net* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %69

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %69

60:                                               ; preds = %55
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %63 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %11, align 8
  %64 = call i64 @tcp_metrics_dump_info(%struct.sk_buff* %61, %struct.netlink_callback* %62, %struct.tcp_metrics_block* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 (...) @rcu_read_unlock()
  br label %82

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %59, %54
  %70 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %11, align 8
  %71 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.tcp_metrics_block* @rcu_dereference(i32 %72)
  store %struct.tcp_metrics_block* %73, %struct.tcp_metrics_block** %11, align 8
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %45

76:                                               ; preds = %45
  %77 = call i32 (...) @rcu_read_unlock()
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %31

81:                                               ; preds = %31
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %85 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %90 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %88, i32* %92, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  ret i32 %95
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_metrics_block* @rcu_dereference(i32) #1

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @tm_net(%struct.tcp_metrics_block*) #1

declare dso_local i64 @tcp_metrics_dump_info(%struct.sk_buff*, %struct.netlink_callback*, %struct.tcp_metrics_block*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
