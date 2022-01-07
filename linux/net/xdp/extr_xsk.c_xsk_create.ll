; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.socket = type { i64, i32*, i32 }
%struct.sock = type { i32, i32 }
%struct.xdp_sock = type { i32, i32, i32, i32, i32, i32 }

@CAP_NET_RAW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@PF_XDP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@xsk_proto = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@xsk_proto_ops = common dso_local global i32 0, align 4
@xsk_destruct = common dso_local global i32 0, align 4
@SOCK_RCU_FREE = common dso_local global i32 0, align 4
@XSK_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @xsk_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.xdp_sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = getelementptr inbounds %struct.net, %struct.net* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CAP_NET_RAW, align 4
  %16 = call i32 @ns_capable(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %104

21:                                               ; preds = %4
  %22 = load %struct.socket*, %struct.socket** %7, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SOCK_RAW, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %104

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EPROTONOSUPPORT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %104

36:                                               ; preds = %30
  %37 = load i32, i32* @SS_UNCONNECTED, align 4
  %38 = load %struct.socket*, %struct.socket** %7, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.net*, %struct.net** %6, align 8
  %41 = load i32, i32* @PF_XDP, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.sock* @sk_alloc(%struct.net* %40, i32 %41, i32 %42, i32* @xsk_proto, i32 %43)
  store %struct.sock* %44, %struct.sock** %10, align 8
  %45 = load %struct.sock*, %struct.sock** %10, align 8
  %46 = icmp ne %struct.sock* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* @ENOBUFS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %104

50:                                               ; preds = %36
  %51 = load %struct.socket*, %struct.socket** %7, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 1
  store i32* @xsk_proto_ops, i32** %52, align 8
  %53 = load %struct.socket*, %struct.socket** %7, align 8
  %54 = load %struct.sock*, %struct.sock** %10, align 8
  %55 = call i32 @sock_init_data(%struct.socket* %53, %struct.sock* %54)
  %56 = load i32, i32* @PF_XDP, align 4
  %57 = load %struct.sock*, %struct.sock** %10, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @xsk_destruct, align 4
  %60 = load %struct.sock*, %struct.sock** %10, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.sock*, %struct.sock** %10, align 8
  %63 = call i32 @sk_refcnt_debug_inc(%struct.sock* %62)
  %64 = load %struct.sock*, %struct.sock** %10, align 8
  %65 = load i32, i32* @SOCK_RCU_FREE, align 4
  %66 = call i32 @sock_set_flag(%struct.sock* %64, i32 %65)
  %67 = load %struct.sock*, %struct.sock** %10, align 8
  %68 = call %struct.xdp_sock* @xdp_sk(%struct.sock* %67)
  store %struct.xdp_sock* %68, %struct.xdp_sock** %11, align 8
  %69 = load i32, i32* @XSK_READY, align 4
  %70 = load %struct.xdp_sock*, %struct.xdp_sock** %11, align 8
  %71 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.xdp_sock*, %struct.xdp_sock** %11, align 8
  %73 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %72, i32 0, i32 4
  %74 = call i32 @mutex_init(i32* %73)
  %75 = load %struct.xdp_sock*, %struct.xdp_sock** %11, align 8
  %76 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %75, i32 0, i32 3
  %77 = call i32 @spin_lock_init(i32* %76)
  %78 = load %struct.xdp_sock*, %struct.xdp_sock** %11, align 8
  %79 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %78, i32 0, i32 2
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.xdp_sock*, %struct.xdp_sock** %11, align 8
  %82 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %81, i32 0, i32 1
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.xdp_sock*, %struct.xdp_sock** %11, align 8
  %85 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %84, i32 0, i32 0
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.net*, %struct.net** %6, align 8
  %88 = getelementptr inbounds %struct.net, %struct.net* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @mutex_lock(i32* %89)
  %91 = load %struct.sock*, %struct.sock** %10, align 8
  %92 = load %struct.net*, %struct.net** %6, align 8
  %93 = getelementptr inbounds %struct.net, %struct.net* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = call i32 @sk_add_node_rcu(%struct.sock* %91, i32* %94)
  %96 = load %struct.net*, %struct.net** %6, align 8
  %97 = getelementptr inbounds %struct.net, %struct.net* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = call i32 (...) @local_bh_disable()
  %101 = load %struct.net*, %struct.net** %6, align 8
  %102 = call i32 @sock_prot_inuse_add(%struct.net* %101, i32* @xsk_proto, i32 1)
  %103 = call i32 (...) @local_bh_enable()
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %50, %47, %33, %27, %18
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @sk_refcnt_debug_inc(%struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local %struct.xdp_sock* @xdp_sk(%struct.sock*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sk_add_node_rcu(%struct.sock*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @sock_prot_inuse_add(%struct.net*, i32*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
