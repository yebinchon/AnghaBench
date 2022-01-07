; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_do_clone_file_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_do_clone_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.TYPE_4__ = type { i64 }

@REMAP_FILE_DEDUP = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_clone_file_range(%struct.file* %0, i64 %1, %struct.file* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  %19 = load %struct.file*, %struct.file** %8, align 8
  %20 = call %struct.TYPE_4__* @file_inode(%struct.file* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.file*, %struct.file** %10, align 8
  %24 = call %struct.TYPE_4__* @file_inode(%struct.file* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %22, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i64, i64* @EXDEV, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %7, align 8
  br label %92

31:                                               ; preds = %6
  %32 = load %struct.file*, %struct.file** %8, align 8
  %33 = load %struct.file*, %struct.file** %10, align 8
  %34 = call i64 @generic_file_rw_checks(%struct.file* %32, %struct.file* %33)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %14, align 8
  store i64 %38, i64* %7, align 8
  br label %92

39:                                               ; preds = %31
  %40 = load %struct.file*, %struct.file** %8, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)**
  %45 = load i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)** %44, align 8
  %46 = icmp ne i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i64, i64* @EOPNOTSUPP, align 8
  %49 = sub nsw i64 0, %48
  store i64 %49, i64* %7, align 8
  br label %92

50:                                               ; preds = %39
  %51 = load %struct.file*, %struct.file** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @remap_verify_area(%struct.file* %51, i64 %52, i64 %53, i32 0)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i64, i64* %14, align 8
  store i64 %58, i64* %7, align 8
  br label %92

59:                                               ; preds = %50
  %60 = load %struct.file*, %struct.file** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i64 @remap_verify_area(%struct.file* %60, i64 %61, i64 %62, i32 1)
  store i64 %63, i64* %14, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i64, i64* %14, align 8
  store i64 %67, i64* %7, align 8
  br label %92

68:                                               ; preds = %59
  %69 = load %struct.file*, %struct.file** %8, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = bitcast {}** %72 to i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)**
  %74 = load i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)** %73, align 8
  %75 = load %struct.file*, %struct.file** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.file*, %struct.file** %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i64 %74(%struct.file* %75, i64 %76, %struct.file* %77, i64 %78, i64 %79, i32 %80)
  store i64 %81, i64* %14, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %68
  %85 = load i64, i64* %14, align 8
  store i64 %85, i64* %7, align 8
  br label %92

86:                                               ; preds = %68
  %87 = load %struct.file*, %struct.file** %8, align 8
  %88 = call i32 @fsnotify_access(%struct.file* %87)
  %89 = load %struct.file*, %struct.file** %10, align 8
  %90 = call i32 @fsnotify_modify(%struct.file* %89)
  %91 = load i64, i64* %14, align 8
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %86, %84, %66, %57, %47, %37, %28
  %93 = load i64, i64* %7, align 8
  ret i64 %93
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.TYPE_4__* @file_inode(%struct.file*) #1

declare dso_local i64 @generic_file_rw_checks(%struct.file*, %struct.file*) #1

declare dso_local i64 @remap_verify_area(%struct.file*, i64, i64, i32) #1

declare dso_local i32 @fsnotify_access(%struct.file*) #1

declare dso_local i32 @fsnotify_modify(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
