; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_nf_ct_helper_expectfn_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_nf_ct_helper_expectfn_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_ct_helper_expectfn = type { i32 }

@nf_conntrack_expect_lock = common dso_local global i32 0, align 4
@nf_ct_helper_expectfn_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_helper_expectfn_register(%struct.nf_ct_helper_expectfn* %0) #0 {
  %2 = alloca %struct.nf_ct_helper_expectfn*, align 8
  store %struct.nf_ct_helper_expectfn* %0, %struct.nf_ct_helper_expectfn** %2, align 8
  %3 = call i32 @spin_lock_bh(i32* @nf_conntrack_expect_lock)
  %4 = load %struct.nf_ct_helper_expectfn*, %struct.nf_ct_helper_expectfn** %2, align 8
  %5 = getelementptr inbounds %struct.nf_ct_helper_expectfn, %struct.nf_ct_helper_expectfn* %4, i32 0, i32 0
  %6 = call i32 @list_add_rcu(i32* %5, i32* @nf_ct_helper_expectfn_list)
  %7 = call i32 @spin_unlock_bh(i32* @nf_conntrack_expect_lock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
