; ModuleID = '/home/carl/AnghaBench/linux/net/psample/extr_psample.c_psample_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/psample/extr_psample.c_psample_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psample_group = type { i32 }
%struct.net = type { i32 }

@psample_groups_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.psample_group* @psample_group_get(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.psample_group*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @spin_lock_bh(i32* @psample_groups_lock)
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.psample_group* @psample_group_lookup(%struct.net* %7, i32 %8)
  store %struct.psample_group* %9, %struct.psample_group** %5, align 8
  %10 = load %struct.psample_group*, %struct.psample_group** %5, align 8
  %11 = icmp ne %struct.psample_group* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.net*, %struct.net** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.psample_group* @psample_group_create(%struct.net* %13, i32 %14)
  store %struct.psample_group* %15, %struct.psample_group** %5, align 8
  %16 = load %struct.psample_group*, %struct.psample_group** %5, align 8
  %17 = icmp ne %struct.psample_group* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %25

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.psample_group*, %struct.psample_group** %5, align 8
  %22 = getelementptr inbounds %struct.psample_group, %struct.psample_group* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %20, %18
  %26 = call i32 @spin_unlock_bh(i32* @psample_groups_lock)
  %27 = load %struct.psample_group*, %struct.psample_group** %5, align 8
  ret %struct.psample_group* %27
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.psample_group* @psample_group_lookup(%struct.net*, i32) #1

declare dso_local %struct.psample_group* @psample_group_create(%struct.net*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
