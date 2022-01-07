; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_queue_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_queue_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.fastopen_queue = type { i64, i64, i32, %struct.request_sock* }
%struct.request_sock = type { %struct.request_sock*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fastopen_queue }

@jiffies = common dso_local global i32 0, align 4
@LINUX_MIB_TCPFASTOPENLISTENOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_fastopen_queue_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_fastopen_queue_check(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.fastopen_queue*, align 8
  %5 = alloca %struct.request_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.TYPE_6__* @inet_csk(%struct.sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.fastopen_queue* %9, %struct.fastopen_queue** %4, align 8
  %10 = load %struct.fastopen_queue*, %struct.fastopen_queue** %4, align 8
  %11 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.fastopen_queue*, %struct.fastopen_queue** %4, align 8
  %17 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fastopen_queue*, %struct.fastopen_queue** %4, align 8
  %20 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %15
  %24 = load %struct.fastopen_queue*, %struct.fastopen_queue** %4, align 8
  %25 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.fastopen_queue*, %struct.fastopen_queue** %4, align 8
  %28 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %27, i32 0, i32 3
  %29 = load %struct.request_sock*, %struct.request_sock** %28, align 8
  store %struct.request_sock* %29, %struct.request_sock** %5, align 8
  %30 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %31 = icmp ne %struct.request_sock* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %34 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @jiffies, align 4
  %38 = call i64 @time_after(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %32, %23
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = call i32 @sock_net(%struct.sock* %41)
  %43 = load i32, i32* @LINUX_MIB_TCPFASTOPENLISTENOVERFLOW, align 4
  %44 = call i32 @__NET_INC_STATS(i32 %42, i32 %43)
  %45 = load %struct.fastopen_queue*, %struct.fastopen_queue** %4, align 8
  %46 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %45, i32 0, i32 2
  %47 = call i32 @spin_unlock(i32* %46)
  store i32 0, i32* %2, align 4
  br label %64

48:                                               ; preds = %32
  %49 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %50 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %49, i32 0, i32 0
  %51 = load %struct.request_sock*, %struct.request_sock** %50, align 8
  %52 = load %struct.fastopen_queue*, %struct.fastopen_queue** %4, align 8
  %53 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %52, i32 0, i32 3
  store %struct.request_sock* %51, %struct.request_sock** %53, align 8
  %54 = load %struct.fastopen_queue*, %struct.fastopen_queue** %4, align 8
  %55 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.fastopen_queue*, %struct.fastopen_queue** %4, align 8
  %59 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %58, i32 0, i32 2
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %62 = call i32 @reqsk_put(%struct.request_sock* %61)
  br label %63

63:                                               ; preds = %48, %15
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %40, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_6__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @__NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @reqsk_put(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
