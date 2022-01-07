; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c___vsock_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c___vsock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.vsock_sock*)* }
%struct.vsock_sock = type { i32 }
%struct.sock = type { i32, i32 }
%struct.sk_buff = type { i32 }

@transport = common dso_local global %struct.TYPE_2__* null, align 8
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @__vsock_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vsock_release(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.vsock_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = icmp ne %struct.sock* %8, null
  br i1 %9, label %10, label %49

10:                                               ; preds = %2
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %11)
  store %struct.vsock_sock* %12, %struct.vsock_sock** %7, align 8
  store %struct.sock* null, %struct.sock** %6, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.vsock_sock*)*, i32 (%struct.vsock_sock*)** %14, align 8
  %16 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %17 = call i32 %15(%struct.vsock_sock* %16)
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @lock_sock_nested(%struct.sock* %18, i32 %19)
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call i32 @sock_orphan(%struct.sock* %21)
  %23 = load i32, i32* @SHUTDOWN_MASK, align 4
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %31, %10
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = call %struct.sk_buff* @skb_dequeue(i32* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %5, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  br label %26

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %39, %34
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = call %struct.sock* @vsock_dequeue_accept(%struct.sock* %36)
  store %struct.sock* %37, %struct.sock** %6, align 8
  %38 = icmp ne %struct.sock* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  call void @__vsock_release(%struct.sock* %40, i32 %41)
  %42 = load %struct.sock*, %struct.sock** %6, align 8
  %43 = call i32 @sock_put(%struct.sock* %42)
  br label %35

44:                                               ; preds = %35
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = call i32 @release_sock(%struct.sock* %45)
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = call i32 @sock_put(%struct.sock* %47)
  br label %49

49:                                               ; preds = %44, %2
  ret void
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock_nested(%struct.sock*, i32) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sock* @vsock_dequeue_accept(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
