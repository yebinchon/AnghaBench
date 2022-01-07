; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_acct.c_nfnl_acct_try_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_acct.c_nfnl_acct_try_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_acct = type { i32, i32 }

@rcu_head = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_acct*)* @nfnl_acct_try_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_acct_try_del(%struct.nf_acct* %0) #0 {
  %2 = alloca %struct.nf_acct*, align 8
  %3 = alloca i32, align 4
  store %struct.nf_acct* %0, %struct.nf_acct** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.nf_acct*, %struct.nf_acct** %2, align 8
  %5 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %4, i32 0, i32 1
  %6 = call i64 @refcount_dec_if_one(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.nf_acct*, %struct.nf_acct** %2, align 8
  %10 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %9, i32 0, i32 0
  %11 = call i32 @list_del_rcu(i32* %10)
  %12 = load %struct.nf_acct*, %struct.nf_acct** %2, align 8
  %13 = load i32, i32* @rcu_head, align 4
  %14 = call i32 @kfree_rcu(%struct.nf_acct* %12, i32 %13)
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %15, %8
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @refcount_dec_if_one(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.nf_acct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
