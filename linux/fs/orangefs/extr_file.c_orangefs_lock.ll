; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_file.c_orangefs_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_file.c_orangefs_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ORANGEFS_OPT_LOCAL_LOCK = common dso_local global i32 0, align 4
@F_GETLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @orangefs_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.TYPE_3__* @file_inode(%struct.file* %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_4__* @ORANGEFS_SB(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ORANGEFS_OPT_LOCAL_LOCK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @F_GETLK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %27 = call i32 @posix_test_lock(%struct.file* %25, %struct.file_lock* %26)
  br label %32

28:                                               ; preds = %20
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %31 = call i32 @posix_lock_file(%struct.file* %29, %struct.file_lock* %30, i32* null)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_4__* @ORANGEFS_SB(i32) #1

declare dso_local %struct.TYPE_3__* @file_inode(%struct.file*) #1

declare dso_local i32 @posix_test_lock(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @posix_lock_file(%struct.file*, %struct.file_lock*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
