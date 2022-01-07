; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_flock_make_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_flock_make_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.file_lock = type { i32, i32, i32, i32, %struct.file*, %struct.file* }

@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@FL_FLOCK = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_lock* (%struct.file*, i32, %struct.file_lock*)* @flock_make_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_lock* @flock_make_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_lock* %2, %struct.file_lock** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @flock_translate_cmd(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.file_lock* @ERR_PTR(i32 %14)
  store %struct.file_lock* %15, %struct.file_lock** %4, align 8
  br label %53

16:                                               ; preds = %3
  %17 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %18 = icmp eq %struct.file_lock* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = call %struct.file_lock* (...) @locks_alloc_lock()
  store %struct.file_lock* %20, %struct.file_lock** %7, align 8
  %21 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %22 = icmp eq %struct.file_lock* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.file_lock* @ERR_PTR(i32 %25)
  store %struct.file_lock* %26, %struct.file_lock** %4, align 8
  br label %53

27:                                               ; preds = %19
  br label %31

28:                                               ; preds = %16
  %29 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %30 = call i32 @locks_init_lock(%struct.file_lock* %29)
  br label %31

31:                                               ; preds = %28, %27
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %34 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %33, i32 0, i32 5
  store %struct.file* %32, %struct.file** %34, align 8
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %37 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %36, i32 0, i32 4
  store %struct.file* %35, %struct.file** %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %42 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @FL_FLOCK, align 4
  %44 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %45 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %48 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @OFFSET_MAX, align 4
  %50 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %51 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  store %struct.file_lock* %52, %struct.file_lock** %4, align 8
  br label %53

53:                                               ; preds = %31, %23, %13
  %54 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  ret %struct.file_lock* %54
}

declare dso_local i32 @flock_translate_cmd(i32) #1

declare dso_local %struct.file_lock* @ERR_PTR(i32) #1

declare dso_local %struct.file_lock* @locks_alloc_lock(...) #1

declare dso_local i32 @locks_init_lock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
