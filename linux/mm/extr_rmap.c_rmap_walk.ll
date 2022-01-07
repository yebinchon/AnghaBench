; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_rmap_walk.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_rmap_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.rmap_walk_control = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmap_walk(%struct.page* %0, %struct.rmap_walk_control* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.rmap_walk_control*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.rmap_walk_control* %1, %struct.rmap_walk_control** %4, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = call i32 @PageKsm(%struct.page* %5)
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = load %struct.rmap_walk_control*, %struct.rmap_walk_control** %4, align 8
  %12 = call i32 @rmap_walk_ksm(%struct.page* %10, %struct.rmap_walk_control* %11)
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i64 @PageAnon(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = load %struct.rmap_walk_control*, %struct.rmap_walk_control** %4, align 8
  %20 = call i32 @rmap_walk_anon(%struct.page* %18, %struct.rmap_walk_control* %19, i32 0)
  br label %25

21:                                               ; preds = %13
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = load %struct.rmap_walk_control*, %struct.rmap_walk_control** %4, align 8
  %24 = call i32 @rmap_walk_file(%struct.page* %22, %struct.rmap_walk_control* %23, i32 0)
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25, %9
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageKsm(%struct.page*) #1

declare dso_local i32 @rmap_walk_ksm(%struct.page*, %struct.rmap_walk_control*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @rmap_walk_anon(%struct.page*, %struct.rmap_walk_control*, i32) #1

declare dso_local i32 @rmap_walk_file(%struct.page*, %struct.rmap_walk_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
