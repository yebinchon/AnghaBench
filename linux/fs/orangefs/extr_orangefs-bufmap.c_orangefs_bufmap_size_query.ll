; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_orangefs_bufmap_size_query.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_orangefs_bufmap_size_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_bufmap = type { i32 }

@orangefs_bufmap_lock = common dso_local global i32 0, align 4
@__orangefs_bufmap = common dso_local global %struct.orangefs_bufmap* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orangefs_bufmap_size_query() #0 {
  %1 = alloca %struct.orangefs_bufmap*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @spin_lock(i32* @orangefs_bufmap_lock)
  %4 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** @__orangefs_bufmap, align 8
  store %struct.orangefs_bufmap* %4, %struct.orangefs_bufmap** %1, align 8
  %5 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %1, align 8
  %6 = icmp ne %struct.orangefs_bufmap* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %1, align 8
  %9 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %7, %0
  %12 = call i32 @spin_unlock(i32* @orangefs_bufmap_lock)
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
