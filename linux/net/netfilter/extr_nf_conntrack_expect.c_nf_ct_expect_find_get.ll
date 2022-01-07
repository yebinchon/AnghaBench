; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_expect_find_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_expect_find_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nf_conntrack_expect* @nf_ct_expect_find_get(%struct.net* %0, %struct.nf_conntrack_zone* %1, %struct.nf_conntrack_tuple* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nf_conntrack_zone*, align 8
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca %struct.nf_conntrack_expect*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nf_conntrack_zone* %1, %struct.nf_conntrack_zone** %5, align 8
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %6, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %5, align 8
  %11 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %12 = call %struct.nf_conntrack_expect* @__nf_ct_expect_find(%struct.net* %9, %struct.nf_conntrack_zone* %10, %struct.nf_conntrack_tuple* %11)
  store %struct.nf_conntrack_expect* %12, %struct.nf_conntrack_expect** %7, align 8
  %13 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %7, align 8
  %14 = icmp ne %struct.nf_conntrack_expect* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %7, align 8
  %17 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %16, i32 0, i32 0
  %18 = call i32 @refcount_inc_not_zero(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.nf_conntrack_expect* null, %struct.nf_conntrack_expect** %7, align 8
  br label %21

21:                                               ; preds = %20, %15, %3
  %22 = call i32 (...) @rcu_read_unlock()
  %23 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %7, align 8
  ret %struct.nf_conntrack_expect* %23
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_conntrack_expect* @__nf_ct_expect_find(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
