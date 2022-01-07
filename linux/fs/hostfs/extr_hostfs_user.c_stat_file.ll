; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_user.c_stat_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_user.c_stat_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostfs_stat = type { i32 }
%struct.stat64 = type { i32 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stat_file(i8* %0, %struct.hostfs_stat* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostfs_stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat64, align 4
  store i8* %0, i8** %5, align 8
  store %struct.hostfs_stat* %1, %struct.hostfs_stat** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @fstat64(i32 %12, %struct.stat64* %8)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @errno, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %30

18:                                               ; preds = %11
  br label %27

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @lstat64(i8* %20, %struct.stat64* %8)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @errno, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %18
  %28 = load %struct.hostfs_stat*, %struct.hostfs_stat** %6, align 8
  %29 = call i32 @stat64_to_hostfs(%struct.stat64* %8, %struct.hostfs_stat* %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %23, %15
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @fstat64(i32, %struct.stat64*) #1

declare dso_local i64 @lstat64(i8*, %struct.stat64*) #1

declare dso_local i32 @stat64_to_hostfs(%struct.stat64*, %struct.hostfs_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
