; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32, i32* }
%struct.kcm_net = type { i32, i32, i32 }
%struct.sock = type { i32 }
%struct.kcm_mux = type { i32, i32, %struct.kcm_net*, i32, i32, i32, i32, i32, i32, i32, i32 }

@kcm_net_id = common dso_local global i32 0, align 4
@kcm_dgram_ops = common dso_local global i32 0, align 4
@kcm_seqpacket_ops = common dso_local global i32 0, align 4
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@KCMPROTO_CONNECTED = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@PF_KCM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@kcm_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kcm_muxp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @kcm_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcm_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kcm_net*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.kcm_mux*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = load i32, i32* @kcm_net_id, align 4
  %15 = call %struct.kcm_net* @net_generic(%struct.net* %13, i32 %14)
  store %struct.kcm_net* %15, %struct.kcm_net** %10, align 8
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %25 [
    i32 129, label %19
    i32 128, label %22
  ]

19:                                               ; preds = %4
  %20 = load %struct.socket*, %struct.socket** %7, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 1
  store i32* @kcm_dgram_ops, i32** %21, align 8
  br label %28

22:                                               ; preds = %4
  %23 = load %struct.socket*, %struct.socket** %7, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 1
  store i32* @kcm_seqpacket_ops, i32** %24, align 8
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %110

28:                                               ; preds = %22, %19
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @KCMPROTO_CONNECTED, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EPROTONOSUPPORT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %110

35:                                               ; preds = %28
  %36 = load %struct.net*, %struct.net** %6, align 8
  %37 = load i32, i32* @PF_KCM, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.sock* @sk_alloc(%struct.net* %36, i32 %37, i32 %38, i32* @kcm_proto, i32 %39)
  store %struct.sock* %40, %struct.sock** %11, align 8
  %41 = load %struct.sock*, %struct.sock** %11, align 8
  %42 = icmp ne %struct.sock* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %110

46:                                               ; preds = %35
  %47 = load i32, i32* @kcm_muxp, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.kcm_mux* @kmem_cache_zalloc(i32 %47, i32 %48)
  store %struct.kcm_mux* %49, %struct.kcm_mux** %12, align 8
  %50 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %51 = icmp ne %struct.kcm_mux* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load %struct.sock*, %struct.sock** %11, align 8
  %54 = call i32 @sk_free(%struct.sock* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %110

57:                                               ; preds = %46
  %58 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %59 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %58, i32 0, i32 10
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %62 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %61, i32 0, i32 9
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %65 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %64, i32 0, i32 8
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %68 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %67, i32 0, i32 7
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %71 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %70, i32 0, i32 6
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %74 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %73, i32 0, i32 5
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %77 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %76, i32 0, i32 4
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %80 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %79, i32 0, i32 3
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.kcm_net*, %struct.kcm_net** %10, align 8
  %83 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %84 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %83, i32 0, i32 2
  store %struct.kcm_net* %82, %struct.kcm_net** %84, align 8
  %85 = load %struct.kcm_net*, %struct.kcm_net** %10, align 8
  %86 = getelementptr inbounds %struct.kcm_net, %struct.kcm_net* %85, i32 0, i32 0
  %87 = call i32 @mutex_lock(i32* %86)
  %88 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %89 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %88, i32 0, i32 1
  %90 = load %struct.kcm_net*, %struct.kcm_net** %10, align 8
  %91 = getelementptr inbounds %struct.kcm_net, %struct.kcm_net* %90, i32 0, i32 2
  %92 = call i32 @list_add_rcu(i32* %89, i32* %91)
  %93 = load %struct.kcm_net*, %struct.kcm_net** %10, align 8
  %94 = getelementptr inbounds %struct.kcm_net, %struct.kcm_net* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.kcm_net*, %struct.kcm_net** %10, align 8
  %98 = getelementptr inbounds %struct.kcm_net, %struct.kcm_net* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %101 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %100, i32 0, i32 0
  %102 = call i32 @skb_queue_head_init(i32* %101)
  %103 = load %struct.socket*, %struct.socket** %7, align 8
  %104 = load %struct.sock*, %struct.sock** %11, align 8
  %105 = call i32 @sock_init_data(%struct.socket* %103, %struct.sock* %104)
  %106 = load %struct.sock*, %struct.sock** %11, align 8
  %107 = call i32 @kcm_sk(%struct.sock* %106)
  %108 = load %struct.kcm_mux*, %struct.kcm_mux** %12, align 8
  %109 = call i32 @init_kcm_sock(i32 %107, %struct.kcm_mux* %108)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %57, %52, %43, %32, %25
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.kcm_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local %struct.kcm_mux* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @init_kcm_sock(i32, %struct.kcm_mux*) #1

declare dso_local i32 @kcm_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
