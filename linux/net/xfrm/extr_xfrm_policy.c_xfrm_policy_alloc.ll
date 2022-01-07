; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }

@xfrm_policy_timer = common dso_local global i32 0, align 4
@xfrm_policy_queue_process = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_policy*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.xfrm_policy* @kzalloc(i32 40, i32 %6)
  store %struct.xfrm_policy* %7, %struct.xfrm_policy** %5, align 8
  %8 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %9 = icmp ne %struct.xfrm_policy* %8, null
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %12 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %11, i32 0, i32 8
  %13 = load %struct.net*, %struct.net** %3, align 8
  %14 = call i32 @write_pnet(i32* %12, %struct.net* %13)
  %15 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %16 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %20 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %19, i32 0, i32 6
  %21 = call i32 @INIT_HLIST_NODE(i32* %20)
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %23 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %22, i32 0, i32 5
  %24 = call i32 @INIT_HLIST_NODE(i32* %23)
  %25 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %26 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %25, i32 0, i32 4
  %27 = call i32 @INIT_HLIST_NODE(i32* %26)
  %28 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %29 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %28, i32 0, i32 3
  %30 = call i32 @rwlock_init(i32* %29)
  %31 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %32 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %31, i32 0, i32 2
  %33 = call i32 @refcount_set(i32* %32, i32 1)
  %34 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %35 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = call i32 @skb_queue_head_init(i32* %36)
  %38 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %39 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %38, i32 0, i32 1
  %40 = load i32, i32* @xfrm_policy_timer, align 4
  %41 = call i32 @timer_setup(i32* %39, i32 %40, i32 0)
  %42 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %43 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* @xfrm_policy_queue_process, align 4
  %46 = call i32 @timer_setup(i32* %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %10, %2
  %48 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  ret %struct.xfrm_policy* %48
}

declare dso_local %struct.xfrm_policy* @kzalloc(i32, i32) #1

declare dso_local i32 @write_pnet(i32*, %struct.net*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
