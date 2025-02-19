; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c___nf_conntrack_hash_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c___nf_conntrack_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@nf_conntrack_hash = common dso_local global i32* null, align 8
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*, i32, i32)* @__nf_conntrack_hash_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nf_conntrack_hash_insert(%struct.nf_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %8 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** @nf_conntrack_hash, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @hlist_nulls_add_head_rcu(i32* %12, i32* %16)
  %18 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %19 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** @nf_conntrack_hash, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @hlist_nulls_add_head_rcu(i32* %23, i32* %27)
  ret void
}

declare dso_local i32 @hlist_nulls_add_head_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
