; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_unlink_expect_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_unlink_expect_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i64, i32, i32, i32, i32 }
%struct.nf_conn_help = type { i32* }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IPEXP_DESTROY = common dso_local global i32 0, align 4
@expect_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_unlink_expect_report(%struct.nf_conntrack_expect* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nf_conntrack_expect*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conn_help*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %10 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nf_conn_help* @nfct_help(i32 %11)
  store %struct.nf_conn_help* %12, %struct.nf_conn_help** %7, align 8
  %13 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %14 = call %struct.net* @nf_ct_exp_net(%struct.nf_conntrack_expect* %13)
  store %struct.net* %14, %struct.net** %8, align 8
  %15 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %16 = icmp ne %struct.nf_conn_help* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %21 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %20, i32 0, i32 3
  %22 = call i32 @timer_pending(i32* %21)
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %25 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %24, i32 0, i32 2
  %26 = call i32 @hlist_del_rcu(i32* %25)
  %27 = load %struct.net*, %struct.net** %8, align 8
  %28 = getelementptr inbounds %struct.net, %struct.net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %33 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %32, i32 0, i32 1
  %34 = call i32 @hlist_del_rcu(i32* %33)
  %35 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %36 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @IPEXP_DESTROY, align 4
  %45 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @nf_ct_expect_event_report(i32 %44, %struct.nf_conntrack_expect* %45, i32 %46, i32 %47)
  %49 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %50 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %49)
  %51 = load %struct.net*, %struct.net** %8, align 8
  %52 = load i32, i32* @expect_delete, align 4
  %53 = call i32 @NF_CT_STAT_INC(%struct.net* %51, i32 %52)
  ret void
}

declare dso_local %struct.nf_conn_help* @nfct_help(i32) #1

declare dso_local %struct.net* @nf_ct_exp_net(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @nf_ct_expect_event_report(i32, %struct.nf_conntrack_expect*, i32, i32) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @NF_CT_STAT_INC(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
