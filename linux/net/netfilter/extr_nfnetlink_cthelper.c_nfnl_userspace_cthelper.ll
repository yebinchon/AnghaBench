; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_userspace_cthelper.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_userspace_cthelper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_help = type { i32 }
%struct.nf_conntrack_helper = type { i32, i32 }

@NF_DROP = common dso_local global i32 0, align 4
@NF_CT_HELPER_F_USERSPACE = common dso_local global i32 0, align 4
@NF_CT_HELPER_F_CONFIGURED = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_VERDICT_FLAG_QUEUE_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)* @nfnl_userspace_cthelper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_userspace_cthelper(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn_help*, align 8
  %11 = alloca %struct.nf_conntrack_helper*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %13 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %12)
  store %struct.nf_conn_help* %13, %struct.nf_conn_help** %10, align 8
  %14 = load %struct.nf_conn_help*, %struct.nf_conn_help** %10, align 8
  %15 = icmp eq %struct.nf_conn_help* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @NF_DROP, align 4
  store i32 %17, i32* %5, align 4
  br label %46

18:                                               ; preds = %4
  %19 = load %struct.nf_conn_help*, %struct.nf_conn_help** %10, align 8
  %20 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nf_conntrack_helper* @rcu_dereference(i32 %21)
  store %struct.nf_conntrack_helper* %22, %struct.nf_conntrack_helper** %11, align 8
  %23 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %11, align 8
  %24 = icmp eq %struct.nf_conntrack_helper* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @NF_DROP, align 4
  store i32 %26, i32* %5, align 4
  br label %46

27:                                               ; preds = %18
  %28 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %11, align 8
  %29 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NF_CT_HELPER_F_USERSPACE, align 4
  %32 = load i32, i32* @NF_CT_HELPER_F_CONFIGURED, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = load i32, i32* @NF_CT_HELPER_F_USERSPACE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %38, i32* %5, align 4
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %11, align 8
  %41 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @NF_QUEUE_NR(i32 %42)
  %44 = load i32, i32* @NF_VERDICT_FLAG_QUEUE_BYPASS, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %39, %37, %25, %16
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local %struct.nf_conntrack_helper* @rcu_dereference(i32) #1

declare dso_local i32 @NF_QUEUE_NR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
