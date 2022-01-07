; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_retransmits_timed_out.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_retransmits_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TCP_RTO_MIN = common dso_local global i32 0, align 4
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, i32)* @retransmits_timed_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retransmits_timed_out(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.TYPE_5__* @inet_csk(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

16:                                               ; preds = %3
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call %struct.TYPE_4__* @tcp_sk(%struct.sock* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %16
  %27 = load i32, i32* @TCP_RTO_MIN, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* @TCPF_SYN_SENT, align 4
  %33 = load i32, i32* @TCPF_SYN_RECV, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = call i32 @tcp_timeout_init(%struct.sock* %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %26
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @tcp_model_timeout(%struct.sock* %41, i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %16
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = call %struct.TYPE_4__* @tcp_sk(%struct.sock* %46)
  %48 = call i32 @tcp_time_stamp(%struct.TYPE_4__* %47)
  %49 = load i32, i32* %8, align 4
  %50 = sub i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = sub i32 %50, %51
  %53 = zext i32 %52 to i64
  %54 = icmp sge i64 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %45, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_5__* @inet_csk(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tcp_timeout_init(%struct.sock*) #1

declare dso_local i32 @tcp_model_timeout(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_time_stamp(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
