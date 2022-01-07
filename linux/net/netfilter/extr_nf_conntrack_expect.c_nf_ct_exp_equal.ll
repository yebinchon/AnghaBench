; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_exp_equal.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_exp_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_expect = type { i32, i32, i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple*, %struct.nf_conntrack_expect*, %struct.nf_conntrack_zone*, %struct.net*)* @nf_ct_exp_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_exp_equal(%struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_expect* %1, %struct.nf_conntrack_zone* %2, %struct.net* %3) #0 {
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  %6 = alloca %struct.nf_conntrack_expect*, align 8
  %7 = alloca %struct.nf_conntrack_zone*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %5, align 8
  store %struct.nf_conntrack_expect* %1, %struct.nf_conntrack_expect** %6, align 8
  store %struct.nf_conntrack_zone* %2, %struct.nf_conntrack_zone** %7, align 8
  store %struct.net* %3, %struct.net** %8, align 8
  %9 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %10 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %6, align 8
  %11 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %10, i32 0, i32 2
  %12 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %6, align 8
  %13 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %12, i32 0, i32 1
  %14 = call i64 @nf_ct_tuple_mask_cmp(%struct.nf_conntrack_tuple* %9, i32* %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %4
  %17 = load %struct.net*, %struct.net** %8, align 8
  %18 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %6, align 8
  %19 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nf_ct_net(i32 %20)
  %22 = call i64 @net_eq(%struct.net* %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %6, align 8
  %26 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %7, align 8
  %29 = call i64 @nf_ct_zone_equal_any(i32 %27, %struct.nf_conntrack_zone* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %24, %16, %4
  %32 = phi i1 [ false, %16 ], [ false, %4 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i64 @nf_ct_tuple_mask_cmp(%struct.nf_conntrack_tuple*, i32*, i32*) #1

declare dso_local i64 @net_eq(%struct.net*, i32) #1

declare dso_local i32 @nf_ct_net(i32) #1

declare dso_local i64 @nf_ct_zone_equal_any(i32, %struct.nf_conntrack_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
