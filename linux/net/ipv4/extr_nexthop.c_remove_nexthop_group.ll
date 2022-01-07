; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_remove_nexthop_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_remove_nexthop_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexthop = type { i32 }
%struct.nl_info = type { i32 }
%struct.nh_group = type { i32, %struct.nh_grp_entry* }
%struct.nh_grp_entry = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nexthop*, %struct.nl_info*)* @remove_nexthop_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_nexthop_group(%struct.nexthop* %0, %struct.nl_info* %1) #0 {
  %3 = alloca %struct.nexthop*, align 8
  %4 = alloca %struct.nl_info*, align 8
  %5 = alloca %struct.nh_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nh_grp_entry*, align 8
  store %struct.nexthop* %0, %struct.nexthop** %3, align 8
  store %struct.nl_info* %1, %struct.nl_info** %4, align 8
  %9 = load %struct.nexthop*, %struct.nexthop** %3, align 8
  %10 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nh_group* @rcu_dereference_rtnl(i32 %11)
  store %struct.nh_group* %12, %struct.nh_group** %5, align 8
  %13 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %14 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %50, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %22 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %21, i32 0, i32 1
  %23 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %23, i64 %25
  store %struct.nh_grp_entry* %26, %struct.nh_grp_entry** %8, align 8
  %27 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %8, align 8
  %28 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  br label %50

36:                                               ; preds = %20
  %37 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %8, align 8
  %38 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %37, i32 0, i32 1
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %8, align 8
  %41 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @nexthop_put(i32* %42)
  %44 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %8, align 8
  %45 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %47 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %36, %35
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %16

53:                                               ; preds = %16
  ret void
}

declare dso_local %struct.nh_group* @rcu_dereference_rtnl(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @nexthop_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
