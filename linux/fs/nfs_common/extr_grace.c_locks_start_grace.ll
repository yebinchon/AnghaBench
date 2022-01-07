; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs_common/extr_grace.c_locks_start_grace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs_common/extr_grace.c_locks_start_grace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lock_manager = type { i32 }
%struct.list_head = type { i32 }

@grace_net_id = common dso_local global i32 0, align 4
@grace_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"double list_add attempt detected in net %x %s\0A\00", align 1
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"(init_net)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locks_start_grace(%struct.net* %0, %struct.lock_manager* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.lock_manager*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.lock_manager* %1, %struct.lock_manager** %4, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = load i32, i32* @grace_net_id, align 4
  %8 = call %struct.list_head* @net_generic(%struct.net* %6, i32 %7)
  store %struct.list_head* %8, %struct.list_head** %5, align 8
  %9 = call i32 @spin_lock(i32* @grace_lock)
  %10 = load %struct.lock_manager*, %struct.lock_manager** %4, align 8
  %11 = getelementptr inbounds %struct.lock_manager, %struct.lock_manager* %10, i32 0, i32 0
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.lock_manager*, %struct.lock_manager** %4, align 8
  %16 = getelementptr inbounds %struct.lock_manager, %struct.lock_manager* %15, i32 0, i32 0
  %17 = load %struct.list_head*, %struct.list_head** %5, align 8
  %18 = call i32 @list_add(i32* %16, %struct.list_head* %17)
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.net*, %struct.net** %3, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.net*, %struct.net** %3, align 8
  %25 = icmp eq %struct.net* %24, @init_net
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %27)
  br label %29

29:                                               ; preds = %19, %14
  %30 = call i32 @spin_unlock(i32* @grace_lock)
  ret void
}

declare dso_local %struct.list_head* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
