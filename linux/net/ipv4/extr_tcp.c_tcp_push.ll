; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_push.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.tcp_sock = type { i32 }
%struct.sk_buff = type { i64 }

@MSG_MORE = common dso_local global i32 0, align 4
@TSQ_THROTTLED = common dso_local global i32 0, align 4
@LINUX_MIB_TCPAUTOCORKING = common dso_local global i32 0, align 4
@TCP_NAGLE_CORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32, i32, i32)* @tcp_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_push(%struct.sock* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tcp_sock*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %13)
  store %struct.tcp_sock* %14, %struct.tcp_sock** %11, align 8
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.sk_buff* @tcp_write_queue_tail(%struct.sock* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %12, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %79

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MSG_MORE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %27 = call i64 @forced_push(%struct.tcp_sock* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %20
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = call i32 @tcp_mark_push(%struct.tcp_sock* %30, %struct.sk_buff* %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @tcp_mark_urg(%struct.tcp_sock* %34, i32 %35)
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @tcp_should_autocork(%struct.sock* %37, %struct.sk_buff* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %33
  %43 = load i32, i32* @TSQ_THROTTLED, align 4
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 1
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = load %struct.sock*, %struct.sock** %6, align 8
  %50 = call i32 @sock_net(%struct.sock* %49)
  %51 = load i32, i32* @LINUX_MIB_TCPAUTOCORKING, align 4
  %52 = call i32 @NET_INC_STATS(i32 %50, i32 %51)
  %53 = load i32, i32* @TSQ_THROTTLED, align 4
  %54 = load %struct.sock*, %struct.sock** %6, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 1
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  br label %57

57:                                               ; preds = %48, %42
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  %60 = call i64 @refcount_read(i32* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %79

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %33
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MSG_MORE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @TCP_NAGLE_CORK, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %67
  %75 = load %struct.sock*, %struct.sock** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @__tcp_push_pending_frames(%struct.sock* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %65, %19
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_tail(%struct.sock*) #1

declare dso_local i64 @forced_push(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_mark_push(%struct.tcp_sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_mark_urg(%struct.tcp_sock*, i32) #1

declare dso_local i64 @tcp_should_autocork(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local i32 @__tcp_push_pending_frames(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
