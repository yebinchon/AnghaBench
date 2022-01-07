; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_bearer_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_bearer_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_bearer = type { i32 }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_bearer_mtu(%struct.net* %0, i64 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_bearer*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = call %struct.TYPE_2__* @tipc_net(%struct.net* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.tipc_bearer* @rcu_dereference(i32 %14)
  store %struct.tipc_bearer* %15, %struct.tipc_bearer** %6, align 8
  %16 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %17 = icmp ne %struct.tipc_bearer* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %20 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tipc_bearer* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_2__* @tipc_net(%struct.net*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
