; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_mc_drop_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_mc_drop_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_sock = type { i64 }
%struct.ip_mc_socklist = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.in_device = type { i32 }

@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_mc_drop_socket(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_sock*, align 8
  %4 = alloca %struct.ip_mc_socklist*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.in_device*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.inet_sock* @inet_sk(%struct.sock* %7)
  store %struct.inet_sock* %8, %struct.inet_sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.net* @sock_net(%struct.sock* %9)
  store %struct.net* %10, %struct.net** %5, align 8
  %11 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %12 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %59

16:                                               ; preds = %1
  %17 = call i32 (...) @rtnl_lock()
  br label %18

18:                                               ; preds = %50, %16
  %19 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %20 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.ip_mc_socklist* @rtnl_dereference(i64 %21)
  store %struct.ip_mc_socklist* %22, %struct.ip_mc_socklist** %4, align 8
  %23 = icmp ne %struct.ip_mc_socklist* %22, null
  br i1 %23, label %24, label %57

24:                                               ; preds = %18
  %25 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %4, align 8
  %26 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %29 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.net*, %struct.net** %5, align 8
  %31 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %4, align 8
  %32 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.in_device* @inetdev_by_index(%struct.net* %30, i32 %34)
  store %struct.in_device* %35, %struct.in_device** %6, align 8
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %4, align 8
  %38 = load %struct.in_device*, %struct.in_device** %6, align 8
  %39 = call i32 @ip_mc_leave_src(%struct.sock* %36, %struct.ip_mc_socklist* %37, %struct.in_device* %38)
  %40 = load %struct.in_device*, %struct.in_device** %6, align 8
  %41 = icmp ne %struct.in_device* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %24
  %43 = load %struct.in_device*, %struct.in_device** %6, align 8
  %44 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %4, align 8
  %45 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ip_mc_dec_group(%struct.in_device* %43, i32 %48)
  br label %50

50:                                               ; preds = %42, %24
  %51 = load %struct.sock*, %struct.sock** %2, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  %53 = call i32 @atomic_sub(i32 16, i32* %52)
  %54 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %4, align 8
  %55 = load i32, i32* @rcu, align 4
  %56 = call i32 @kfree_rcu(%struct.ip_mc_socklist* %54, i32 %55)
  br label %18

57:                                               ; preds = %18
  %58 = call i32 (...) @rtnl_unlock()
  br label %59

59:                                               ; preds = %57, %15
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.ip_mc_socklist* @rtnl_dereference(i64) #1

declare dso_local %struct.in_device* @inetdev_by_index(%struct.net*, i32) #1

declare dso_local i32 @ip_mc_leave_src(%struct.sock*, %struct.ip_mc_socklist*, %struct.in_device*) #1

declare dso_local i32 @ip_mc_dec_group(%struct.in_device*, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.ip_mc_socklist*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
