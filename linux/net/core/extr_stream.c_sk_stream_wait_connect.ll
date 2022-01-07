; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_stream.c_sk_stream_wait_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_stream.c_sk_stream_wait_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.sock = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TCPF_ESTABLISHED = common dso_local global i32 0, align 4
@TCPF_CLOSE_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_stream_wait_connect(%struct.sock* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = load i32, i32* @woken_wake_function, align 4
  %11 = call i32 @DEFINE_WAIT_FUNC(i32 %9, i32 %10)
  %12 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %12, %struct.task_struct** %6, align 8
  br label %13

13:                                               ; preds = %86, %2
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @sock_error(%struct.sock* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %91

20:                                               ; preds = %13
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* @TCPF_SYN_SENT, align 4
  %26 = load i32, i32* @TCPF_SYN_RECV, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @EPIPE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %91

34:                                               ; preds = %20
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %91

41:                                               ; preds = %34
  %42 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %43 = call i64 @signal_pending(%struct.task_struct* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @sock_intr_errno(i64 %47)
  store i32 %48, i32* %3, align 4
  br label %91

49:                                               ; preds = %41
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = call i32 @sk_sleep(%struct.sock* %50)
  %52 = call i32 @add_wait_queue(i32 %51, i32* @wait)
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = load i64*, i64** %5, align 8
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %49
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* @TCPF_ESTABLISHED, align 4
  %69 = load i32, i32* @TCPF_CLOSE_WAIT, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %67, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %63, %49
  %76 = phi i1 [ false, %49 ], [ %74, %63 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @sk_wait_event(%struct.sock* %57, i64* %58, i32 %77, i32* @wait)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.sock*, %struct.sock** %4, align 8
  %80 = call i32 @sk_sleep(%struct.sock* %79)
  %81 = call i32 @remove_wait_queue(i32 %80, i32* @wait)
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br i1 %89, label %13, label %90

90:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %45, %38, %31, %18
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i64 @signal_pending(%struct.task_struct*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
