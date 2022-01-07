; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_wait_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_wait_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_psock = type { i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_WAITDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_psock*, i32, i64, i32*)* @tcp_bpf_wait_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_bpf_wait_data(%struct.sock* %0, %struct.sk_psock* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_psock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_psock* %1, %struct.sk_psock** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* @wait, align 4
  %14 = load i32, i32* @woken_wake_function, align 4
  %15 = call i32 @DEFINE_WAIT_FUNC(i32 %13, i32 %14)
  store i32 0, i32* %12, align 4
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %6, align 4
  br label %49

20:                                               ; preds = %5
  %21 = load %struct.sock*, %struct.sock** %7, align 8
  %22 = call i32 @sk_sleep(%struct.sock* %21)
  %23 = call i32 @add_wait_queue(i32 %22, i32* @wait)
  %24 = load i32, i32* @SOCKWQ_ASYNC_WAITDATA, align 4
  %25 = load %struct.sock*, %struct.sock** %7, align 8
  %26 = call i32 @sk_set_bit(i32 %24, %struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %7, align 8
  %28 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %29 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %28, i32 0, i32 0
  %30 = call i32 @list_empty(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %struct.sock*, %struct.sock** %7, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = call i32 @skb_queue_empty(i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %20
  %39 = phi i1 [ true, %20 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @sk_wait_event(%struct.sock* %27, i64* %10, i32 %40, i32* @wait)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @SOCKWQ_ASYNC_WAITDATA, align 4
  %43 = load %struct.sock*, %struct.sock** %7, align 8
  %44 = call i32 @sk_clear_bit(i32 %42, %struct.sock* %43)
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = call i32 @sk_sleep(%struct.sock* %45)
  %47 = call i32 @remove_wait_queue(i32 %46, i32* @wait)
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %38, %18
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
