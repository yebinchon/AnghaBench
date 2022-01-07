; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_master_matches.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_master_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i64 }

@NF_CT_EXP_F_SKIP_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_expect*, %struct.nf_conntrack_expect*, i32)* @master_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @master_matches(%struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conntrack_expect*, align 8
  %6 = alloca %struct.nf_conntrack_expect*, align 8
  %7 = alloca i32, align 4
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %5, align 8
  store %struct.nf_conntrack_expect* %1, %struct.nf_conntrack_expect** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NF_CT_EXP_F_SKIP_MASTER, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %22

13:                                               ; preds = %3
  %14 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %5, align 8
  %15 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %6, align 8
  %18 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %13, %12
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
