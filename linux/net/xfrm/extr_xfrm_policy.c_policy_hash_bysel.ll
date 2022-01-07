; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_policy_hash_bysel.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_policy_hash_bysel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xfrm_selector = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.net*, %struct.xfrm_selector*, i16, i32)* @policy_hash_bysel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @policy_hash_bysel(%struct.net* %0, %struct.xfrm_selector* %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.hlist_head*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.xfrm_selector*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.xfrm_selector* %1, %struct.xfrm_selector** %7, align 8
  store i16 %2, i16* %8, align 2
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net*, %struct.net** %6, align 8
  %15 = getelementptr inbounds %struct.net, %struct.net* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.net*, %struct.net** %6, align 8
  %24 = load i16, i16* %8, align 2
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @__get_hash_thresh(%struct.net* %23, i16 zeroext %24, i32 %25, i32* %12, i32* %13)
  %27 = load %struct.xfrm_selector*, %struct.xfrm_selector** %7, align 8
  %28 = load i16, i16* %8, align 2
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @__sel_hash(%struct.xfrm_selector* %27, i16 zeroext %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %34, 1
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store %struct.hlist_head* null, %struct.hlist_head** %5, align 8
  br label %56

38:                                               ; preds = %4
  %39 = load %struct.net*, %struct.net** %6, align 8
  %40 = getelementptr inbounds %struct.net, %struct.net* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.net*, %struct.net** %6, align 8
  %49 = getelementptr inbounds %struct.net, %struct.net* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @lockdep_is_held(i32* %50)
  %52 = call %struct.hlist_head* @rcu_dereference_check(i32 %47, i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %52, i64 %54
  store %struct.hlist_head* %55, %struct.hlist_head** %5, align 8
  br label %56

56:                                               ; preds = %38, %37
  %57 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  ret %struct.hlist_head* %57
}

declare dso_local i32 @__get_hash_thresh(%struct.net*, i16 zeroext, i32, i32*, i32*) #1

declare dso_local i32 @__sel_hash(%struct.xfrm_selector*, i16 zeroext, i32, i32, i32) #1

declare dso_local %struct.hlist_head* @rcu_dereference_check(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
