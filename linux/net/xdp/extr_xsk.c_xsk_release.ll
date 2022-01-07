; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.xdp_sock = type { i32, i32, i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @xsk_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.xdp_sock*, align 8
  %6 = alloca %struct.net*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.xdp_sock* @xdp_sk(%struct.sock* %10)
  store %struct.xdp_sock* %11, %struct.xdp_sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.net* @sock_net(%struct.sock* %16)
  store %struct.net* %17, %struct.net** %6, align 8
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = getelementptr inbounds %struct.net, %struct.net* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call i32 @sk_del_node_init_rcu(%struct.sock* %22)
  %24 = load %struct.net*, %struct.net** %6, align 8
  %25 = getelementptr inbounds %struct.net, %struct.net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = call i32 (...) @local_bh_disable()
  %29 = load %struct.net*, %struct.net** %6, align 8
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sock_prot_inuse_add(%struct.net* %29, i32 %32, i32 -1)
  %34 = call i32 (...) @local_bh_enable()
  %35 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %36 = call i32 @xsk_delete_from_maps(%struct.xdp_sock* %35)
  %37 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %38 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %37, i32 0, i32 2
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %41 = call i32 @xsk_unbind_dev(%struct.xdp_sock* %40)
  %42 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %43 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %42, i32 0, i32 2
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %46 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @xskq_destroy(i32 %47)
  %49 = load %struct.xdp_sock*, %struct.xdp_sock** %5, align 8
  %50 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @xskq_destroy(i32 %51)
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = call i32 @sock_orphan(%struct.sock* %53)
  %55 = load %struct.socket*, %struct.socket** %3, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %56, align 8
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = call i32 @sk_refcnt_debug_release(%struct.sock* %57)
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = call i32 @sock_put(%struct.sock* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %15, %14
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.xdp_sock* @xdp_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sk_del_node_init_rcu(%struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @sock_prot_inuse_add(%struct.net*, i32, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @xsk_delete_from_maps(%struct.xdp_sock*) #1

declare dso_local i32 @xsk_unbind_dev(%struct.xdp_sock*) #1

declare dso_local i32 @xskq_destroy(i32) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @sk_refcnt_debug_release(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
