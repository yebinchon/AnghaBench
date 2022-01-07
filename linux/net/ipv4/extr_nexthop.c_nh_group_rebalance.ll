; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_group_rebalance.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_group_rebalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nh_group = type { i32, %struct.nh_grp_entry* }
%struct.nh_grp_entry = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nh_group*)* @nh_group_rebalance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nh_group_rebalance(%struct.nh_group* %0) #0 {
  %2 = alloca %struct.nh_group*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nh_grp_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.nh_group* %0, %struct.nh_group** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.nh_group*, %struct.nh_group** %2, align 8
  %11 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load %struct.nh_group*, %struct.nh_group** %2, align 8
  %16 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %15, i32 0, i32 1
  %17 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %17, i64 %19
  %21 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %8

30:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %60, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.nh_group*, %struct.nh_group** %2, align 8
  %34 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = load %struct.nh_group*, %struct.nh_group** %2, align 8
  %39 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %38, i32 0, i32 1
  %40 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %40, i64 %42
  store %struct.nh_grp_entry* %43, %struct.nh_grp_entry** %6, align 8
  %44 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %6, align 8
  %45 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 %51, 31
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %52, i32 %53)
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %6, align 8
  %57 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @atomic_set(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %37
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %31

63:                                               ; preds = %31
  ret void
}

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
