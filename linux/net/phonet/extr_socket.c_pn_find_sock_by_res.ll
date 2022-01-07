; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_find_sock_by_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_find_sock_by_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.sock = type { i32 }
%struct.net = type { i32 }

@init_net = common dso_local global i32 0, align 4
@pnres = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @pn_find_sock_by_res(%struct.net* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.net*, %struct.net** %4, align 8
  %8 = call i32 @net_eq(%struct.net* %7, i32* @init_net)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.sock* null, %struct.sock** %3, align 8
  br label %26

11:                                               ; preds = %2
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pnres, i32 0, i32 0), align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sock* @rcu_dereference(i32 %16)
  store %struct.sock* %17, %struct.sock** %6, align 8
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = icmp ne %struct.sock* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = call i32 @sock_hold(%struct.sock* %21)
  br label %23

23:                                               ; preds = %20, %11
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %25, %struct.sock** %3, align 8
  br label %26

26:                                               ; preds = %23, %10
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %27
}

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sock* @rcu_dereference(i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
