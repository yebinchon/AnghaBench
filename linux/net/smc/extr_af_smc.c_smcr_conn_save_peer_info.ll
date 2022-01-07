; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smcr_conn_save_peer_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smcr_conn_save_peer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.smc_clc_msg_accept_confirm = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_sock*, %struct.smc_clc_msg_accept_confirm*)* @smcr_conn_save_peer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smcr_conn_save_peer_info(%struct.smc_sock* %0, %struct.smc_clc_msg_accept_confirm* %1) #0 {
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
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.smc_clc_msg_accept_confirm*, %struct.smc_clc_msg_accept_confirm** %4, align 8
  %17 = getelementptr inbounds %struct.smc_clc_msg_accept_confirm, %struct.smc_clc_msg_accept_confirm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ntohl(i32 %18)
  %20 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %21 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %26 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %29 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %32 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @atomic_set(i32* %30, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %38 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = mul nsw i32 %36, %41
  %43 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %44 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  ret void
}

declare dso_local i32 @smc_uncompress_bufsize(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
