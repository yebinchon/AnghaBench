; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_gc_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_gc_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*)* @nf_ct_gc_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_ct_gc_expired(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %3 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %4 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i32 @atomic_inc_not_zero(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %11 = call i64 @nf_ct_should_gc(%struct.nf_conn* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %15 = call i32 @nf_ct_kill(%struct.nf_conn* %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %18 = call i32 @nf_ct_put(%struct.nf_conn* %17)
  br label %19

19:                                               ; preds = %16, %8
  ret void
}

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i64 @nf_ct_should_gc(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_kill(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
