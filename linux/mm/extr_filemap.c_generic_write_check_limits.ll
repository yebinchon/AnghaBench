; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_write_check_limits.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_write_check_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@RLIMIT_FSIZE = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@SIGXFSZ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@MAX_NON_LFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, i64*)* @generic_write_check_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_write_check_limits(%struct.file* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* @RLIMIT_FSIZE, align 4
  %22 = call i64 @rlimit(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @RLIM_INFINITY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* @SIGXFSZ, align 4
  %32 = load i32, i32* @current, align 4
  %33 = call i32 @send_sig(i32 %31, i32 %32, i32 0)
  %34 = load i32, i32* @EFBIG, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %71

36:                                               ; preds = %26
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub nsw i64 %39, %40
  %42 = call i64 @min(i64 %38, i64 %41)
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %36, %3
  %45 = load %struct.file*, %struct.file** %5, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @O_LARGEFILE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* @MAX_NON_LFS, align 8
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp sge i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @EFBIG, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %71

63:                                               ; preds = %53
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %6, align 8
  %68 = sub nsw i64 %66, %67
  %69 = call i64 @min(i64 %65, i64 %68)
  %70 = load i64*, i64** %7, align 8
  store i64 %69, i64* %70, align 8
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %63, %60, %30
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @rlimit(i32) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
