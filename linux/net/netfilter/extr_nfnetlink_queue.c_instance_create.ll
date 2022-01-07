; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_instance_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_instance_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfqnl_instance = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfnl_queue_net = type { i32, i32* }

@EEXIST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFQNL_QMAX_DEFAULT = common dso_local global i32 0, align 4
@NFQNL_MAX_COPY_RANGE = common dso_local global i32 0, align 4
@NFQNL_COPY_NONE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfqnl_instance* (%struct.nfnl_queue_net*, i32, i32)* @instance_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfqnl_instance* @instance_create(%struct.nfnl_queue_net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nfqnl_instance*, align 8
  %5 = alloca %struct.nfnl_queue_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfqnl_instance*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfnl_queue_net* %0, %struct.nfnl_queue_net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nfnl_queue_net*, %struct.nfnl_queue_net** %5, align 8
  %12 = getelementptr inbounds %struct.nfnl_queue_net, %struct.nfnl_queue_net* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.nfnl_queue_net*, %struct.nfnl_queue_net** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @instance_lookup(%struct.nfnl_queue_net* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EEXIST, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  br label %76

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.nfqnl_instance* @kzalloc(i32 32, i32 %22)
  store %struct.nfqnl_instance* %23, %struct.nfqnl_instance** %8, align 8
  %24 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %8, align 8
  %25 = icmp ne %struct.nfqnl_instance* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %76

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %8, align 8
  %32 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %8, align 8
  %35 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @NFQNL_QMAX_DEFAULT, align 4
  %37 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %8, align 8
  %38 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @NFQNL_MAX_COPY_RANGE, align 4
  %40 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %8, align 8
  %41 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @NFQNL_COPY_NONE, align 4
  %43 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %8, align 8
  %44 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %8, align 8
  %46 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %45, i32 0, i32 2
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %8, align 8
  %49 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %48, i32 0, i32 1
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load i32, i32* @THIS_MODULE, align 4
  %52 = call i32 @try_module_get(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %29
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %73

57:                                               ; preds = %29
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @instance_hashfn(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %8, align 8
  %61 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %60, i32 0, i32 0
  %62 = load %struct.nfnl_queue_net*, %struct.nfnl_queue_net** %5, align 8
  %63 = getelementptr inbounds %struct.nfnl_queue_net, %struct.nfnl_queue_net* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @hlist_add_head_rcu(i32* %61, i32* %67)
  %69 = load %struct.nfnl_queue_net*, %struct.nfnl_queue_net** %5, align 8
  %70 = getelementptr inbounds %struct.nfnl_queue_net, %struct.nfnl_queue_net* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %8, align 8
  store %struct.nfqnl_instance* %72, %struct.nfqnl_instance** %4, align 8
  br label %82

73:                                               ; preds = %54
  %74 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %8, align 8
  %75 = call i32 @kfree(%struct.nfqnl_instance* %74)
  br label %76

76:                                               ; preds = %73, %26, %18
  %77 = load %struct.nfnl_queue_net*, %struct.nfnl_queue_net** %5, align 8
  %78 = getelementptr inbounds %struct.nfnl_queue_net, %struct.nfnl_queue_net* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load i32, i32* %10, align 4
  %81 = call %struct.nfqnl_instance* @ERR_PTR(i32 %80)
  store %struct.nfqnl_instance* %81, %struct.nfqnl_instance** %4, align 8
  br label %82

82:                                               ; preds = %76, %57
  %83 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %4, align 8
  ret %struct.nfqnl_instance* %83
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @instance_lookup(%struct.nfnl_queue_net*, i32) #1

declare dso_local %struct.nfqnl_instance* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @instance_hashfn(i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.nfqnl_instance*) #1

declare dso_local %struct.nfqnl_instance* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
