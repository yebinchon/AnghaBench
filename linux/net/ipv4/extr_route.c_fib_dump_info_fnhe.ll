; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_fib_dump_info_fnhe.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_fib_dump_info_fnhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fib_info = type { i32 }
%struct.net = type { i32 }
%struct.fib_nh_common = type { i32, i32 }
%struct.fnhe_hash_bucket = type { i32 }

@RTNH_F_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_dump_info_fnhe(%struct.sk_buff* %0, %struct.netlink_callback* %1, i32 %2, %struct.fib_info* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.netlink_callback*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fib_info*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.net*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.fib_nh_common*, align 8
  %20 = alloca %struct.fnhe_hash_bucket*, align 8
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.fib_info* %3, %struct.fib_info** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %23 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.net* @sock_net(i32 %26)
  store %struct.net* %27, %struct.net** %16, align 8
  %28 = load %struct.net*, %struct.net** %16, align 8
  %29 = call i32 @fnhe_genid(%struct.net* %28)
  store i32 %29, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %72, %7
  %31 = load i32, i32* %17, align 4
  %32 = load %struct.fib_info*, %struct.fib_info** %12, align 8
  %33 = call i32 @fib_info_num_path(%struct.fib_info* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %30
  %36 = load %struct.fib_info*, %struct.fib_info** %12, align 8
  %37 = load i32, i32* %17, align 4
  %38 = call %struct.fib_nh_common* @fib_info_nhc(%struct.fib_info* %36, i32 %37)
  store %struct.fib_nh_common* %38, %struct.fib_nh_common** %19, align 8
  %39 = load %struct.fib_nh_common*, %struct.fib_nh_common** %19, align 8
  %40 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RTNH_F_DEAD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %72

46:                                               ; preds = %35
  %47 = call i32 (...) @rcu_read_lock()
  %48 = load %struct.fib_nh_common*, %struct.fib_nh_common** %19, align 8
  %49 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.fnhe_hash_bucket* @rcu_dereference(i32 %50)
  store %struct.fnhe_hash_bucket* %51, %struct.fnhe_hash_bucket** %20, align 8
  store i32 0, i32* %21, align 4
  %52 = load %struct.fnhe_hash_bucket*, %struct.fnhe_hash_bucket** %20, align 8
  %53 = icmp ne %struct.fnhe_hash_bucket* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = load %struct.net*, %struct.net** %16, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.fnhe_hash_bucket*, %struct.fnhe_hash_bucket** %20, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @fnhe_dump_bucket(%struct.net* %55, %struct.sk_buff* %56, %struct.netlink_callback* %57, i32 %58, %struct.fnhe_hash_bucket* %59, i32 %60, i32* %61, i32 %62, i32 %63)
  store i32 %64, i32* %21, align 4
  br label %65

65:                                               ; preds = %54, %46
  %66 = call i32 (...) @rcu_read_unlock()
  %67 = load i32, i32* %21, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %21, align 4
  store i32 %70, i32* %8, align 4
  br label %76

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %45
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %17, align 4
  br label %30

75:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %69
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @fnhe_genid(%struct.net*) #1

declare dso_local i32 @fib_info_num_path(%struct.fib_info*) #1

declare dso_local %struct.fib_nh_common* @fib_info_nhc(%struct.fib_info*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fnhe_hash_bucket* @rcu_dereference(i32) #1

declare dso_local i32 @fnhe_dump_bucket(%struct.net*, %struct.sk_buff*, %struct.netlink_callback*, i32, %struct.fnhe_hash_bucket*, i32, i32*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
