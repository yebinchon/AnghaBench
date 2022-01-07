; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfmuxl.c_cfmuxl_remove_dnlayer.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfmuxl.c_cfmuxl_remove_dnlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { i32 }
%struct.cfmuxl = type { i32, i32, i32* }

@DN_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cflayer* @cfmuxl_remove_dnlayer(%struct.cflayer* %0, i32 %1) #0 {
  %3 = alloca %struct.cflayer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfmuxl*, align 8
  %6 = alloca %struct.cflayer*, align 8
  %7 = alloca i32, align 4
  store %struct.cflayer* %0, %struct.cflayer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %9 = call %struct.cfmuxl* @container_obj(%struct.cflayer* %8)
  store %struct.cfmuxl* %9, %struct.cfmuxl** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DN_CACHE_SIZE, align 4
  %12 = srem i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.cfmuxl*, %struct.cfmuxl** %5, align 8
  %14 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.cfmuxl*, %struct.cfmuxl** %5, align 8
  %17 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @RCU_INIT_POINTER(i32 %22, i32* null)
  %24 = load %struct.cfmuxl*, %struct.cfmuxl** %5, align 8
  %25 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %24, i32 0, i32 1
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.cflayer* @get_from_id(i32* %25, i32 %26)
  store %struct.cflayer* %27, %struct.cflayer** %6, align 8
  %28 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %29 = icmp eq %struct.cflayer* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %33 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %32, i32 0, i32 0
  %34 = call i32 @list_del_rcu(i32* %33)
  %35 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %36 = icmp ne %struct.cflayer* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @caif_assert(i32 %37)
  br label %39

39:                                               ; preds = %31, %30
  %40 = load %struct.cfmuxl*, %struct.cfmuxl** %5, align 8
  %41 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  %43 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  ret %struct.cflayer* %43
}

declare dso_local %struct.cfmuxl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local %struct.cflayer* @get_from_id(i32*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @caif_assert(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
