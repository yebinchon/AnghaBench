; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_copy_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_copy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.file_lock*, %struct.file_lock*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locks_copy_lock(%struct.file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %5 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %6 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = call i32 @WARN_ON_ONCE(%struct.TYPE_2__* %7)
  %9 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %10 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %11 = call i32 @locks_copy_conflock(%struct.file_lock* %9, %struct.file_lock* %10)
  %12 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %13 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %16 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %18 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %20, i32 0, i32 0
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %21, align 8
  %22 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %23 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %28 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.file_lock*, %struct.file_lock*)*, i32 (%struct.file_lock*, %struct.file_lock*)** %30, align 8
  %32 = icmp ne i32 (%struct.file_lock*, %struct.file_lock*)* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.file_lock*, %struct.file_lock*)*, i32 (%struct.file_lock*, %struct.file_lock*)** %37, align 8
  %39 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %40 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %41 = call i32 %38(%struct.file_lock* %39, %struct.file_lock* %40)
  br label %42

42:                                               ; preds = %33, %26
  br label %43

43:                                               ; preds = %42, %2
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(%struct.TYPE_2__*) #1

declare dso_local i32 @locks_copy_conflock(%struct.file_lock*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
