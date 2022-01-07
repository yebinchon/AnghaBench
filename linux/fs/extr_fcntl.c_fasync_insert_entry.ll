; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fcntl.c_fasync_insert_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fcntl.c_fasync_insert_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.fasync_struct = type { i32, %struct.fasync_struct*, %struct.file*, i32, i32 }

@fasync_lock = common dso_local global i32 0, align 4
@FASYNC_MAGIC = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fasync_struct* @fasync_insert_entry(i32 %0, %struct.file* %1, %struct.fasync_struct** %2, %struct.fasync_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.fasync_struct**, align 8
  %8 = alloca %struct.fasync_struct*, align 8
  %9 = alloca %struct.fasync_struct*, align 8
  %10 = alloca %struct.fasync_struct**, align 8
  store i32 %0, i32* %5, align 4
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.fasync_struct** %2, %struct.fasync_struct*** %7, align 8
  store %struct.fasync_struct* %3, %struct.fasync_struct** %8, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = call i32 @spin_lock(i32* @fasync_lock)
  %15 = load %struct.fasync_struct**, %struct.fasync_struct*** %7, align 8
  store %struct.fasync_struct** %15, %struct.fasync_struct*** %10, align 8
  br label %16

16:                                               ; preds = %37, %4
  %17 = load %struct.fasync_struct**, %struct.fasync_struct*** %10, align 8
  %18 = load %struct.fasync_struct*, %struct.fasync_struct** %17, align 8
  store %struct.fasync_struct* %18, %struct.fasync_struct** %9, align 8
  %19 = icmp ne %struct.fasync_struct* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %22 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %21, i32 0, i32 2
  %23 = load %struct.file*, %struct.file** %22, align 8
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = icmp ne %struct.file* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %37

27:                                               ; preds = %20
  %28 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %29 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %28, i32 0, i32 4
  %30 = call i32 @write_lock_irq(i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %33 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %35 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %34, i32 0, i32 4
  %36 = call i32 @write_unlock_irq(i32* %35)
  br label %66

37:                                               ; preds = %26
  %38 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %39 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %38, i32 0, i32 1
  store %struct.fasync_struct** %39, %struct.fasync_struct*** %10, align 8
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %42 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %41, i32 0, i32 4
  %43 = call i32 @rwlock_init(i32* %42)
  %44 = load i32, i32* @FASYNC_MAGIC, align 4
  %45 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %46 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.file*, %struct.file** %6, align 8
  %48 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %49 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %48, i32 0, i32 2
  store %struct.file* %47, %struct.file** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %52 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.fasync_struct**, %struct.fasync_struct*** %7, align 8
  %54 = load %struct.fasync_struct*, %struct.fasync_struct** %53, align 8
  %55 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %56 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %55, i32 0, i32 1
  store %struct.fasync_struct* %54, %struct.fasync_struct** %56, align 8
  %57 = load %struct.fasync_struct**, %struct.fasync_struct*** %7, align 8
  %58 = load %struct.fasync_struct*, %struct.fasync_struct** %57, align 8
  %59 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %60 = call i32 @rcu_assign_pointer(%struct.fasync_struct* %58, %struct.fasync_struct* %59)
  %61 = load i32, i32* @FASYNC, align 4
  %62 = load %struct.file*, %struct.file** %6, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %40, %27
  %67 = call i32 @spin_unlock(i32* @fasync_lock)
  %68 = load %struct.file*, %struct.file** %6, align 8
  %69 = getelementptr inbounds %struct.file, %struct.file* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  ret %struct.fasync_struct* %71
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.fasync_struct*, %struct.fasync_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
