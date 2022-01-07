; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_wait_for_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_wait_for_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i64, i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, i64*)* @dn_wait_for_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @dn_wait_for_connect(%struct.sock* %0, i64* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i32, i32* @wait, align 4
  %8 = call i32 @DEFINE_WAIT(i32 %7)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @sk_sleep(%struct.sock* %9)
  %11 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %12 = call i32 @prepare_to_wait(i32 %10, i32* @wait, i32 %11)
  br label %13

13:                                               ; preds = %59, %2
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call i32 @release_sock(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 1
  %18 = call %struct.sk_buff* @skb_dequeue(i32* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = icmp eq %struct.sk_buff* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @schedule_timeout(i64 %23)
  %25 = load i64*, i64** %4, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 1
  %28 = call %struct.sk_buff* @skb_dequeue(i32* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %5, align 8
  br label %29

29:                                               ; preds = %21, %13
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = call i32 @lock_sock(%struct.sock* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %64

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TCP_LISTEN, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %64

44:                                               ; preds = %35
  %45 = load i64*, i64** %4, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @sock_intr_errno(i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @current, align 4
  %49 = call i64 @signal_pending(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %64

52:                                               ; preds = %44
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  %55 = load i64*, i64** %4, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %64

59:                                               ; preds = %52
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = call i32 @sk_sleep(%struct.sock* %60)
  %62 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %63 = call i32 @prepare_to_wait(i32 %61, i32* @wait, i32 %62)
  br label %13

64:                                               ; preds = %58, %51, %43, %34
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = call i32 @sk_sleep(%struct.sock* %65)
  %67 = call i32 @finish_wait(i32 %66, i32* @wait)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = icmp eq %struct.sk_buff* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  %72 = call %struct.sk_buff* @ERR_PTR(i32 %71)
  br label %75

73:                                               ; preds = %64
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  br label %75

75:                                               ; preds = %73, %70
  %76 = phi %struct.sk_buff* [ %72, %70 ], [ %74, %73 ]
  ret %struct.sk_buff* %76
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
