; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_nf_conntrack_helper_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_nf_conntrack_helper_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_helper = type { i32 }

@nf_ct_helper_mutex = common dso_local global i32 0, align 4
@nf_ct_helper_count = common dso_local global i32 0, align 4
@expect_iter_me = common dso_local global i32 0, align 4
@unhelp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_conntrack_helper_unregister(%struct.nf_conntrack_helper* %0) #0 {
  %2 = alloca %struct.nf_conntrack_helper*, align 8
  store %struct.nf_conntrack_helper* %0, %struct.nf_conntrack_helper** %2, align 8
  %3 = call i32 @mutex_lock(i32* @nf_ct_helper_mutex)
  %4 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %2, align 8
  %5 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %4, i32 0, i32 0
  %6 = call i32 @hlist_del_rcu(i32* %5)
  %7 = load i32, i32* @nf_ct_helper_count, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* @nf_ct_helper_count, align 4
  %9 = call i32 @mutex_unlock(i32* @nf_ct_helper_mutex)
  %10 = call i32 (...) @synchronize_rcu()
  %11 = load i32, i32* @expect_iter_me, align 4
  %12 = call i32 @nf_ct_expect_iterate_destroy(i32 %11, i32* null)
  %13 = load i32, i32* @unhelp, align 4
  %14 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %2, align 8
  %15 = call i32 @nf_ct_iterate_destroy(i32 %13, %struct.nf_conntrack_helper* %14)
  %16 = call i32 (...) @synchronize_rcu()
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @nf_ct_expect_iterate_destroy(i32, i32*) #1

declare dso_local i32 @nf_ct_iterate_destroy(i32, %struct.nf_conntrack_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
