; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_send_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_send_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.iucv_sock = type { i32 }
%struct.sk_buff = type { i32 }

@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @iucv_send_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_send_ctrl(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iucv_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %10)
  store %struct.iucv_sock* %11, %struct.iucv_sock** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.iucv_sock*, %struct.iucv_sock** %5, align 8
  %13 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @LL_RESERVED_SPACE(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = add i64 4, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SEND_SHUTDOWN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @RCV_SHUTDOWN, align 4
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %25, %2
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %35, i32 %36, i32 1, i32* %6)
  store %struct.sk_buff* %37, %struct.sk_buff** %8, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @skb_reserve(%struct.sk_buff* %41, i32 %42)
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @afiucv_hs_send(i32* null, %struct.sock* %44, %struct.sk_buff* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %40, %34
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @LL_RESERVED_SPACE(i32) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @afiucv_hs_send(i32*, %struct.sock*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
