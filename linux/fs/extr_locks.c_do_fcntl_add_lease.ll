; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_do_fcntl_add_lease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_do_fcntl_add_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i32 }
%struct.fasync_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i64)* @do_fcntl_add_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_fcntl_add_lease(i32 %0, %struct.file* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca %struct.fasync_struct*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.file* %1, %struct.file** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call %struct.file_lock* @lease_alloc(%struct.file* %11, i64 %12)
  store %struct.file_lock* %13, %struct.file_lock** %8, align 8
  %14 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %15 = call i64 @IS_ERR(%struct.file_lock* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.file_lock* %18)
  store i32 %19, i32* %4, align 4
  br label %50

20:                                               ; preds = %3
  %21 = call %struct.fasync_struct* (...) @fasync_alloc()
  store %struct.fasync_struct* %21, %struct.fasync_struct** %9, align 8
  %22 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %23 = icmp ne %struct.fasync_struct* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %26 = call i32 @locks_free_lock(%struct.file_lock* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %50

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %32 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.file*, %struct.file** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = bitcast %struct.fasync_struct** %9 to i8**
  %36 = call i32 @vfs_setlease(%struct.file* %33, i64 %34, %struct.file_lock** %8, i8** %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %38 = icmp ne %struct.file_lock* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %41 = call i32 @locks_free_lock(%struct.file_lock* %40)
  br label %42

42:                                               ; preds = %39, %29
  %43 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %44 = icmp ne %struct.fasync_struct* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %47 = call i32 @fasync_free(%struct.fasync_struct* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %24, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.file_lock* @lease_alloc(%struct.file*, i64) #1

declare dso_local i64 @IS_ERR(%struct.file_lock*) #1

declare dso_local i32 @PTR_ERR(%struct.file_lock*) #1

declare dso_local %struct.fasync_struct* @fasync_alloc(...) #1

declare dso_local i32 @locks_free_lock(%struct.file_lock*) #1

declare dso_local i32 @vfs_setlease(%struct.file*, i64, %struct.file_lock**, i8**) #1

declare dso_local i32 @fasync_free(%struct.fasync_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
