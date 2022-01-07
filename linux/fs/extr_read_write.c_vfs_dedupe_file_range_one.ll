; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_vfs_dedupe_file_range_one.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_vfs_dedupe_file_range_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@REMAP_FILE_DEDUP = common dso_local global i32 0, align 4
@REMAP_FILE_CAN_SHORTEN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_dedupe_file_range_one(%struct.file* %0, i32 %1, %struct.file* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.file* %2, %struct.file** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %17 = load i32, i32* @REMAP_FILE_CAN_SHORTEN, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = load %struct.file*, %struct.file** %10, align 8
  %23 = call i32 @mnt_want_write_file(%struct.file* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %7, align 4
  br label %101

28:                                               ; preds = %6
  %29 = load %struct.file*, %struct.file** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @remap_verify_area(%struct.file* %29, i32 %30, i32 %31, i32 1)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %97

36:                                               ; preds = %28
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %14, align 4
  %39 = load %struct.file*, %struct.file** %10, align 8
  %40 = call i32 @allow_file_dedupe(%struct.file* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %97

43:                                               ; preds = %36
  %44 = load i32, i32* @EXDEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  %46 = load %struct.file*, %struct.file** %8, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.file*, %struct.file** %10, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %97

56:                                               ; preds = %43
  %57 = load i32, i32* @EISDIR, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %14, align 4
  %59 = load %struct.file*, %struct.file** %10, align 8
  %60 = call %struct.TYPE_6__* @file_inode(%struct.file* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISDIR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %97

66:                                               ; preds = %56
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %14, align 4
  %69 = load %struct.file*, %struct.file** %10, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = bitcast {}** %72 to i32 (%struct.file*, i32, %struct.file*, i32, i32, i32)**
  %74 = load i32 (%struct.file*, i32, %struct.file*, i32, i32, i32)*, i32 (%struct.file*, i32, %struct.file*, i32, i32, i32)** %73, align 8
  %75 = icmp ne i32 (%struct.file*, i32, %struct.file*, i32, i32, i32)* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  br label %97

77:                                               ; preds = %66
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 0, i32* %14, align 4
  br label %97

81:                                               ; preds = %77
  %82 = load %struct.file*, %struct.file** %10, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = bitcast {}** %85 to i32 (%struct.file*, i32, %struct.file*, i32, i32, i32)**
  %87 = load i32 (%struct.file*, i32, %struct.file*, i32, i32, i32)*, i32 (%struct.file*, i32, %struct.file*, i32, i32, i32)** %86, align 8
  %88 = load %struct.file*, %struct.file** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.file*, %struct.file** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %95 = or i32 %93, %94
  %96 = call i32 %87(%struct.file* %88, i32 %89, %struct.file* %90, i32 %91, i32 %92, i32 %95)
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %81, %80, %76, %65, %55, %42, %35
  %98 = load %struct.file*, %struct.file** %10, align 8
  %99 = call i32 @mnt_drop_write_file(%struct.file* %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %97, %26
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @remap_verify_area(%struct.file*, i32, i32, i32) #1

declare dso_local i32 @allow_file_dedupe(%struct.file*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_6__* @file_inode(%struct.file*) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
