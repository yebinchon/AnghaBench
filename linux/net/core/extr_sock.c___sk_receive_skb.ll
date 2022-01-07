; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c___sk_receive_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c___sk_receive_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32* }

@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sk_receive_skb(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @sk_filter_trim_cap(%struct.sock* %13, %struct.sk_buff* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %86

19:                                               ; preds = %5
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = load %struct.sock*, %struct.sock** %6, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @sk_rcvqueues_full(%struct.sock* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = call i32 @atomic_inc(i32* %30)
  br label %86

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.sock*, %struct.sock** %6, align 8
  %37 = call i32 @bh_lock_sock_nested(%struct.sock* %36)
  br label %41

38:                                               ; preds = %32
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = call i32 @bh_lock_sock(%struct.sock* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.sock*, %struct.sock** %6, align 8
  %43 = call i32 @sock_owned_by_user(%struct.sock* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %41
  %46 = load %struct.sock*, %struct.sock** %6, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* @_RET_IP_, align 4
  %50 = call i32 @mutex_acquire(i32* %48, i32 0, i32 1, i32 %49)
  %51 = load %struct.sock*, %struct.sock** %6, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = call i32 @sk_backlog_rcv(%struct.sock* %51, %struct.sk_buff* %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.sock*, %struct.sock** %6, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* @_RET_IP_, align 4
  %58 = call i32 @mutex_release(i32* %56, i32 1, i32 %57)
  br label %75

59:                                               ; preds = %41
  %60 = load %struct.sock*, %struct.sock** %6, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = load %struct.sock*, %struct.sock** %6, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @READ_ONCE(i32 %64)
  %66 = call i64 @sk_add_backlog(%struct.sock* %60, %struct.sk_buff* %61, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.sock*, %struct.sock** %6, align 8
  %70 = call i32 @bh_unlock_sock(%struct.sock* %69)
  %71 = load %struct.sock*, %struct.sock** %6, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  %73 = call i32 @atomic_inc(i32* %72)
  br label %86

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %45
  %76 = load %struct.sock*, %struct.sock** %6, align 8
  %77 = call i32 @bh_unlock_sock(%struct.sock* %76)
  br label %78

78:                                               ; preds = %86, %75
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.sock*, %struct.sock** %6, align 8
  %83 = call i32 @sock_put(%struct.sock* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %11, align 4
  ret i32 %85

86:                                               ; preds = %68, %28, %18
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  br label %78
}

declare dso_local i64 @sk_filter_trim_cap(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i64 @sk_rcvqueues_full(%struct.sock*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @bh_lock_sock_nested(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @mutex_acquire(i32*, i32, i32, i32) #1

declare dso_local i32 @sk_backlog_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @mutex_release(i32*, i32, i32) #1

declare dso_local i64 @sk_add_backlog(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
