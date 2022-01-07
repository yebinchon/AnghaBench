; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_alloc_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_alloc_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.x25_sock = type { i32, i32, i32, i32 }

@AF_X25 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@x25_proto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, i32)* @x25_alloc_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @x25_alloc_socket(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.x25_sock*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = load i32, i32* @AF_X25, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.sock* @sk_alloc(%struct.net* %7, i32 %8, i32 %9, i32* @x25_proto, i32 %10)
  store %struct.sock* %11, %struct.sock** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call i32 @sock_init_data(i32* null, %struct.sock* %16)
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call %struct.x25_sock* @x25_sk(%struct.sock* %18)
  store %struct.x25_sock* %19, %struct.x25_sock** %5, align 8
  %20 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %21 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %20, i32 0, i32 3
  %22 = call i32 @skb_queue_head_init(i32* %21)
  %23 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %24 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %23, i32 0, i32 2
  %25 = call i32 @skb_queue_head_init(i32* %24)
  %26 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %27 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %26, i32 0, i32 1
  %28 = call i32 @skb_queue_head_init(i32* %27)
  %29 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %30 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %29, i32 0, i32 0
  %31 = call i32 @skb_queue_head_init(i32* %30)
  br label %32

32:                                               ; preds = %15, %14
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  ret %struct.sock* %33
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(i32*, %struct.sock*) #1

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
