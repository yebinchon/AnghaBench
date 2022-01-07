; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_sk_policy_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_sk_policy_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32* }
%struct.xfrm_policy = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@XFRM_POLICY_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XFRM_POLICY_TYPE_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_sk_policy_insert(%struct.sock* %0, i32 %1, %struct.xfrm_policy* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.xfrm_policy*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.xfrm_policy* %2, %struct.xfrm_policy** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.net* @sock_net(%struct.sock* %9)
  store %struct.net* %10, %struct.net** %7, align 8
  %11 = load %struct.net*, %struct.net** %7, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net*, %struct.net** %7, align 8
  %23 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @lockdep_is_held(i32* %24)
  %26 = call %struct.xfrm_policy* @rcu_dereference_protected(i32 %21, i32 %25)
  store %struct.xfrm_policy* %26, %struct.xfrm_policy** %8, align 8
  %27 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %28 = icmp ne %struct.xfrm_policy* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %3
  %30 = call i32 (...) @ktime_get_real_seconds()
  %31 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %32 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.net*, %struct.net** %7, align 8
  %35 = load i64, i64* @XFRM_POLICY_MAX, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i32 @xfrm_gen_index(%struct.net* %34, i64 %38, i32 0)
  %40 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %41 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @xfrm_sk_policy_link(%struct.xfrm_policy* %42, i32 %43)
  br label %45

45:                                               ; preds = %29, %3
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %54 = call i32 @rcu_assign_pointer(i32 %52, %struct.xfrm_policy* %53)
  %55 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %56 = icmp ne %struct.xfrm_policy* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %45
  %58 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %59 = icmp ne %struct.xfrm_policy* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %62 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %63 = call i32 @xfrm_policy_requeue(%struct.xfrm_policy* %61, %struct.xfrm_policy* %62)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @xfrm_sk_policy_unlink(%struct.xfrm_policy* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %45
  %69 = load %struct.net*, %struct.net** %7, align 8
  %70 = getelementptr inbounds %struct.net, %struct.net* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_bh(i32* %71)
  %73 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %74 = icmp ne %struct.xfrm_policy* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %77 = call i32 @xfrm_policy_kill(%struct.xfrm_policy* %76)
  br label %78

78:                                               ; preds = %75, %68
  ret i32 0
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.xfrm_policy* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @xfrm_gen_index(%struct.net*, i64, i32) #1

declare dso_local i32 @xfrm_sk_policy_link(%struct.xfrm_policy*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.xfrm_policy*) #1

declare dso_local i32 @xfrm_policy_requeue(%struct.xfrm_policy*, %struct.xfrm_policy*) #1

declare dso_local i32 @xfrm_sk_policy_unlink(%struct.xfrm_policy*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_policy_kill(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
