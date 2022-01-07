; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_fcntl_getlk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_fcntl_getlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.flock = type { i64, i64 }
%struct.file_lock = type { i64, %struct.file*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i64 0, align 8
@F_WRLCK = common dso_local global i64 0, align 8
@F_OFD_GETLK = common dso_local global i32 0, align 4
@F_GETLK = common dso_local global i32 0, align 4
@FL_OFDLCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcntl_getlk(%struct.file* %0, i32 %1, %struct.flock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flock*, align 8
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.flock* %2, %struct.flock** %7, align 8
  %10 = call %struct.file_lock* (...) @locks_alloc_lock()
  store %struct.file_lock* %10, %struct.file_lock** %8, align 8
  %11 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %12 = icmp eq %struct.file_lock* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %92

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.flock*, %struct.flock** %7, align 8
  %20 = getelementptr inbounds %struct.flock, %struct.flock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @F_RDLCK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.flock*, %struct.flock** %7, align 8
  %26 = getelementptr inbounds %struct.flock, %struct.flock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @F_WRLCK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %88

31:                                               ; preds = %24, %16
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %34 = load %struct.flock*, %struct.flock** %7, align 8
  %35 = call i32 @flock_to_posix_lock(%struct.file* %32, %struct.file_lock* %33, %struct.flock* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %88

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @F_OFD_GETLK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.flock*, %struct.flock** %7, align 8
  %47 = getelementptr inbounds %struct.flock, %struct.flock* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %88

51:                                               ; preds = %43
  %52 = load i32, i32* @F_GETLK, align 4
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @FL_OFDLCK, align 4
  %54 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %55 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %60 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %59, i32 0, i32 1
  store %struct.file* %58, %struct.file** %60, align 8
  br label %61

61:                                               ; preds = %51, %39
  %62 = load %struct.file*, %struct.file** %5, align 8
  %63 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %64 = call i32 @vfs_test_lock(%struct.file* %62, %struct.file_lock* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %88

68:                                               ; preds = %61
  %69 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %70 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.flock*, %struct.flock** %7, align 8
  %73 = getelementptr inbounds %struct.flock, %struct.flock* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %75 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @F_UNLCK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %68
  %80 = load %struct.flock*, %struct.flock** %7, align 8
  %81 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %82 = call i32 @posix_lock_to_flock(%struct.flock* %80, %struct.file_lock* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %88

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %68
  br label %88

88:                                               ; preds = %87, %85, %67, %50, %38, %30
  %89 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %90 = call i32 @locks_free_lock(%struct.file_lock* %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %88, %13
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.file_lock* @locks_alloc_lock(...) #1

declare dso_local i32 @flock_to_posix_lock(%struct.file*, %struct.file_lock*, %struct.flock*) #1

declare dso_local i32 @vfs_test_lock(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @posix_lock_to_flock(%struct.flock*, %struct.file_lock*) #1

declare dso_local i32 @locks_free_lock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
