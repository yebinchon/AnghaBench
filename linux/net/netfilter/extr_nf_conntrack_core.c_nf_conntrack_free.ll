; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@nf_conntrack_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_conntrack_free(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.net*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %4 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %5 = call %struct.net* @nf_ct_net(%struct.nf_conn* %4)
  store %struct.net* %5, %struct.net** %3, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %7 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %14 = call i32 @nf_ct_ext_destroy(%struct.nf_conn* %13)
  %15 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %16 = call i32 @nf_ct_ext_free(%struct.nf_conn* %15)
  %17 = load i32, i32* @nf_conntrack_cachep, align 4
  %18 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %19 = call i32 @kmem_cache_free(i32 %17, %struct.nf_conn* %18)
  %20 = call i32 (...) @smp_mb__before_atomic()
  %21 = load %struct.net*, %struct.net** %3, align 8
  %22 = getelementptr inbounds %struct.net, %struct.net* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @atomic_dec(i32* %23)
  ret void
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nf_ct_ext_destroy(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_ext_free(%struct.nf_conn*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nf_conn*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
