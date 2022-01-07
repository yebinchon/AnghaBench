; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot_map = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slot_map*, i32)* @put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put(%struct.slot_map* %0, i32 %1) #0 {
  %3 = alloca %struct.slot_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.slot_map* %0, %struct.slot_map** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %7 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %12 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @__clear_bit(i32 %10, i32 %13)
  %15 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %16 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %23 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %22, i32 0, i32 1
  %24 = call i32 @wake_up_locked(%struct.TYPE_3__* %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, -1
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %33 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %32, i32 0, i32 1
  %34 = call i32 @wake_up_all_locked(%struct.TYPE_3__* %33)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.slot_map*, %struct.slot_map** %3, align 8
  %37 = getelementptr inbounds %struct.slot_map, %struct.slot_map* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @wake_up_locked(%struct.TYPE_3__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wake_up_all_locked(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
