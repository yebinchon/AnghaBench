; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_orangefs_bufmap_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_orangefs_bufmap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_bufmap = type { %struct.orangefs_bufmap*, %struct.orangefs_bufmap*, %struct.orangefs_bufmap* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.orangefs_bufmap*)* @orangefs_bufmap_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orangefs_bufmap_free(%struct.orangefs_bufmap* %0) #0 {
  %2 = alloca %struct.orangefs_bufmap*, align 8
  store %struct.orangefs_bufmap* %0, %struct.orangefs_bufmap** %2, align 8
  %3 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %2, align 8
  %4 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %3, i32 0, i32 2
  %5 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %6 = call i32 @kfree(%struct.orangefs_bufmap* %5)
  %7 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %2, align 8
  %8 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %7, i32 0, i32 1
  %9 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %8, align 8
  %10 = call i32 @kfree(%struct.orangefs_bufmap* %9)
  %11 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %2, align 8
  %12 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %11, i32 0, i32 0
  %13 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %12, align 8
  %14 = call i32 @kfree(%struct.orangefs_bufmap* %13)
  %15 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %2, align 8
  %16 = call i32 @kfree(%struct.orangefs_bufmap* %15)
  ret void
}

declare dso_local i32 @kfree(%struct.orangefs_bufmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
