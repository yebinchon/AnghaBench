; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_kernel_read_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_kernel_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@READING_FIRMWARE_PREALLOC_BUFFER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_read_file(%struct.file* %0, i8** %1, i64* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.file*, %struct.file** %7, align 8
  %17 = call %struct.TYPE_3__* @file_inode(%struct.file* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @S_ISREG(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i64, i64* %10, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %142

28:                                               ; preds = %22
  %29 = load %struct.file*, %struct.file** %7, align 8
  %30 = call i32 @deny_write_access(%struct.file* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %6, align 4
  br label %142

35:                                               ; preds = %28
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @security_kernel_read_file(%struct.file* %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %138

42:                                               ; preds = %35
  %43 = load %struct.file*, %struct.file** %7, align 8
  %44 = call %struct.TYPE_3__* @file_inode(%struct.file* %43)
  %45 = call i64 @i_size_read(%struct.TYPE_3__* %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %15, align 4
  br label %138

51:                                               ; preds = %42
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @SIZE_MAX, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %10, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %51
  %63 = load i32, i32* @EFBIG, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %15, align 4
  br label %138

65:                                               ; preds = %58, %55
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @READING_FIRMWARE_PREALLOC_BUFFER, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i64, i64* %12, align 8
  %71 = call i8* @vmalloc(i64 %70)
  %72 = load i8**, i8*** %8, align 8
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i8**, i8*** %8, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %15, align 4
  br label %138

80:                                               ; preds = %73
  store i64 0, i64* %13, align 8
  br label %81

81:                                               ; preds = %103, %80
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load %struct.file*, %struct.file** %7, align 8
  %87 = load i8**, i8*** %8, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr i8, i8* %88, i64 %89
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* %13, align 8
  %93 = sub nsw i64 %91, %92
  %94 = call i32 @kernel_read(%struct.file* %86, i8* %90, i64 %93, i64* %13)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %15, align 4
  br label %124

99:                                               ; preds = %85
  %100 = load i32, i32* %14, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %104

103:                                              ; preds = %99
  br label %81

104:                                              ; preds = %102, %81
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %15, align 4
  br label %124

111:                                              ; preds = %104
  %112 = load %struct.file*, %struct.file** %7, align 8
  %113 = load i8**, i8*** %8, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @security_kernel_post_read_file(%struct.file* %112, i8* %114, i64 %115, i32 %116)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %111
  %121 = load i64, i64* %13, align 8
  %122 = load i64*, i64** %9, align 8
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %120, %111
  br label %124

124:                                              ; preds = %123, %108, %97
  %125 = load i32, i32* %15, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @READING_FIRMWARE_PREALLOC_BUFFER, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i8**, i8*** %8, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @vfree(i8* %133)
  %135 = load i8**, i8*** %8, align 8
  store i8* null, i8** %135, align 8
  br label %136

136:                                              ; preds = %131, %127
  br label %137

137:                                              ; preds = %136, %124
  br label %138

138:                                              ; preds = %137, %77, %62, %48, %41
  %139 = load %struct.file*, %struct.file** %7, align 8
  %140 = call i32 @allow_write_access(%struct.file* %139)
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %138, %33, %25
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_3__* @file_inode(%struct.file*) #1

declare dso_local i32 @deny_write_access(%struct.file*) #1

declare dso_local i32 @security_kernel_read_file(%struct.file*, i32) #1

declare dso_local i64 @i_size_read(%struct.TYPE_3__*) #1

declare dso_local i8* @vmalloc(i64) #1

declare dso_local i32 @kernel_read(%struct.file*, i8*, i64, i64*) #1

declare dso_local i32 @security_kernel_post_read_file(%struct.file*, i8*, i64, i32) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @allow_write_access(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
