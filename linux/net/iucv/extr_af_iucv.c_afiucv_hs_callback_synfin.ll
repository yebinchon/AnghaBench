; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_afiucv_hs_callback_synfin.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_afiucv_hs_callback_synfin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 (%struct.sock*)* }
%struct.sk_buff = type { i32 }
%struct.iucv_sock = type { i32 }

@IUCV_BOUND = common dso_local global i64 0, align 8
@IUCV_DISCONN = common dso_local global i64 0, align 8
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @afiucv_hs_callback_synfin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afiucv_hs_callback_synfin(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.iucv_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %6)
  store %struct.iucv_sock* %7, %struct.iucv_sock** %5, align 8
  %8 = load %struct.iucv_sock*, %struct.iucv_sock** %5, align 8
  %9 = icmp ne %struct.iucv_sock* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %31

11:                                               ; preds = %2
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IUCV_BOUND, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %31

18:                                               ; preds = %11
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call i32 @bh_lock_sock(%struct.sock* %19)
  %21 = load i64, i64* @IUCV_DISCONN, align 8
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 1
  %26 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %25, align 8
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call i32 %26(%struct.sock* %27)
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = call i32 @bh_unlock_sock(%struct.sock* %29)
  br label %31

31:                                               ; preds = %18, %17, %10
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  %34 = load i32, i32* @NET_RX_SUCCESS, align 4
  ret i32 %34
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
