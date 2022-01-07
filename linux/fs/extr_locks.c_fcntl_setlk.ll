; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_fcntl_setlk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_fcntl_setlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.flock = type { i32 }
%struct.file_lock = type { i32, i64, %struct.file* }
%struct.inode = type { i32 }

@ENOLCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@FL_OFDLCK = common dso_local global i32 0, align 4
@FL_SLEEP = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcntl_setlk(i32 %0, %struct.file* %1, i32 %2, %struct.flock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flock*, align 8
  %10 = alloca %struct.file_lock*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.flock* %3, %struct.flock** %9, align 8
  %14 = call %struct.file_lock* (...) @locks_alloc_lock()
  store %struct.file_lock* %14, %struct.file_lock** %10, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = call %struct.inode* @locks_inode(%struct.file* %15)
  store %struct.inode* %16, %struct.inode** %11, align 8
  %17 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %18 = icmp eq %struct.file_lock* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOLCK, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %150

22:                                               ; preds = %4
  %23 = load %struct.inode*, %struct.inode** %11, align 8
  %24 = call i64 @mandatory_lock(%struct.inode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.file*, %struct.file** %7, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @mapping_writably_mapped(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %142

35:                                               ; preds = %26, %22
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %38 = load %struct.flock*, %struct.flock** %9, align 8
  %39 = call i32 @flock_to_posix_lock(%struct.file* %36, %struct.file_lock* %37, %struct.flock* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %142

43:                                               ; preds = %35
  %44 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %45 = call i32 @check_fmode_for_setlk(%struct.file_lock* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %142

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %92 [
    i32 130, label %51
    i32 129, label %69
    i32 128, label %86
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  %54 = load %struct.flock*, %struct.flock** %9, align 8
  %55 = getelementptr inbounds %struct.flock, %struct.flock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %142

59:                                               ; preds = %51
  %60 = load i32, i32* @F_SETLK, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @FL_OFDLCK, align 4
  %62 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %63 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.file*, %struct.file** %7, align 8
  %67 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %68 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %67, i32 0, i32 2
  store %struct.file* %66, %struct.file** %68, align 8
  br label %92

69:                                               ; preds = %49
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  %72 = load %struct.flock*, %struct.flock** %9, align 8
  %73 = getelementptr inbounds %struct.flock, %struct.flock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %142

77:                                               ; preds = %69
  store i32 128, i32* %8, align 4
  %78 = load i32, i32* @FL_OFDLCK, align 4
  %79 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %80 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.file*, %struct.file** %7, align 8
  %84 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %85 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %84, i32 0, i32 2
  store %struct.file* %83, %struct.file** %85, align 8
  br label %86

86:                                               ; preds = %49, %77
  %87 = load i32, i32* @FL_SLEEP, align 4
  %88 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %89 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %86, %49, %59
  %93 = load %struct.file*, %struct.file** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %96 = call i32 @do_lock_file_wait(%struct.file* %93, i32 %94, %struct.file_lock* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %141, label %99

99:                                               ; preds = %92
  %100 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %101 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @F_UNLCK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %141

105:                                              ; preds = %99
  %106 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %107 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @FL_OFDLCK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %141, label %112

112:                                              ; preds = %105
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = call i32 @spin_lock(i32* %116)
  %118 = load i32, i32* %6, align 4
  %119 = call %struct.file* @fcheck(i32 %118)
  store %struct.file* %119, %struct.file** %12, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load %struct.file*, %struct.file** %12, align 8
  %126 = load %struct.file*, %struct.file** %7, align 8
  %127 = icmp ne %struct.file* %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %112
  %129 = load i64, i64* @F_UNLCK, align 8
  %130 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %131 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load %struct.file*, %struct.file** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %135 = call i32 @do_lock_file_wait(%struct.file* %132, i32 %133, %struct.file_lock* %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @WARN_ON_ONCE(i32 %136)
  %138 = load i32, i32* @EBADF, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %128, %112
  br label %141

141:                                              ; preds = %140, %105, %99, %92
  br label %142

142:                                              ; preds = %141, %76, %58, %48, %42, %32
  %143 = load %struct.inode*, %struct.inode** %11, align 8
  %144 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @trace_fcntl_setlk(%struct.inode* %143, %struct.file_lock* %144, i32 %145)
  %147 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  %148 = call i32 @locks_free_lock(%struct.file_lock* %147)
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %142, %19
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local %struct.file_lock* @locks_alloc_lock(...) #1

declare dso_local %struct.inode* @locks_inode(%struct.file*) #1

declare dso_local i64 @mandatory_lock(%struct.inode*) #1

declare dso_local i64 @mapping_writably_mapped(i32) #1

declare dso_local i32 @flock_to_posix_lock(%struct.file*, %struct.file_lock*, %struct.flock*) #1

declare dso_local i32 @check_fmode_for_setlk(%struct.file_lock*) #1

declare dso_local i32 @do_lock_file_wait(%struct.file*, i32, %struct.file_lock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.file* @fcheck(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @trace_fcntl_setlk(%struct.inode*, %struct.file_lock*, i32) #1

declare dso_local i32 @locks_free_lock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
