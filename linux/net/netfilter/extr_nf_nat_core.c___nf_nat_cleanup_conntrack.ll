; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c___nf_nat_cleanup_conntrack.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c___nf_nat_cleanup_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@nf_nat_locks = common dso_local global i32* null, align 8
@CONNTRACK_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*)* @__nf_nat_cleanup_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nf_nat_cleanup_conntrack(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %4 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %5 = call i32 @nf_ct_net(%struct.nf_conn* %4)
  %6 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %7 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @hash_by_src(i32 %5, i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** @nf_nat_locks, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CONNTRACK_LOCKS, align 4
  %16 = urem i32 %14, %15
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %21 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %20, i32 0, i32 0
  %22 = call i32 @hlist_del_rcu(i32* %21)
  %23 = load i32*, i32** @nf_nat_locks, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @CONNTRACK_LOCKS, align 4
  %26 = urem i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = call i32 @spin_unlock_bh(i32* %28)
  ret void
}

declare dso_local i32 @hash_by_src(i32, i32*) #1

declare dso_local i32 @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
