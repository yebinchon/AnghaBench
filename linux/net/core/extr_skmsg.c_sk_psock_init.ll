; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_psock = type { i32, i32, i32, i32, i32, i32, i32, %struct.sock* }
%struct.sock = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__SK_NONE = common dso_local global i32 0, align 4
@sk_psock_backlog = common dso_local global i32 0, align 4
@SK_PSOCK_TX_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_psock* @sk_psock_init(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_psock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_psock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = load i32, i32* @__GFP_NOWARN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.sk_psock* @kzalloc_node(i32 40, i32 %9, i32 %10)
  store %struct.sk_psock* %11, %struct.sk_psock** %6, align 8
  %12 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %13 = icmp ne %struct.sk_psock* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.sk_psock* null, %struct.sk_psock** %3, align 8
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %18 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %17, i32 0, i32 7
  store %struct.sock* %16, %struct.sock** %18, align 8
  %19 = load i32, i32* @__SK_NONE, align 4
  %20 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %21 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %23 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %22, i32 0, i32 5
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %26 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %25, i32 0, i32 4
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %29 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %28, i32 0, i32 3
  %30 = load i32, i32* @sk_psock_backlog, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %33 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %32, i32 0, i32 2
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %36 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %35, i32 0, i32 1
  %37 = call i32 @skb_queue_head_init(i32* %36)
  %38 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %39 = load i32, i32* @SK_PSOCK_TX_ENABLED, align 4
  %40 = call i32 @sk_psock_set_state(%struct.sk_psock* %38, i32 %39)
  %41 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %42 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %41, i32 0, i32 0
  %43 = call i32 @refcount_set(i32* %42, i32 1)
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  %46 = call i32 @rcu_assign_sk_user_data(%struct.sock* %44, %struct.sk_psock* %45)
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = call i32 @sock_hold(%struct.sock* %47)
  %49 = load %struct.sk_psock*, %struct.sk_psock** %6, align 8
  store %struct.sk_psock* %49, %struct.sk_psock** %3, align 8
  br label %50

50:                                               ; preds = %15, %14
  %51 = load %struct.sk_psock*, %struct.sk_psock** %3, align 8
  ret %struct.sk_psock* %51
}

declare dso_local %struct.sk_psock* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @sk_psock_set_state(%struct.sk_psock*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @rcu_assign_sk_user_data(%struct.sock*, %struct.sk_psock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
