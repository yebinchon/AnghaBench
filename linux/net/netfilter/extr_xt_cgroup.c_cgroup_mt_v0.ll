; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_cgroup.c_cgroup_mt_v0.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_cgroup.c_cgroup_mt_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.xt_action_param = type { %struct.xt_cgroup_info_v0* }
%struct.xt_cgroup_info_v0 = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @cgroup_mt_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_mt_v0(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_cgroup_info_v0*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %8 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %9 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %8, i32 0, i32 0
  %10 = load %struct.xt_cgroup_info_v0*, %struct.xt_cgroup_info_v0** %9, align 8
  store %struct.xt_cgroup_info_v0* %10, %struct.xt_cgroup_info_v0** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = icmp ne %struct.sock* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = call i32 @sk_fullsock(%struct.sock* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %22 = call i32 @xt_net(%struct.xt_action_param* %21)
  %23 = load %struct.sock*, %struct.sock** %7, align 8
  %24 = call i32 @sock_net(%struct.sock* %23)
  %25 = call i32 @net_eq(i32 %22, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %16, %2
  store i32 0, i32* %3, align 4
  br label %43

28:                                               ; preds = %20
  %29 = load %struct.xt_cgroup_info_v0*, %struct.xt_cgroup_info_v0** %6, align 8
  %30 = getelementptr inbounds %struct.xt_cgroup_info_v0, %struct.xt_cgroup_info_v0* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load %struct.sock*, %struct.sock** %33, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = call i64 @sock_cgroup_classid(i32* %35)
  %37 = icmp eq i64 %31, %36
  %38 = zext i1 %37 to i32
  %39 = load %struct.xt_cgroup_info_v0*, %struct.xt_cgroup_info_v0** %6, align 8
  %40 = getelementptr inbounds %struct.xt_cgroup_info_v0, %struct.xt_cgroup_info_v0* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %38, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %28, %27
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @sk_fullsock(%struct.sock*) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @sock_cgroup_classid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
