; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_sock_bind_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_sock_bind_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }
%struct.sock = type { i32 }

@EADDRINUSE = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@resource_mutex = common dso_local global i32 0, align 4
@pnres = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pn_sock_bind_res(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @EADDRINUSE, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call i32 @sock_net(%struct.sock* %9)
  %11 = call i32 @net_eq(i32 %10, i32* @init_net)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOIOCTLCMD, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %16
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pn_socket_autobind(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %23
  %33 = call i32 @mutex_lock(i32* @resource_mutex)
  %34 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pnres, i32 0, i32 0), align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i32 @sock_hold(%struct.sock* %40)
  %42 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pnres, i32 0, i32 0), align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = call i32 @rcu_assign_pointer(i32* %45, %struct.sock* %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %39, %32
  %49 = call i32 @mutex_unlock(i32* @resource_mutex)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %29, %20, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @pn_socket_autobind(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
