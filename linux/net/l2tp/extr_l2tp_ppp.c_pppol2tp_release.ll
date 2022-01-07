; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.l2tp_session = type { i32 }
%struct.pppol2tp_session = type { i32, i32, i32, i32 }

@EBADF = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@PPPOX_DEAD = common dso_local global i32 0, align 4
@pppol2tp_put_sk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @pppol2tp_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.l2tp_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pppol2tp_session*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = icmp ne %struct.sock* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

14:                                               ; preds = %1
  %15 = load i32, i32* @EBADF, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = load i32, i32* @SOCK_DEAD, align 4
  %21 = call i64 @sock_flag(%struct.sock* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %71

24:                                               ; preds = %14
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @pppox_unbind_sock(%struct.sock* %25)
  %27 = load i32, i32* @PPPOX_DEAD, align 4
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = call i32 @sock_orphan(%struct.sock* %30)
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %33, align 8
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = call %struct.l2tp_session* @pppol2tp_sock_to_session(%struct.sock* %34)
  store %struct.l2tp_session* %35, %struct.l2tp_session** %5, align 8
  %36 = load %struct.l2tp_session*, %struct.l2tp_session** %5, align 8
  %37 = icmp ne %struct.l2tp_session* %36, null
  br i1 %37, label %38, label %66

38:                                               ; preds = %24
  %39 = load %struct.l2tp_session*, %struct.l2tp_session** %5, align 8
  %40 = call i32 @l2tp_session_delete(%struct.l2tp_session* %39)
  %41 = load %struct.l2tp_session*, %struct.l2tp_session** %5, align 8
  %42 = call %struct.pppol2tp_session* @l2tp_session_priv(%struct.l2tp_session* %41)
  store %struct.pppol2tp_session* %42, %struct.pppol2tp_session** %7, align 8
  %43 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %7, align 8
  %44 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %7, align 8
  %47 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %7, align 8
  %50 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %49, i32 0, i32 1
  %51 = call i32 @lockdep_is_held(i32* %50)
  %52 = call i32 @rcu_dereference_protected(i32 %48, i32 %51)
  %53 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %7, align 8
  %54 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %7, align 8
  %56 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @RCU_INIT_POINTER(i32 %57, i32* null)
  %59 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %7, align 8
  %60 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %7, align 8
  %63 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %62, i32 0, i32 0
  %64 = load i32, i32* @pppol2tp_put_sk, align 4
  %65 = call i32 @call_rcu(i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %38, %24
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = call i32 @release_sock(%struct.sock* %67)
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = call i32 @sock_put(%struct.sock* %69)
  store i32 0, i32* %2, align 4
  br label %75

71:                                               ; preds = %23
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = call i32 @release_sock(%struct.sock* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %66, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @pppox_unbind_sock(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local %struct.l2tp_session* @pppol2tp_sock_to_session(%struct.sock*) #1

declare dso_local i32 @l2tp_session_delete(%struct.l2tp_session*) #1

declare dso_local %struct.pppol2tp_session* @l2tp_session_priv(%struct.l2tp_session*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
