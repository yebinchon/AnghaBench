; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_sock_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_sock_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32 }
%struct.socket = type { i32 }
%struct.iucv_sock = type { i32, i32, i32, i32*, i32, i32, i64, i64, i32, i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@init_net = common dso_local global i32 0, align 4
@PF_IUCV = common dso_local global i32 0, align 4
@iucv_proto = common dso_local global i32 0, align 4
@afiucv_hs_callback_txnotify = common dso_local global i32 0, align 4
@pr_iucv = common dso_local global i64 0, align 8
@AF_IUCV_TRANS_IUCV = common dso_local global i32 0, align 4
@AF_IUCV_TRANS_HIPER = common dso_local global i32 0, align 4
@iucv_sock_destruct = common dso_local global i32 0, align 4
@IUCV_CONN_TIMEOUT = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@IUCV_OPEN = common dso_local global i32 0, align 4
@iucv_sk_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.socket*, i32, i32, i32)* @iucv_sock_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @iucv_sock_alloc(%struct.socket* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.iucv_sock*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @PF_IUCV, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.sock* @sk_alloc(i32* @init_net, i32 %12, i32 %13, i32* @iucv_proto, i32 %14)
  store %struct.sock* %15, %struct.sock** %10, align 8
  %16 = load %struct.sock*, %struct.sock** %10, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %97

19:                                               ; preds = %4
  %20 = load %struct.sock*, %struct.sock** %10, align 8
  %21 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %20)
  store %struct.iucv_sock* %21, %struct.iucv_sock** %11, align 8
  %22 = load %struct.socket*, %struct.socket** %6, align 8
  %23 = load %struct.sock*, %struct.sock** %10, align 8
  %24 = call i32 @sock_init_data(%struct.socket* %22, %struct.sock* %23)
  %25 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %26 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %25, i32 0, i32 14
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %29 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %28, i32 0, i32 13
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %32 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %31, i32 0, i32 12
  %33 = call i32 @skb_queue_head_init(i32* %32)
  %34 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %35 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %34, i32 0, i32 11
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %39 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %38, i32 0, i32 11
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %43 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %42, i32 0, i32 10
  %44 = call i32 @skb_queue_head_init(i32* %43)
  %45 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %46 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %45, i32 0, i32 9
  store i64 0, i64* %46, align 8
  %47 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %48 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %47, i32 0, i32 8
  %49 = call i32 @atomic_set(i32* %48, i32 0)
  %50 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %51 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %50, i32 0, i32 7
  store i64 0, i64* %51, align 8
  %52 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %53 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %55 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %54, i32 0, i32 5
  %56 = call i32 @atomic_set(i32* %55, i32 0)
  %57 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %58 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %57, i32 0, i32 4
  %59 = call i32 @atomic_set(i32* %58, i32 0)
  %60 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %61 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load i32, i32* @afiucv_hs_callback_txnotify, align 4
  %63 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %64 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %66 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %65, i32 0, i32 1
  %67 = call i32 @memset(i32* %66, i32 0, i32 32)
  %68 = load i64, i64* @pr_iucv, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %19
  %71 = load i32, i32* @AF_IUCV_TRANS_IUCV, align 4
  %72 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %73 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %78

74:                                               ; preds = %19
  %75 = load i32, i32* @AF_IUCV_TRANS_HIPER, align 4
  %76 = load %struct.iucv_sock*, %struct.iucv_sock** %11, align 8
  %77 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* @iucv_sock_destruct, align 4
  %80 = load %struct.sock*, %struct.sock** %10, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @IUCV_CONN_TIMEOUT, align 4
  %83 = load %struct.sock*, %struct.sock** %10, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sock*, %struct.sock** %10, align 8
  %86 = load i32, i32* @SOCK_ZAPPED, align 4
  %87 = call i32 @sock_reset_flag(%struct.sock* %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.sock*, %struct.sock** %10, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @IUCV_OPEN, align 4
  %92 = load %struct.sock*, %struct.sock** %10, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.sock*, %struct.sock** %10, align 8
  %95 = call i32 @iucv_sock_link(i32* @iucv_sk_list, %struct.sock* %94)
  %96 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %96, %struct.sock** %5, align 8
  br label %97

97:                                               ; preds = %78, %18
  %98 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %98
}

declare dso_local %struct.sock* @sk_alloc(i32*, i32, i32, i32*, i32) #1

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @iucv_sock_link(i32*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
