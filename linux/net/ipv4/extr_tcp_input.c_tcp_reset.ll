; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32 }

@ECONNREFUSED = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_reset(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = call i32 @trace_tcp_receive_reset(%struct.sock* %3)
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %17 [
    i32 128, label %8
    i32 129, label %12
    i32 130, label %16
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @ECONNREFUSED, align 4
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  br label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @EPIPE, align 4
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  br label %21

16:                                               ; preds = %1
  br label %37

17:                                               ; preds = %1
  %18 = load i32, i32* @ECONNRESET, align 4
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %17, %12, %8
  %22 = call i32 (...) @smp_wmb()
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = call i32 @tcp_write_queue_purge(%struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call i32 @tcp_done(%struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = load i32, i32* @SOCK_DEAD, align 4
  %29 = call i32 @sock_flag(%struct.sock* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 1
  %34 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %33, align 8
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = call i32 %34(%struct.sock* %35)
  br label %37

37:                                               ; preds = %16, %31, %21
  ret void
}

declare dso_local i32 @trace_tcp_receive_reset(%struct.sock*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @tcp_write_queue_purge(%struct.sock*) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
