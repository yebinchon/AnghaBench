; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_flowlabel.c_fl6_free_socklist.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_flowlabel.c_fl6_free_socklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.ipv6_fl_socklist = type { i32, i32 }

@ip6_sk_fl_lock = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fl6_free_socklist(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.ipv6_pinfo*, align 8
  %4 = alloca %struct.ipv6_fl_socklist*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %5)
  store %struct.ipv6_pinfo* %6, %struct.ipv6_pinfo** %3, align 8
  %7 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %8 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @rcu_access_pointer(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %39

13:                                               ; preds = %1
  %14 = call i32 @spin_lock_bh(i32* @ip6_sk_fl_lock)
  br label %15

15:                                               ; preds = %22, %13
  %16 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %17 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @lockdep_is_held(i32* @ip6_sk_fl_lock)
  %20 = call %struct.ipv6_fl_socklist* @rcu_dereference_protected(i32 %18, i32 %19)
  store %struct.ipv6_fl_socklist* %20, %struct.ipv6_fl_socklist** %4, align 8
  %21 = icmp ne %struct.ipv6_fl_socklist* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %4, align 8
  %24 = getelementptr inbounds %struct.ipv6_fl_socklist, %struct.ipv6_fl_socklist* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %27 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = call i32 @spin_unlock_bh(i32* @ip6_sk_fl_lock)
  %29 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %4, align 8
  %30 = getelementptr inbounds %struct.ipv6_fl_socklist, %struct.ipv6_fl_socklist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fl_release(i32 %31)
  %33 = load %struct.ipv6_fl_socklist*, %struct.ipv6_fl_socklist** %4, align 8
  %34 = load i32, i32* @rcu, align 4
  %35 = call i32 @kfree_rcu(%struct.ipv6_fl_socklist* %33, i32 %34)
  %36 = call i32 @spin_lock_bh(i32* @ip6_sk_fl_lock)
  br label %15

37:                                               ; preds = %15
  %38 = call i32 @spin_unlock_bh(i32* @ip6_sk_fl_lock)
  br label %39

39:                                               ; preds = %37, %12
  ret void
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ipv6_fl_socklist* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fl_release(i32) #1

declare dso_local i32 @kfree_rcu(%struct.ipv6_fl_socklist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
