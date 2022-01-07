; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_expect_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_expect_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i64, i32, i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.nf_conn_help = type { i32*, i32, i32 }
%struct.nf_conntrack_helper = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@nf_ct_expectation_timed_out = common dso_local global i32 0, align 4
@nf_conntrack_expect_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@nf_ct_expect_hash = common dso_local global i32* null, align 8
@expect_create = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conntrack_expect*)* @nf_ct_expect_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_ct_expect_insert(%struct.nf_conntrack_expect* %0) #0 {
  %2 = alloca %struct.nf_conntrack_expect*, align 8
  %3 = alloca %struct.nf_conn_help*, align 8
  %4 = alloca %struct.nf_conntrack_helper*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %2, align 8
  %7 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %8 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.nf_conn_help* @nfct_help(i32 %9)
  store %struct.nf_conn_help* %10, %struct.nf_conn_help** %3, align 8
  %11 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %12 = call %struct.net* @nf_ct_exp_net(%struct.nf_conntrack_expect* %11)
  store %struct.net* %12, %struct.net** %5, align 8
  %13 = load %struct.net*, %struct.net** %5, align 8
  %14 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %15 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %14, i32 0, i32 5
  %16 = call i32 @nf_ct_expect_dst_hash(%struct.net* %13, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %18 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %17, i32 0, i32 4
  %19 = call i32 @refcount_add(i32 2, i32* %18)
  %20 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %21 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %20, i32 0, i32 3
  %22 = load i32, i32* @nf_ct_expectation_timed_out, align 4
  %23 = call i32 @timer_setup(%struct.TYPE_7__* %21, i32 %22, i32 0)
  %24 = load %struct.nf_conn_help*, %struct.nf_conn_help** %3, align 8
  %25 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lockdep_is_held(i32* @nf_conntrack_expect_lock)
  %28 = call %struct.nf_conntrack_helper* @rcu_dereference_protected(i32 %26, i32 %27)
  store %struct.nf_conntrack_helper* %28, %struct.nf_conntrack_helper** %4, align 8
  %29 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %4, align 8
  %30 = icmp ne %struct.nf_conntrack_helper* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %1
  %32 = load i64, i64* @jiffies, align 8
  %33 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %4, align 8
  %34 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %37 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %32, %44
  %46 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %47 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  br label %49

49:                                               ; preds = %31, %1
  %50 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %51 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %50, i32 0, i32 3
  %52 = call i32 @add_timer(%struct.TYPE_7__* %51)
  %53 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %54 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %53, i32 0, i32 2
  %55 = load %struct.nf_conn_help*, %struct.nf_conn_help** %3, align 8
  %56 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %55, i32 0, i32 1
  %57 = call i32 @hlist_add_head_rcu(i32* %54, i32* %56)
  %58 = load %struct.nf_conn_help*, %struct.nf_conn_help** %3, align 8
  %59 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %62 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %68 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %67, i32 0, i32 1
  %69 = load i32*, i32** @nf_ct_expect_hash, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @hlist_add_head_rcu(i32* %68, i32* %72)
  %74 = load %struct.net*, %struct.net** %5, align 8
  %75 = getelementptr inbounds %struct.net, %struct.net* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.net*, %struct.net** %5, align 8
  %80 = load i32, i32* @expect_create, align 4
  %81 = call i32 @NF_CT_STAT_INC(%struct.net* %79, i32 %80)
  ret void
}

declare dso_local %struct.nf_conn_help* @nfct_help(i32) #1

declare dso_local %struct.net* @nf_ct_exp_net(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_expect_dst_hash(%struct.net*, i32*) #1

declare dso_local i32 @refcount_add(i32, i32*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.nf_conntrack_helper* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @NF_CT_STAT_INC(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
