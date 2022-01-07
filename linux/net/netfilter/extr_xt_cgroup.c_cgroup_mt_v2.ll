; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_cgroup.c_cgroup_mt_v2.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_cgroup.c_cgroup_mt_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { %struct.sock_cgroup_data }
%struct.sock_cgroup_data = type { i32 }
%struct.xt_action_param = type { %struct.xt_cgroup_info_v2* }
%struct.xt_cgroup_info_v2 = type { i32, i64, i32, %struct.cgroup* }
%struct.cgroup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @cgroup_mt_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_mt_v2(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_cgroup_info_v2*, align 8
  %7 = alloca %struct.sock_cgroup_data*, align 8
  %8 = alloca %struct.cgroup*, align 8
  %9 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %10 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %11 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %10, i32 0, i32 0
  %12 = load %struct.xt_cgroup_info_v2*, %struct.xt_cgroup_info_v2** %11, align 8
  store %struct.xt_cgroup_info_v2* %12, %struct.xt_cgroup_info_v2** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  store %struct.sock_cgroup_data* %16, %struct.sock_cgroup_data** %7, align 8
  %17 = load %struct.xt_cgroup_info_v2*, %struct.xt_cgroup_info_v2** %6, align 8
  %18 = getelementptr inbounds %struct.xt_cgroup_info_v2, %struct.xt_cgroup_info_v2* %17, i32 0, i32 3
  %19 = load %struct.cgroup*, %struct.cgroup** %18, align 8
  store %struct.cgroup* %19, %struct.cgroup** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  store %struct.sock* %22, %struct.sock** %9, align 8
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = icmp ne %struct.sock* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.sock*, %struct.sock** %9, align 8
  %27 = call i32 @sk_fullsock(%struct.sock* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %31 = call i32 @xt_net(%struct.xt_action_param* %30)
  %32 = load %struct.sock*, %struct.sock** %9, align 8
  %33 = call i32 @sock_net(%struct.sock* %32)
  %34 = call i32 @net_eq(i32 %31, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29, %25, %2
  store i32 0, i32* %3, align 4
  br label %61

37:                                               ; preds = %29
  %38 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %39 = icmp ne %struct.cgroup* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.sock_cgroup_data*, %struct.sock_cgroup_data** %7, align 8
  %42 = call i32 @sock_cgroup_ptr(%struct.sock_cgroup_data* %41)
  %43 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %44 = call i32 @cgroup_is_descendant(i32 %42, %struct.cgroup* %43)
  %45 = load %struct.xt_cgroup_info_v2*, %struct.xt_cgroup_info_v2** %6, align 8
  %46 = getelementptr inbounds %struct.xt_cgroup_info_v2, %struct.xt_cgroup_info_v2* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = xor i32 %44, %47
  store i32 %48, i32* %3, align 4
  br label %61

49:                                               ; preds = %37
  %50 = load %struct.xt_cgroup_info_v2*, %struct.xt_cgroup_info_v2** %6, align 8
  %51 = getelementptr inbounds %struct.xt_cgroup_info_v2, %struct.xt_cgroup_info_v2* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sock_cgroup_data*, %struct.sock_cgroup_data** %7, align 8
  %54 = call i64 @sock_cgroup_classid(%struct.sock_cgroup_data* %53)
  %55 = icmp eq i64 %52, %54
  %56 = zext i1 %55 to i32
  %57 = load %struct.xt_cgroup_info_v2*, %struct.xt_cgroup_info_v2** %6, align 8
  %58 = getelementptr inbounds %struct.xt_cgroup_info_v2, %struct.xt_cgroup_info_v2* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = xor i32 %56, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %49, %40, %36
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @sk_fullsock(%struct.sock*) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @cgroup_is_descendant(i32, %struct.cgroup*) #1

declare dso_local i32 @sock_cgroup_ptr(%struct.sock_cgroup_data*) #1

declare dso_local i64 @sock_cgroup_classid(%struct.sock_cgroup_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
