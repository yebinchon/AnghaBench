; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fcntl.c_fasync_remove_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fcntl.c_fasync_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.fasync_struct = type { i32, %struct.fasync_struct*, i32, %struct.file* }

@fasync_lock = common dso_local global i32 0, align 4
@fasync_free_rcu = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fasync_remove_entry(%struct.file* %0, %struct.fasync_struct** %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.fasync_struct**, align 8
  %5 = alloca %struct.fasync_struct*, align 8
  %6 = alloca %struct.fasync_struct**, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.fasync_struct** %1, %struct.fasync_struct*** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = call i32 @spin_lock(i32* @fasync_lock)
  %12 = load %struct.fasync_struct**, %struct.fasync_struct*** %4, align 8
  store %struct.fasync_struct** %12, %struct.fasync_struct*** %6, align 8
  br label %13

13:                                               ; preds = %47, %2
  %14 = load %struct.fasync_struct**, %struct.fasync_struct*** %6, align 8
  %15 = load %struct.fasync_struct*, %struct.fasync_struct** %14, align 8
  store %struct.fasync_struct* %15, %struct.fasync_struct** %5, align 8
  %16 = icmp ne %struct.fasync_struct* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %13
  %18 = load %struct.fasync_struct*, %struct.fasync_struct** %5, align 8
  %19 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %18, i32 0, i32 3
  %20 = load %struct.file*, %struct.file** %19, align 8
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = icmp ne %struct.file* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %47

24:                                               ; preds = %17
  %25 = load %struct.fasync_struct*, %struct.fasync_struct** %5, align 8
  %26 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %25, i32 0, i32 2
  %27 = call i32 @write_lock_irq(i32* %26)
  %28 = load %struct.fasync_struct*, %struct.fasync_struct** %5, align 8
  %29 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %28, i32 0, i32 3
  store %struct.file* null, %struct.file** %29, align 8
  %30 = load %struct.fasync_struct*, %struct.fasync_struct** %5, align 8
  %31 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %30, i32 0, i32 2
  %32 = call i32 @write_unlock_irq(i32* %31)
  %33 = load %struct.fasync_struct*, %struct.fasync_struct** %5, align 8
  %34 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %33, i32 0, i32 1
  %35 = load %struct.fasync_struct*, %struct.fasync_struct** %34, align 8
  %36 = load %struct.fasync_struct**, %struct.fasync_struct*** %6, align 8
  store %struct.fasync_struct* %35, %struct.fasync_struct** %36, align 8
  %37 = load %struct.fasync_struct*, %struct.fasync_struct** %5, align 8
  %38 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %37, i32 0, i32 0
  %39 = load i32, i32* @fasync_free_rcu, align 4
  %40 = call i32 @call_rcu(i32* %38, i32 %39)
  %41 = load i32, i32* @FASYNC, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.file*, %struct.file** %3, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  store i32 1, i32* %7, align 4
  br label %50

47:                                               ; preds = %23
  %48 = load %struct.fasync_struct*, %struct.fasync_struct** %5, align 8
  %49 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %48, i32 0, i32 1
  store %struct.fasync_struct** %49, %struct.fasync_struct*** %6, align 8
  br label %13

50:                                               ; preds = %24, %13
  %51 = call i32 @spin_unlock(i32* @fasync_lock)
  %52 = load %struct.file*, %struct.file** %3, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
