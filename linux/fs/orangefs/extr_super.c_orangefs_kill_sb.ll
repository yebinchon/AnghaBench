; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_kill_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@GOSSIP_SUPER_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"orangefs_kill_sb: called\0A\00", align 1
@orangefs_request_mutex = common dso_local global i32 0, align 4
@orangefs_superblocks_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @orangefs_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load i32, i32* @GOSSIP_SUPER_DEBUG, align 4
  %5 = call i32 @gossip_debug(i32 %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = call i32 @kill_anon_super(%struct.super_block* %6)
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = call %struct.TYPE_4__* @ORANGEFS_SB(%struct.super_block* %8)
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = call i32 @mutex_lock(i32* @orangefs_request_mutex)
  %13 = call i32 @mutex_unlock(i32* @orangefs_request_mutex)
  br label %57

14:                                               ; preds = %1
  %15 = load %struct.super_block*, %struct.super_block** %2, align 8
  %16 = call %struct.TYPE_4__* @ORANGEFS_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.super_block*, %struct.super_block** %2, align 8
  %20 = call %struct.TYPE_4__* @ORANGEFS_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.super_block*, %struct.super_block** %2, align 8
  %24 = call %struct.TYPE_4__* @ORANGEFS_SB(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @orangefs_unmount(i32 %18, i32 %22, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %14
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = call %struct.TYPE_4__* @ORANGEFS_SB(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %14
  %35 = load %struct.super_block*, %struct.super_block** %2, align 8
  %36 = call %struct.TYPE_4__* @ORANGEFS_SB(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %34
  %41 = call i32 @spin_lock(i32* @orangefs_superblocks_lock)
  %42 = load %struct.super_block*, %struct.super_block** %2, align 8
  %43 = call %struct.TYPE_4__* @ORANGEFS_SB(%struct.super_block* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = call i32 @__list_del_entry(%struct.TYPE_5__* %44)
  %46 = load %struct.super_block*, %struct.super_block** %2, align 8
  %47 = call %struct.TYPE_4__* @ORANGEFS_SB(%struct.super_block* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = call i32 @spin_unlock(i32* @orangefs_superblocks_lock)
  br label %51

51:                                               ; preds = %40, %34
  %52 = call i32 @mutex_lock(i32* @orangefs_request_mutex)
  %53 = call i32 @mutex_unlock(i32* @orangefs_request_mutex)
  %54 = load %struct.super_block*, %struct.super_block** %2, align 8
  %55 = call %struct.TYPE_4__* @ORANGEFS_SB(%struct.super_block* %54)
  %56 = call i32 @kfree(%struct.TYPE_4__* %55)
  br label %57

57:                                               ; preds = %51, %11
  ret void
}

declare dso_local i32 @gossip_debug(i32, i8*) #1

declare dso_local i32 @kill_anon_super(%struct.super_block*) #1

declare dso_local %struct.TYPE_4__* @ORANGEFS_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @orangefs_unmount(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__list_del_entry(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
