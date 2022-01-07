; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_acct.c_nfnl_acct_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_acct.c_nfnl_acct_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_acct = type { i32 }

@rcu_head = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfnl_acct_put(%struct.nf_acct* %0) #0 {
  %2 = alloca %struct.nf_acct*, align 8
  store %struct.nf_acct* %0, %struct.nf_acct** %2, align 8
  %3 = load %struct.nf_acct*, %struct.nf_acct** %2, align 8
  %4 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %3, i32 0, i32 0
  %5 = call i64 @refcount_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.nf_acct*, %struct.nf_acct** %2, align 8
  %9 = load i32, i32* @rcu_head, align 4
  %10 = call i32 @kfree_rcu(%struct.nf_acct* %8, i32 %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @THIS_MODULE, align 4
  %13 = call i32 @module_put(i32 %12)
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.nf_acct*, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
