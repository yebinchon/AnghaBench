; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_log.c_instance_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_log.c_instance_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfulnl_instance = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.user_namespace*, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.user_namespace = type { i32 }
%struct.nfnl_log_net = type { i32, i32* }

@EEXIST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@nfulnl_timer = common dso_local global i32 0, align 4
@NFULNL_QTHRESH_DEFAULT = common dso_local global i32 0, align 4
@NFULNL_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@NFULNL_NLBUFSIZ_DEFAULT = common dso_local global i32 0, align 4
@NFULNL_COPY_PACKET = common dso_local global i32 0, align 4
@NFULNL_COPY_RANGE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfulnl_instance* (%struct.net*, i32, i32, %struct.user_namespace*)* @instance_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfulnl_instance* @instance_create(%struct.net* %0, i32 %1, i32 %2, %struct.user_namespace* %3) #0 {
  %5 = alloca %struct.nfulnl_instance*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.user_namespace*, align 8
  %10 = alloca %struct.nfulnl_instance*, align 8
  %11 = alloca %struct.nfnl_log_net*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.user_namespace* %3, %struct.user_namespace** %9, align 8
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = call %struct.nfnl_log_net* @nfnl_log_pernet(%struct.net* %13)
  store %struct.nfnl_log_net* %14, %struct.nfnl_log_net** %11, align 8
  %15 = load %struct.nfnl_log_net*, %struct.nfnl_log_net** %11, align 8
  %16 = getelementptr inbounds %struct.nfnl_log_net, %struct.nfnl_log_net* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.nfnl_log_net*, %struct.nfnl_log_net** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @__instance_lookup(%struct.nfnl_log_net* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EEXIST, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %12, align 4
  br label %97

25:                                               ; preds = %4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.nfulnl_instance* @kzalloc(i32 56, i32 %26)
  store %struct.nfulnl_instance* %27, %struct.nfulnl_instance** %10, align 8
  %28 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %29 = icmp ne %struct.nfulnl_instance* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  br label %97

33:                                               ; preds = %25
  %34 = load i32, i32* @THIS_MODULE, align 4
  %35 = call i32 @try_module_get(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %39 = call i32 @kfree(%struct.nfulnl_instance* %38)
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %12, align 4
  br label %97

42:                                               ; preds = %33
  %43 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %44 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %43, i32 0, i32 0
  %45 = call i32 @INIT_HLIST_NODE(i32* %44)
  %46 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %47 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %46, i32 0, i32 12
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %50 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %49, i32 0, i32 11
  %51 = call i32 @refcount_set(i32* %50, i32 2)
  %52 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %53 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %52, i32 0, i32 10
  %54 = load i32, i32* @nfulnl_timer, align 4
  %55 = call i32 @timer_setup(i32* %53, i32 %54, i32 0)
  %56 = load %struct.net*, %struct.net** %6, align 8
  %57 = call i32 @get_net(%struct.net* %56)
  %58 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %59 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 8
  %60 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %61 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %62 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %61, i32 0, i32 8
  store %struct.user_namespace* %60, %struct.user_namespace** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %65 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %68 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @NFULNL_QTHRESH_DEFAULT, align 4
  %70 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %71 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @NFULNL_TIMEOUT_DEFAULT, align 4
  %73 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %74 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @NFULNL_NLBUFSIZ_DEFAULT, align 4
  %76 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %77 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @NFULNL_COPY_PACKET, align 4
  %79 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %80 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @NFULNL_COPY_RANGE_MAX, align 4
  %82 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %83 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  %85 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %84, i32 0, i32 0
  %86 = load %struct.nfnl_log_net*, %struct.nfnl_log_net** %11, align 8
  %87 = getelementptr inbounds %struct.nfnl_log_net, %struct.nfnl_log_net* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @instance_hashfn(i32 %89)
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @hlist_add_head_rcu(i32* %85, i32* %91)
  %93 = load %struct.nfnl_log_net*, %struct.nfnl_log_net** %11, align 8
  %94 = getelementptr inbounds %struct.nfnl_log_net, %struct.nfnl_log_net* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock_bh(i32* %94)
  %96 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %10, align 8
  store %struct.nfulnl_instance* %96, %struct.nfulnl_instance** %5, align 8
  br label %103

97:                                               ; preds = %37, %30, %22
  %98 = load %struct.nfnl_log_net*, %struct.nfnl_log_net** %11, align 8
  %99 = getelementptr inbounds %struct.nfnl_log_net, %struct.nfnl_log_net* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock_bh(i32* %99)
  %101 = load i32, i32* %12, align 4
  %102 = call %struct.nfulnl_instance* @ERR_PTR(i32 %101)
  store %struct.nfulnl_instance* %102, %struct.nfulnl_instance** %5, align 8
  br label %103

103:                                              ; preds = %97, %42
  %104 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %5, align 8
  ret %struct.nfulnl_instance* %104
}

declare dso_local %struct.nfnl_log_net* @nfnl_log_pernet(%struct.net*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @__instance_lookup(%struct.nfnl_log_net*, i32) #1

declare dso_local %struct.nfulnl_instance* @kzalloc(i32, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @kfree(%struct.nfulnl_instance*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @get_net(%struct.net*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i64 @instance_hashfn(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.nfulnl_instance* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
