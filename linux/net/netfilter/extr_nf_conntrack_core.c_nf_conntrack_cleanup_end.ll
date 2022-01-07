; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_cleanup_end.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_cleanup_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@nf_ct_hook = common dso_local global i32 0, align 4
@conntrack_gc_work = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@nf_conntrack_hash = common dso_local global i32 0, align 4
@nf_conntrack_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_conntrack_cleanup_end() #0 {
  %1 = load i32, i32* @nf_ct_hook, align 4
  %2 = call i32 @RCU_INIT_POINTER(i32 %1, i32* null)
  %3 = call i32 @cancel_delayed_work_sync(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conntrack_gc_work, i32 0, i32 0))
  %4 = load i32, i32* @nf_conntrack_hash, align 4
  %5 = call i32 @kvfree(i32 %4)
  %6 = call i32 (...) @nf_conntrack_proto_fini()
  %7 = call i32 (...) @nf_conntrack_seqadj_fini()
  %8 = call i32 (...) @nf_conntrack_labels_fini()
  %9 = call i32 (...) @nf_conntrack_helper_fini()
  %10 = call i32 (...) @nf_conntrack_timeout_fini()
  %11 = call i32 (...) @nf_conntrack_ecache_fini()
  %12 = call i32 (...) @nf_conntrack_tstamp_fini()
  %13 = call i32 (...) @nf_conntrack_acct_fini()
  %14 = call i32 (...) @nf_conntrack_expect_fini()
  %15 = load i32, i32* @nf_conntrack_cachep, align 4
  %16 = call i32 @kmem_cache_destroy(i32 %15)
  ret void
}

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @nf_conntrack_proto_fini(...) #1

declare dso_local i32 @nf_conntrack_seqadj_fini(...) #1

declare dso_local i32 @nf_conntrack_labels_fini(...) #1

declare dso_local i32 @nf_conntrack_helper_fini(...) #1

declare dso_local i32 @nf_conntrack_timeout_fini(...) #1

declare dso_local i32 @nf_conntrack_ecache_fini(...) #1

declare dso_local i32 @nf_conntrack_tstamp_fini(...) #1

declare dso_local i32 @nf_conntrack_acct_fini(...) #1

declare dso_local i32 @nf_conntrack_expect_fini(...) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
