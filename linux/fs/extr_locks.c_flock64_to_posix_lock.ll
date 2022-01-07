; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_flock64_to_posix_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_flock64_to_posix_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i64 }
%struct.file_lock = type { i64, i64, i32*, i32*, i32, %struct.file*, i32, i32 }
%struct.flock64 = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@FL_POSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.file_lock*, %struct.flock64*)* @flock64_to_posix_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flock64_to_posix_lock(%struct.file* %0, %struct.file_lock* %1, %struct.flock64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.flock64*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.file_lock* %1, %struct.file_lock** %6, align 8
  store %struct.flock64* %2, %struct.flock64** %7, align 8
  %8 = load %struct.flock64*, %struct.flock64** %7, align 8
  %9 = getelementptr inbounds %struct.flock64, %struct.flock64* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %26 [
    i32 128, label %11
    i32 130, label %14
    i32 129, label %20
  ]

11:                                               ; preds = %3
  %12 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %13 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  br label %29

14:                                               ; preds = %3
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %19 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = call i32 @file_inode(%struct.file* %21)
  %23 = call i64 @i_size_read(i32 %22)
  %24 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %25 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %153

29:                                               ; preds = %20, %14, %11
  %30 = load %struct.flock64*, %struct.flock64** %7, align 8
  %31 = getelementptr inbounds %struct.flock64, %struct.flock64* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OFFSET_MAX, align 8
  %34 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = icmp sgt i64 %32, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EOVERFLOW, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %153

42:                                               ; preds = %29
  %43 = load %struct.flock64*, %struct.flock64** %7, align 8
  %44 = getelementptr inbounds %struct.flock64, %struct.flock64* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %47 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %51 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %153

57:                                               ; preds = %42
  %58 = load %struct.flock64*, %struct.flock64** %7, align 8
  %59 = getelementptr inbounds %struct.flock64, %struct.flock64* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load %struct.flock64*, %struct.flock64** %7, align 8
  %64 = getelementptr inbounds %struct.flock64, %struct.flock64* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @OFFSET_MAX, align 8
  %69 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %70 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = icmp sgt i64 %67, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @EOVERFLOW, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %153

77:                                               ; preds = %62
  %78 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %79 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.flock64*, %struct.flock64** %7, align 8
  %82 = getelementptr inbounds %struct.flock64, %struct.flock64* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %80, %84
  %86 = sub nsw i64 %85, 1
  %87 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %88 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %127

89:                                               ; preds = %57
  %90 = load %struct.flock64*, %struct.flock64** %7, align 8
  %91 = getelementptr inbounds %struct.flock64, %struct.flock64* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %89
  %95 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %96 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.flock64*, %struct.flock64** %7, align 8
  %99 = getelementptr inbounds %struct.flock64, %struct.flock64* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %97, %101
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %153

107:                                              ; preds = %94
  %108 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %109 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, 1
  %112 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %113 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.flock64*, %struct.flock64** %7, align 8
  %115 = getelementptr inbounds %struct.flock64, %struct.flock64* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %119 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %126

122:                                              ; preds = %89
  %123 = load i64, i64* @OFFSET_MAX, align 8
  %124 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %125 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %122, %107
  br label %127

127:                                              ; preds = %126, %77
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %132 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %131, i32 0, i32 7
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %137 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 8
  %138 = load %struct.file*, %struct.file** %5, align 8
  %139 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %140 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %139, i32 0, i32 5
  store %struct.file* %138, %struct.file** %140, align 8
  %141 = load i32, i32* @FL_POSIX, align 4
  %142 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %143 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %145 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %144, i32 0, i32 3
  store i32* null, i32** %145, align 8
  %146 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %147 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %146, i32 0, i32 2
  store i32* null, i32** %147, align 8
  %148 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %149 = load %struct.flock64*, %struct.flock64** %7, align 8
  %150 = getelementptr inbounds %struct.flock64, %struct.flock64* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @assign_type(%struct.file_lock* %148, i32 %151)
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %127, %104, %74, %54, %39, %26
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @assign_type(%struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
