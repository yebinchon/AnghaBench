; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sh.c_ip_vs_sh_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sh.c_ip_vs_sh_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_sh_state = type { %struct.ip_vs_sh_bucket* }
%struct.ip_vs_sh_bucket = type { i32 }
%struct.ip_vs_dest = type { i32 }

@IP_VS_SH_TAB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_sh_state*)* @ip_vs_sh_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_sh_flush(%struct.ip_vs_sh_state* %0) #0 {
  %2 = alloca %struct.ip_vs_sh_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_vs_sh_bucket*, align 8
  %5 = alloca %struct.ip_vs_dest*, align 8
  store %struct.ip_vs_sh_state* %0, %struct.ip_vs_sh_state** %2, align 8
  %6 = load %struct.ip_vs_sh_state*, %struct.ip_vs_sh_state** %2, align 8
  %7 = getelementptr inbounds %struct.ip_vs_sh_state, %struct.ip_vs_sh_state* %6, i32 0, i32 0
  %8 = load %struct.ip_vs_sh_bucket*, %struct.ip_vs_sh_bucket** %7, align 8
  %9 = getelementptr inbounds %struct.ip_vs_sh_bucket, %struct.ip_vs_sh_bucket* %8, i64 0
  store %struct.ip_vs_sh_bucket* %9, %struct.ip_vs_sh_bucket** %4, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IP_VS_SH_TAB_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load %struct.ip_vs_sh_bucket*, %struct.ip_vs_sh_bucket** %4, align 8
  %16 = getelementptr inbounds %struct.ip_vs_sh_bucket, %struct.ip_vs_sh_bucket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ip_vs_dest* @rcu_dereference_protected(i32 %17, i32 1)
  store %struct.ip_vs_dest* %18, %struct.ip_vs_dest** %5, align 8
  %19 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %20 = icmp ne %struct.ip_vs_dest* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %23 = call i32 @ip_vs_dest_put(%struct.ip_vs_dest* %22)
  %24 = load %struct.ip_vs_sh_bucket*, %struct.ip_vs_sh_bucket** %4, align 8
  %25 = getelementptr inbounds %struct.ip_vs_sh_bucket, %struct.ip_vs_sh_bucket* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @RCU_INIT_POINTER(i32 %26, i32* null)
  br label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.ip_vs_sh_bucket*, %struct.ip_vs_sh_bucket** %4, align 8
  %30 = getelementptr inbounds %struct.ip_vs_sh_bucket, %struct.ip_vs_sh_bucket* %29, i32 1
  store %struct.ip_vs_sh_bucket* %30, %struct.ip_vs_sh_bucket** %4, align 8
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %10

34:                                               ; preds = %10
  ret void
}

declare dso_local %struct.ip_vs_dest* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @ip_vs_dest_put(%struct.ip_vs_dest*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
