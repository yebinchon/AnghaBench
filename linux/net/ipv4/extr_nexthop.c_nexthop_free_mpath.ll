; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_free_mpath.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_free_mpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexthop = type { i32 }
%struct.nh_group = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nexthop*)* @nexthop_free_mpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nexthop_free_mpath(%struct.nexthop* %0) #0 {
  %2 = alloca %struct.nexthop*, align 8
  %3 = alloca %struct.nh_group*, align 8
  %4 = alloca i32, align 4
  store %struct.nexthop* %0, %struct.nexthop** %2, align 8
  %5 = load %struct.nexthop*, %struct.nexthop** %2, align 8
  %6 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.nh_group* @rcu_dereference_raw(i32 %7)
  store %struct.nh_group* %8, %struct.nh_group** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.nh_group*, %struct.nh_group** %3, align 8
  %12 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.nh_group*, %struct.nh_group** %3, align 8
  %17 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @WARN_ON(i32 %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load %struct.nh_group*, %struct.nh_group** %3, align 8
  %30 = call i32 @kfree(%struct.nh_group* %29)
  ret void
}

declare dso_local %struct.nh_group* @rcu_dereference_raw(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.nh_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
