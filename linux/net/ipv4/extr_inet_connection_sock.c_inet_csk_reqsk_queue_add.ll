; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_reqsk_queue_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_reqsk_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { %struct.request_sock*, %struct.sock* }
%struct.sock = type { i64 }
%struct.request_sock_queue = type { i32, %struct.request_sock*, i32* }
%struct.TYPE_2__ = type { %struct.request_sock_queue }

@TCP_LISTEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @inet_csk_reqsk_queue_add(%struct.sock* %0, %struct.request_sock* %1, %struct.sock* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.request_sock_queue*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.request_sock* %1, %struct.request_sock** %5, align 8
  store %struct.sock* %2, %struct.sock** %6, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.request_sock_queue* %10, %struct.request_sock_queue** %7, align 8
  %11 = load %struct.request_sock_queue*, %struct.request_sock_queue** %7, align 8
  %12 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCP_LISTEN, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = call i32 @inet_child_forget(%struct.sock* %23, %struct.request_sock* %24, %struct.sock* %25)
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %55

27:                                               ; preds = %3
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %30 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %29, i32 0, i32 1
  store %struct.sock* %28, %struct.sock** %30, align 8
  %31 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %32 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %31, i32 0, i32 0
  store %struct.request_sock* null, %struct.request_sock** %32, align 8
  %33 = load %struct.request_sock_queue*, %struct.request_sock_queue** %7, align 8
  %34 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.request_sock_queue*, %struct.request_sock_queue** %7, align 8
  %39 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %42 = call i32 @WRITE_ONCE(i32* %40, %struct.request_sock* %41)
  br label %49

43:                                               ; preds = %27
  %44 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %45 = load %struct.request_sock_queue*, %struct.request_sock_queue** %7, align 8
  %46 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %45, i32 0, i32 1
  %47 = load %struct.request_sock*, %struct.request_sock** %46, align 8
  %48 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %47, i32 0, i32 0
  store %struct.request_sock* %44, %struct.request_sock** %48, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %51 = load %struct.request_sock_queue*, %struct.request_sock_queue** %7, align 8
  %52 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %51, i32 0, i32 1
  store %struct.request_sock* %50, %struct.request_sock** %52, align 8
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = call i32 @sk_acceptq_added(%struct.sock* %53)
  br label %55

55:                                               ; preds = %49, %22
  %56 = load %struct.request_sock_queue*, %struct.request_sock_queue** %7, align 8
  %57 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  ret %struct.sock* %59
}

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inet_child_forget(%struct.sock*, %struct.request_sock*, %struct.sock*) #1

declare dso_local i32 @WRITE_ONCE(i32*, %struct.request_sock*) #1

declare dso_local i32 @sk_acceptq_added(%struct.sock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
