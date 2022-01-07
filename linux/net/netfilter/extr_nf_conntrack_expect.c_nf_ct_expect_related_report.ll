; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_expect_related_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_expect_related_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i32 }

@nf_conntrack_expect_lock = common dso_local global i32 0, align 4
@IPEXP_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_expect_related_report(%struct.nf_conntrack_expect* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conntrack_expect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 @spin_lock_bh(i32* @nf_conntrack_expect_lock)
  %12 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %6, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @__nf_ct_expect_check(%struct.nf_conntrack_expect* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %27

18:                                               ; preds = %4
  %19 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %6, align 8
  %20 = call i32 @nf_ct_expect_insert(%struct.nf_conntrack_expect* %19)
  %21 = call i32 @spin_unlock_bh(i32* @nf_conntrack_expect_lock)
  %22 = load i32, i32* @IPEXP_NEW, align 4
  %23 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @nf_ct_expect_event_report(i32 %22, %struct.nf_conntrack_expect* %23, i32 %24, i32 %25)
  store i32 0, i32* %5, align 4
  br label %30

27:                                               ; preds = %17
  %28 = call i32 @spin_unlock_bh(i32* @nf_conntrack_expect_lock)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %18
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__nf_ct_expect_check(%struct.nf_conntrack_expect*, i32) #1

declare dso_local i32 @nf_ct_expect_insert(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nf_ct_expect_event_report(i32, %struct.nf_conntrack_expect*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
