; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_request_sock.c_reqsk_fastopen_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_request_sock.c_reqsk_fastopen_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.request_sock = type { %struct.request_sock*, %struct.TYPE_7__, i64, %struct.sock* }
%struct.TYPE_7__ = type { i64 }
%struct.fastopen_queue = type { i32, i32, %struct.request_sock*, %struct.request_sock* }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.fastopen_queue }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@TCP_LISTEN = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reqsk_fastopen_remove(%struct.sock* %0, %struct.request_sock* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.fastopen_queue*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.request_sock* %1, %struct.request_sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %10 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %9, i32 0, i32 3
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %7, align 8
  %13 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.fastopen_queue* %15, %struct.fastopen_queue** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.TYPE_8__* @tcp_sk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @RCU_INIT_POINTER(i32 %19, i32* null)
  %21 = load %struct.fastopen_queue*, %struct.fastopen_queue** %8, align 8
  %22 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.fastopen_queue*, %struct.fastopen_queue** %8, align 8
  %25 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %29 = call %struct.TYPE_9__* @tcp_rsk(%struct.request_sock* %28)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %32 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %84

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.sock*, %struct.sock** %7, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TCP_LISTEN, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39, %36
  %46 = load %struct.fastopen_queue*, %struct.fastopen_queue** %8, align 8
  %47 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %50 = call i32 @reqsk_put(%struct.request_sock* %49)
  br label %88

51:                                               ; preds = %39
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 60, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  %57 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %58 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.fastopen_queue*, %struct.fastopen_queue** %8, align 8
  %61 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %60, i32 0, i32 3
  %62 = load %struct.request_sock*, %struct.request_sock** %61, align 8
  %63 = icmp eq %struct.request_sock* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %66 = load %struct.fastopen_queue*, %struct.fastopen_queue** %8, align 8
  %67 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %66, i32 0, i32 3
  store %struct.request_sock* %65, %struct.request_sock** %67, align 8
  br label %74

68:                                               ; preds = %51
  %69 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %70 = load %struct.fastopen_queue*, %struct.fastopen_queue** %8, align 8
  %71 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %70, i32 0, i32 2
  %72 = load %struct.request_sock*, %struct.request_sock** %71, align 8
  %73 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %72, i32 0, i32 0
  store %struct.request_sock* %69, %struct.request_sock** %73, align 8
  br label %74

74:                                               ; preds = %68, %64
  %75 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %76 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %75, i32 0, i32 0
  store %struct.request_sock* null, %struct.request_sock** %76, align 8
  %77 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %78 = load %struct.fastopen_queue*, %struct.fastopen_queue** %8, align 8
  %79 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %78, i32 0, i32 2
  store %struct.request_sock* %77, %struct.request_sock** %79, align 8
  %80 = load %struct.fastopen_queue*, %struct.fastopen_queue** %8, align 8
  %81 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %74, %35
  %85 = load %struct.fastopen_queue*, %struct.fastopen_queue** %8, align 8
  %86 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock_bh(i32* %86)
  br label %88

88:                                               ; preds = %84, %45
  ret void
}

declare dso_local %struct.TYPE_10__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.TYPE_9__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @reqsk_put(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
