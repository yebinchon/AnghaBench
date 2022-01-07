; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_release_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_release_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sock*)* }

@TCP_DEFERRED_ALL = common dso_local global i64 0, align 8
@TCPF_TSQ_DEFERRED = common dso_local global i64 0, align 8
@TCPF_WRITE_TIMER_DEFERRED = common dso_local global i64 0, align 8
@TCPF_DELACK_TIMER_DEFERRED = common dso_local global i64 0, align 8
@TCPF_MTU_REDUCED_DEFERRED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_release_cb(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @TCP_DEFERRED_ALL, align 8
  %11 = and i64 %9, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  br label %75

14:                                               ; preds = %5
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @TCP_DEFERRED_ALL, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %14
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @cmpxchg(i64* %21, i64 %22, i64 %23)
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %5, label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @TCPF_TSQ_DEFERRED, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = call i32 @tcp_tsq_write(%struct.sock* %33)
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = call i32 @__sock_put(%struct.sock* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = call i32 @sock_release_ownership(%struct.sock* %38)
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @TCPF_WRITE_TIMER_DEFERRED, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = call i32 @tcp_write_timer_handler(%struct.sock* %45)
  %47 = load %struct.sock*, %struct.sock** %2, align 8
  %48 = call i32 @__sock_put(%struct.sock* %47)
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @TCPF_DELACK_TIMER_DEFERRED, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.sock*, %struct.sock** %2, align 8
  %56 = call i32 @tcp_delack_timer_handler(%struct.sock* %55)
  %57 = load %struct.sock*, %struct.sock** %2, align 8
  %58 = call i32 @__sock_put(%struct.sock* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @TCPF_MTU_REDUCED_DEFERRED, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.sock*, %struct.sock** %2, align 8
  %66 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %69, align 8
  %71 = load %struct.sock*, %struct.sock** %2, align 8
  %72 = call i32 %70(%struct.sock* %71)
  %73 = load %struct.sock*, %struct.sock** %2, align 8
  %74 = call i32 @__sock_put(%struct.sock* %73)
  br label %75

75:                                               ; preds = %13, %64, %59
  ret void
}

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

declare dso_local i32 @tcp_tsq_write(%struct.sock*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

declare dso_local i32 @sock_release_ownership(%struct.sock*) #1

declare dso_local i32 @tcp_write_timer_handler(%struct.sock*) #1

declare dso_local i32 @tcp_delack_timer_handler(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
