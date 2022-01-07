; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_clc.c_smc_clc_prfx_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_clc.c_smc_clc_prfx_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.smc_clc_msg_proposal_prefix = type { i32 }
%struct.dst_entry = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_clc_prfx_match(%struct.socket* %0, %struct.smc_clc_msg_proposal_prefix* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.smc_clc_msg_proposal_prefix*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.smc_clc_msg_proposal_prefix* %1, %struct.smc_clc_msg_proposal_prefix** %4, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.dst_entry* @sk_dst_get(i32 %9)
  store %struct.dst_entry* %10, %struct.dst_entry** %5, align 8
  %11 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %12 = icmp ne %struct.dst_entry* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOTCONN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %18 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %44

24:                                               ; preds = %16
  %25 = call i32 (...) @rcu_read_lock()
  %26 = load %struct.smc_clc_msg_proposal_prefix*, %struct.smc_clc_msg_proposal_prefix** %4, align 8
  %27 = getelementptr inbounds %struct.smc_clc_msg_proposal_prefix, %struct.smc_clc_msg_proposal_prefix* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %32 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.smc_clc_msg_proposal_prefix*, %struct.smc_clc_msg_proposal_prefix** %4, align 8
  %35 = call i32 @smc_clc_prfx_match4_rcu(i32 %33, %struct.smc_clc_msg_proposal_prefix* %34)
  store i32 %35, i32* %6, align 4
  br label %42

36:                                               ; preds = %24
  %37 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %38 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.smc_clc_msg_proposal_prefix*, %struct.smc_clc_msg_proposal_prefix** %4, align 8
  %41 = call i32 @smc_clc_prfx_match6_rcu(i32 %39, %struct.smc_clc_msg_proposal_prefix* %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = call i32 (...) @rcu_read_unlock()
  br label %44

44:                                               ; preds = %42, %21
  %45 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %46 = call i32 @dst_release(%struct.dst_entry* %45)
  br label %47

47:                                               ; preds = %44, %13
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.dst_entry* @sk_dst_get(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @smc_clc_prfx_match4_rcu(i32, %struct.smc_clc_msg_proposal_prefix*) #1

declare dso_local i32 @smc_clc_prfx_match6_rcu(i32, %struct.smc_clc_msg_proposal_prefix*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
