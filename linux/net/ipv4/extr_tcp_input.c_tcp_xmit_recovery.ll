; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_xmit_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_xmit_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.tcp_sock = type { i64, i32, i32 }

@REXMIT_NONE = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@TCP_NAGLE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @tcp_xmit_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_xmit_recovery(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @REXMIT_NONE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TCP_SYN_SENT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  br label %45

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 2
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i32 @tcp_current_mss(%struct.sock* %26)
  %28 = load i32, i32* @TCP_NAGLE_OFF, align 4
  %29 = call i32 @__tcp_push_pending_frames(%struct.sock* %25, i32 %27, i32 %28)
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @after(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %45

39:                                               ; preds = %24
  %40 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %41 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %18
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = call i32 @tcp_xmit_retransmit_queue(%struct.sock* %43)
  br label %45

45:                                               ; preds = %42, %38, %17
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__tcp_push_pending_frames(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_current_mss(%struct.sock*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @tcp_xmit_retransmit_queue(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
