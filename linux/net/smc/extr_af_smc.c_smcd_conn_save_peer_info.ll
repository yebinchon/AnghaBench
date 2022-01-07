; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smcd_conn_save_peer_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smcd_conn_save_peer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.smc_clc_msg_accept_confirm = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*)* @smcd_conn_save_peer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smcd_conn_save_peer_info(%struct.smc_sock* %0, %struct.smc_clc_msg_accept_confirm* %1) #0 {
  %3 = alloca %struct.smc_sock*, align 8
  %4 = alloca %struct.smc_clc_msg_accept_confirm*, align 8
  %5 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %3, align 8
  store %struct.smc_clc_msg_accept_confirm* %1, %struct.smc_clc_msg_accept_confirm** %4, align 8
  %6 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %4, align 8
  %7 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, %struct.smc_clc_msg_accept_confirm* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @smc_uncompress_bufsize(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %4, align 8
  %11 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, %struct.smc_clc_msg_accept_confirm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %14 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %4, align 8
  %17 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, %struct.smc_clc_msg_accept_confirm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %20 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %27 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %30 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %33 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @atomic_set(i32* %31, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %39 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %37, %41
  %43 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %44 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  ret void
}

declare dso_local i32 @smc_uncompress_bufsize(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
