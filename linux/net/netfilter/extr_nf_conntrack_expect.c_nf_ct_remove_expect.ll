; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_remove_expect.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_remove_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_remove_expect(%struct.nf_conntrack_expect* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nf_conntrack_expect*, align 8
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %3, align 8
  %4 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %5 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %4, i32 0, i32 0
  %6 = call i64 @del_timer(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %10 = call i32 @nf_ct_unlink_expect(%struct.nf_conntrack_expect* %9)
  %11 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %12 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %11)
  store i32 1, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @nf_ct_unlink_expect(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
