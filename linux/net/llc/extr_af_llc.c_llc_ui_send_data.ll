; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_ui_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_ui_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @llc_ui_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_ui_send_data(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.llc_sock*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.llc_sock* @llc_sk(%struct.sock* %11)
  store %struct.llc_sock* %12, %struct.llc_sock** %8, align 8
  %13 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %14 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @llc_data_accept_state(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %20 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %25 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %18, %3
  %29 = phi i1 [ true, %18 ], [ true, %3 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @sock_sndtimeo(%struct.sock* %34, i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @llc_ui_wait_for_busy_core(%struct.sock* %37, i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @kfree_skb(%struct.sk_buff* %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %51

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.sock*, %struct.sock** %5, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @llc_build_and_send_pkt(%struct.sock* %48, %struct.sk_buff* %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @llc_data_accept_state(i32) #1

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @llc_ui_wait_for_busy_core(%struct.sock*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @llc_build_and_send_pkt(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
