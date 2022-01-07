; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_inexact_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_inexact_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.xfrm_pol_inexact_bin = type { i32 }
%struct.hlist_head = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hlist_head*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_policy* (%struct.xfrm_policy*, i64, i32)* @xfrm_policy_inexact_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_policy* @xfrm_policy_inexact_insert(%struct.xfrm_policy* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.xfrm_policy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_pol_inexact_bin*, align 8
  %9 = alloca %struct.xfrm_policy*, align 8
  %10 = alloca %struct.hlist_head*, align 8
  %11 = alloca %struct.net*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.xfrm_pol_inexact_bin* @xfrm_policy_inexact_alloc_bin(%struct.xfrm_policy* %12, i64 %13)
  store %struct.xfrm_pol_inexact_bin* %14, %struct.xfrm_pol_inexact_bin** %8, align 8
  %15 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %8, align 8
  %16 = icmp ne %struct.xfrm_pol_inexact_bin* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.xfrm_policy* @ERR_PTR(i32 %19)
  store %struct.xfrm_policy* %20, %struct.xfrm_policy** %4, align 8
  br label %73

21:                                               ; preds = %3
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %23 = call %struct.net* @xp_net(%struct.xfrm_policy* %22)
  store %struct.net* %23, %struct.net** %11, align 8
  %24 = load %struct.net*, %struct.net** %11, align 8
  %25 = getelementptr inbounds %struct.net, %struct.net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @lockdep_assert_held(i32* %26)
  %28 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %8, align 8
  %29 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.hlist_head* @xfrm_policy_inexact_alloc_chain(%struct.xfrm_pol_inexact_bin* %28, %struct.xfrm_policy* %29, i64 %30)
  store %struct.hlist_head* %31, %struct.hlist_head** %10, align 8
  %32 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %33 = icmp ne %struct.hlist_head* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %21
  %35 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %8, align 8
  %36 = call i32 @__xfrm_policy_inexact_prune_bin(%struct.xfrm_pol_inexact_bin* %35, i32 0)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.xfrm_policy* @ERR_PTR(i32 %38)
  store %struct.xfrm_policy* %39, %struct.xfrm_policy** %4, align 8
  br label %73

40:                                               ; preds = %21
  %41 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %42 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.xfrm_policy* @xfrm_policy_insert_list(%struct.hlist_head* %41, %struct.xfrm_policy* %42, i32 %43)
  store %struct.xfrm_policy* %44, %struct.xfrm_policy** %9, align 8
  %45 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %46 = icmp ne %struct.xfrm_policy* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %8, align 8
  %52 = call i32 @__xfrm_policy_inexact_prune_bin(%struct.xfrm_pol_inexact_bin* %51, i32 0)
  %53 = load i32, i32* @EEXIST, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.xfrm_policy* @ERR_PTR(i32 %54)
  store %struct.xfrm_policy* %55, %struct.xfrm_policy** %4, align 8
  br label %73

56:                                               ; preds = %47, %40
  %57 = load %struct.net*, %struct.net** %11, align 8
  %58 = getelementptr inbounds %struct.net, %struct.net* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.hlist_head*, %struct.hlist_head** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %60, i64 %61
  store %struct.hlist_head* %62, %struct.hlist_head** %10, align 8
  %63 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %64 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %65 = call i32 @xfrm_policy_insert_inexact_list(%struct.hlist_head* %63, %struct.xfrm_policy* %64)
  %66 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %67 = icmp ne %struct.xfrm_policy* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %8, align 8
  %70 = call i32 @__xfrm_policy_inexact_prune_bin(%struct.xfrm_pol_inexact_bin* %69, i32 0)
  br label %71

71:                                               ; preds = %68, %56
  %72 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  store %struct.xfrm_policy* %72, %struct.xfrm_policy** %4, align 8
  br label %73

73:                                               ; preds = %71, %50, %34, %17
  %74 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  ret %struct.xfrm_policy* %74
}

declare dso_local %struct.xfrm_pol_inexact_bin* @xfrm_policy_inexact_alloc_bin(%struct.xfrm_policy*, i64) #1

declare dso_local %struct.xfrm_policy* @ERR_PTR(i32) #1

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.hlist_head* @xfrm_policy_inexact_alloc_chain(%struct.xfrm_pol_inexact_bin*, %struct.xfrm_policy*, i64) #1

declare dso_local i32 @__xfrm_policy_inexact_prune_bin(%struct.xfrm_pol_inexact_bin*, i32) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_insert_list(%struct.hlist_head*, %struct.xfrm_policy*, i32) #1

declare dso_local i32 @xfrm_policy_insert_inexact_list(%struct.hlist_head*, %struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
