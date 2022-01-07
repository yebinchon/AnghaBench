; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_expect_matches.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_expect_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_expect*, %struct.nf_conntrack_expect*)* @expect_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expect_matches(%struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect* %1) #0 {
  %3 = alloca %struct.nf_conntrack_expect*, align 8
  %4 = alloca %struct.nf_conntrack_expect*, align 8
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %3, align 8
  store %struct.nf_conntrack_expect* %1, %struct.nf_conntrack_expect** %4, align 8
  %5 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %6 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %5, i32 0, i32 2
  %7 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %8 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %7, i32 0, i32 2
  %9 = call i64 @nf_ct_tuple_equal(i32* %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %13 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %12, i32 0, i32 1
  %14 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %15 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %14, i32 0, i32 1
  %16 = call i64 @nf_ct_tuple_mask_equal(i32* %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %11
  %19 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %20 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nf_ct_net(i32 %21)
  %23 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %24 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nf_ct_net(i32 %25)
  %27 = call i64 @net_eq(i32 %22, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %18
  %30 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %31 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %34 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nf_ct_zone(i32 %35)
  %37 = call i64 @nf_ct_zone_equal_any(i32 %32, i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %29, %18, %11, %2
  %40 = phi i1 [ false, %18 ], [ false, %11 ], [ false, %2 ], [ %38, %29 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i64 @nf_ct_tuple_equal(i32*, i32*) #1

declare dso_local i64 @nf_ct_tuple_mask_equal(i32*, i32*) #1

declare dso_local i64 @net_eq(i32, i32) #1

declare dso_local i32 @nf_ct_net(i32) #1

declare dso_local i64 @nf_ct_zone_equal_any(i32, i32) #1

declare dso_local i32 @nf_ct_zone(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
