; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_recv_match_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_recv_match_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_sock = type { i32 }
%struct.j1939_sk_buff_cb = type { i32 }

@J1939_SOCK_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.j1939_sock*, %struct.j1939_sk_buff_cb*)* @j1939_sk_recv_match_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_sk_recv_match_one(%struct.j1939_sock* %0, %struct.j1939_sk_buff_cb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.j1939_sock*, align 8
  %5 = alloca %struct.j1939_sk_buff_cb*, align 8
  store %struct.j1939_sock* %0, %struct.j1939_sock** %4, align 8
  store %struct.j1939_sk_buff_cb* %1, %struct.j1939_sk_buff_cb** %5, align 8
  %6 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %7 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @J1939_SOCK_BOUND, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %15 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %16 = call i32 @j1939_sk_match_dst(%struct.j1939_sock* %14, %struct.j1939_sk_buff_cb* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %26

19:                                               ; preds = %13
  %20 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %21 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %22 = call i32 @j1939_sk_match_filter(%struct.j1939_sock* %20, %struct.j1939_sk_buff_cb* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %24, %18, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @j1939_sk_match_dst(%struct.j1939_sock*, %struct.j1939_sk_buff_cb*) #1

declare dso_local i32 @j1939_sk_match_filter(%struct.j1939_sock*, %struct.j1939_sk_buff_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
