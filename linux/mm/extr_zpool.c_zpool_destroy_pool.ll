; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zpool.c_zpool_destroy_pool.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zpool.c_zpool_destroy_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpool = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32)*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"destroying pool type %s\0A\00", align 1
@pools_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zpool_destroy_pool(%struct.zpool* %0) #0 {
  %2 = alloca %struct.zpool*, align 8
  store %struct.zpool* %0, %struct.zpool** %2, align 8
  %3 = load %struct.zpool*, %struct.zpool** %2, align 8
  %4 = getelementptr inbounds %struct.zpool, %struct.zpool* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 @spin_lock(i32* @pools_lock)
  %10 = load %struct.zpool*, %struct.zpool** %2, align 8
  %11 = getelementptr inbounds %struct.zpool, %struct.zpool* %10, i32 0, i32 2
  %12 = call i32 @list_del(i32* %11)
  %13 = call i32 @spin_unlock(i32* @pools_lock)
  %14 = load %struct.zpool*, %struct.zpool** %2, align 8
  %15 = getelementptr inbounds %struct.zpool, %struct.zpool* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.zpool*, %struct.zpool** %2, align 8
  %20 = getelementptr inbounds %struct.zpool, %struct.zpool* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %18(i32 %21)
  %23 = load %struct.zpool*, %struct.zpool** %2, align 8
  %24 = getelementptr inbounds %struct.zpool, %struct.zpool* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @zpool_put_driver(%struct.TYPE_2__* %25)
  %27 = load %struct.zpool*, %struct.zpool** %2, align 8
  %28 = call i32 @kfree(%struct.zpool* %27)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @zpool_put_driver(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.zpool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
