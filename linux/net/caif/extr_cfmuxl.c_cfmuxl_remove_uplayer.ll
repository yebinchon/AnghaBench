; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfmuxl.c_cfmuxl_remove_uplayer.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfmuxl.c_cfmuxl_remove_uplayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { i32 }
%struct.cfmuxl = type { i32, i32*, i32 }

@UP_CACHE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Trying to remove control layer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cflayer* @cfmuxl_remove_uplayer(%struct.cflayer* %0, i32 %1) #0 {
  %3 = alloca %struct.cflayer*, align 8
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cflayer*, align 8
  %7 = alloca %struct.cfmuxl*, align 8
  %8 = alloca i32, align 4
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %10 = call %struct.cfmuxl* @container_obj(%struct.cflayer* %9)
  store %struct.cfmuxl* %10, %struct.cfmuxl** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @UP_CACHE_SIZE, align 4
  %13 = srem i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.cflayer* null, %struct.cflayer** %3, align 8
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.cfmuxl*, %struct.cfmuxl** %7, align 8
  %20 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.cfmuxl*, %struct.cfmuxl** %7, align 8
  %23 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %22, i32 0, i32 2
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.cflayer* @get_from_id(i32* %23, i32 %24)
  store %struct.cflayer* %25, %struct.cflayer** %6, align 8
  %26 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %27 = icmp eq %struct.cflayer* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %41

29:                                               ; preds = %18
  %30 = load %struct.cfmuxl*, %struct.cfmuxl** %7, align 8
  %31 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @RCU_INIT_POINTER(i32 %36, i32* null)
  %38 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %39 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %38, i32 0, i32 0
  %40 = call i32 @list_del_rcu(i32* %39)
  br label %41

41:                                               ; preds = %29, %28
  %42 = load %struct.cfmuxl*, %struct.cfmuxl** %7, align 8
  %43 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_bh(i32* %43)
  %45 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  store %struct.cflayer* %45, %struct.cflayer** %3, align 8
  br label %46

46:                                               ; preds = %41, %16
  %47 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  ret %struct.cflayer* %47
}

declare dso_local %struct.cfmuxl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.cflayer* @get_from_id(i32*, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
