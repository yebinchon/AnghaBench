; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_acct.c_nfnl_acct_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_acct.c_nfnl_acct_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_acct = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfnl_acct_update(%struct.sk_buff* %0, %struct.nf_acct* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nf_acct*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nf_acct* %1, %struct.nf_acct** %4, align 8
  %5 = load %struct.nf_acct*, %struct.nf_acct** %4, align 8
  %6 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %5, i32 0, i32 1
  %7 = call i32 @atomic64_inc(i32* %6)
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.nf_acct*, %struct.nf_acct** %4, align 8
  %12 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %11, i32 0, i32 0
  %13 = call i32 @atomic64_add(i32 %10, i32* %12)
  ret void
}

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
