; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c___xfrm_policy_inexact_prune_bin.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c___xfrm_policy_inexact_prune_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_pol_inexact_bin = type { i32, i32, i32, i32, i32, i32 }

@xfrm_policy_inexact_table = common dso_local global i32 0, align 4
@xfrm_pol_inexact_params = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_pol_inexact_bin*, i32)* @__xfrm_policy_inexact_prune_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfrm_policy_inexact_prune_bin(%struct.xfrm_pol_inexact_bin* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_pol_inexact_bin*, align 8
  %4 = alloca i32, align 4
  store %struct.xfrm_pol_inexact_bin* %0, %struct.xfrm_pol_inexact_bin** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %3, align 8
  %6 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %5, i32 0, i32 5
  %7 = call i32 @write_seqcount_begin(i32* %6)
  %8 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %3, align 8
  %9 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %8, i32 0, i32 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @xfrm_policy_inexact_gc_tree(i32* %9, i32 %10)
  %12 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %3, align 8
  %13 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %12, i32 0, i32 3
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @xfrm_policy_inexact_gc_tree(i32* %13, i32 %14)
  %16 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %3, align 8
  %17 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %16, i32 0, i32 5
  %18 = call i32 @write_seqcount_end(i32* %17)
  %19 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %3, align 8
  %20 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %19, i32 0, i32 4
  %21 = call i32 @RB_EMPTY_ROOT(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %3, align 8
  %25 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %24, i32 0, i32 3
  %26 = call i32 @RB_EMPTY_ROOT(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %3, align 8
  %30 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %29, i32 0, i32 2
  %31 = call i32 @hlist_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %23, %2
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @WARN_ON_ONCE(i32 %34)
  br label %49

36:                                               ; preds = %28
  %37 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %3, align 8
  %38 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %37, i32 0, i32 1
  %39 = load i32, i32* @xfrm_pol_inexact_params, align 4
  %40 = call i64 @rhashtable_remove_fast(i32* @xfrm_policy_inexact_table, i32* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %3, align 8
  %44 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %43, i32 0, i32 0
  %45 = call i32 @list_del(i32* %44)
  %46 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %3, align 8
  %47 = load i32, i32* @rcu, align 4
  %48 = call i32 @kfree_rcu(%struct.xfrm_pol_inexact_bin* %46, i32 %47)
  br label %49

49:                                               ; preds = %33, %42, %36
  ret void
}

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @xfrm_policy_inexact_gc_tree(i32*, i32) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.xfrm_pol_inexact_bin*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
