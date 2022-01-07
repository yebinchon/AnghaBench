; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_clc.c_smc_clc_prfx_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_clc.c_smc_clc_prfx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.smc_clc_msg_proposal_prefix = type { i32 }
%struct.smc_clc_ipv6_prefix = type { i32 }
%struct.dst_entry = type { i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in6 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.smc_clc_msg_proposal_prefix*, %struct.smc_clc_ipv6_prefix*)* @smc_clc_prfx_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_clc_prfx_set(%struct.socket* %0, %struct.smc_clc_msg_proposal_prefix* %1, %struct.smc_clc_ipv6_prefix* %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.smc_clc_msg_proposal_prefix*, align 8
  %6 = alloca %struct.smc_clc_ipv6_prefix*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.smc_clc_msg_proposal_prefix* %1, %struct.smc_clc_msg_proposal_prefix** %5, align 8
  store %struct.smc_clc_ipv6_prefix* %2, %struct.smc_clc_ipv6_prefix** %6, align 8
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dst_entry* @sk_dst_get(i32 %14)
  store %struct.dst_entry* %15, %struct.dst_entry** %7, align 8
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.smc_clc_msg_proposal_prefix*, %struct.smc_clc_msg_proposal_prefix** %5, align 8
  %19 = call i32 @memset(%struct.smc_clc_msg_proposal_prefix* %18, i32 0, i32 4)
  %20 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %21 = icmp ne %struct.dst_entry* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOTCONN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  br label %78

25:                                               ; preds = %3
  %26 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %27 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %75

33:                                               ; preds = %25
  %34 = load %struct.socket*, %struct.socket** %4, align 8
  %35 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %36 = call i32 @kernel_getsockname(%struct.socket* %34, %struct.sockaddr* %35)
  %37 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %37, %struct.sockaddr_in6** %9, align 8
  %38 = call i32 (...) @rcu_read_lock()
  %39 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PF_INET, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %44, %struct.sockaddr_in** %10, align 8
  %45 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.smc_clc_msg_proposal_prefix*, %struct.smc_clc_msg_proposal_prefix** %5, align 8
  %51 = call i32 @smc_clc_prfx_set4_rcu(%struct.dst_entry* %45, i32 %49, %struct.smc_clc_msg_proposal_prefix* %50)
  store i32 %51, i32* %11, align 4
  br label %73

52:                                               ; preds = %33
  %53 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %53, i32 0, i32 0
  %55 = call i64 @ipv6_addr_v4mapped(%struct.TYPE_4__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.smc_clc_msg_proposal_prefix*, %struct.smc_clc_msg_proposal_prefix** %5, align 8
  %66 = call i32 @smc_clc_prfx_set4_rcu(%struct.dst_entry* %58, i32 %64, %struct.smc_clc_msg_proposal_prefix* %65)
  store i32 %66, i32* %11, align 4
  br label %72

67:                                               ; preds = %52
  %68 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %69 = load %struct.smc_clc_msg_proposal_prefix*, %struct.smc_clc_msg_proposal_prefix** %5, align 8
  %70 = load %struct.smc_clc_ipv6_prefix*, %struct.smc_clc_ipv6_prefix** %6, align 8
  %71 = call i32 @smc_clc_prfx_set6_rcu(%struct.dst_entry* %68, %struct.smc_clc_msg_proposal_prefix* %69, %struct.smc_clc_ipv6_prefix* %70)
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %67, %57
  br label %73

73:                                               ; preds = %72, %43
  %74 = call i32 (...) @rcu_read_unlock()
  br label %75

75:                                               ; preds = %73, %30
  %76 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %77 = call i32 @dst_release(%struct.dst_entry* %76)
  br label %78

78:                                               ; preds = %75, %22
  %79 = load i32, i32* %11, align 4
  ret i32 %79
}

declare dso_local %struct.dst_entry* @sk_dst_get(i32) #1

declare dso_local i32 @memset(%struct.smc_clc_msg_proposal_prefix*, i32, i32) #1

declare dso_local i32 @kernel_getsockname(%struct.socket*, %struct.sockaddr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @smc_clc_prfx_set4_rcu(%struct.dst_entry*, i32, %struct.smc_clc_msg_proposal_prefix*) #1

declare dso_local i64 @ipv6_addr_v4mapped(%struct.TYPE_4__*) #1

declare dso_local i32 @smc_clc_prfx_set6_rcu(%struct.dst_entry*, %struct.smc_clc_msg_proposal_prefix*, %struct.smc_clc_ipv6_prefix*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
