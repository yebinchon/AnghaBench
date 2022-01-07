; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zpool.c_zpool_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zpool.c_zpool_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpool_driver = type { i32, i32 }

@drivers_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_unregister_driver(%struct.zpool_driver* %0) #0 {
  %2 = alloca %struct.zpool_driver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.zpool_driver* %0, %struct.zpool_driver** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @spin_lock(i32* @drivers_lock)
  %6 = load %struct.zpool_driver*, %struct.zpool_driver** %2, align 8
  %7 = getelementptr inbounds %struct.zpool_driver, %struct.zpool_driver* %6, i32 0, i32 1
  %8 = call i32 @atomic_read(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.zpool_driver*, %struct.zpool_driver** %2, align 8
  %20 = getelementptr inbounds %struct.zpool_driver, %struct.zpool_driver* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  br label %22

22:                                               ; preds = %18, %15
  %23 = call i32 @spin_unlock(i32* @drivers_lock)
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
