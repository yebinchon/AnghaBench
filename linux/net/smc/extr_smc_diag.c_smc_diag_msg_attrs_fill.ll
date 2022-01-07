; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_diag.c_smc_diag_msg_attrs_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_diag.c_smc_diag_msg_attrs_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.smc_diag_msg = type { i32, i32 }
%struct.user_namespace = type { i32 }

@SMC_DIAG_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.smc_diag_msg*, %struct.user_namespace*)* @smc_diag_msg_attrs_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_diag_msg_attrs_fill(%struct.sock* %0, %struct.sk_buff* %1, %struct.smc_diag_msg* %2, %struct.user_namespace* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.smc_diag_msg*, align 8
  %9 = alloca %struct.user_namespace*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.smc_diag_msg* %2, %struct.smc_diag_msg** %8, align 8
  store %struct.user_namespace* %3, %struct.user_namespace** %9, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %11 = load i32, i32* @SMC_DIAG_SHUTDOWN, align 4
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @nla_put_u8(%struct.sk_buff* %10, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %29

18:                                               ; preds = %4
  %19 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = call i32 @sock_i_uid(%struct.sock* %20)
  %22 = call i32 @from_kuid_munged(%struct.user_namespace* %19, i32 %21)
  %23 = load %struct.smc_diag_msg*, %struct.smc_diag_msg** %8, align 8
  %24 = getelementptr inbounds %struct.smc_diag_msg, %struct.smc_diag_msg* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = call i32 @sock_i_ino(%struct.sock* %25)
  %27 = load %struct.smc_diag_msg*, %struct.smc_diag_msg** %8, align 8
  %28 = getelementptr inbounds %struct.smc_diag_msg, %struct.smc_diag_msg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %18, %17
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @sock_i_uid(%struct.sock*) #1

declare dso_local i32 @sock_i_ino(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
