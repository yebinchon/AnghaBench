; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_do_filldir_main.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_do_filldir_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.dir_context = type { i64 }
%struct.gfs2_dirent = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@compare_dents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.dir_context*, %struct.gfs2_dirent**, i64, i64, i32*)* @do_filldir_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_filldir_main(%struct.gfs2_inode* %0, %struct.dir_context* %1, %struct.gfs2_dirent** %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.dir_context*, align 8
  %10 = alloca %struct.gfs2_dirent**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.gfs2_dirent*, align 8
  %15 = alloca %struct.gfs2_dirent*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %8, align 8
  store %struct.dir_context* %1, %struct.dir_context** %9, align 8
  store %struct.gfs2_dirent** %2, %struct.gfs2_dirent*** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %6
  %25 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %10, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds %struct.gfs2_dirent*, %struct.gfs2_dirent** %25, i64 %26
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = sub i64 %28, %29
  %31 = load i32, i32* @compare_dents, align 4
  %32 = call i32 @sort(%struct.gfs2_dirent** %27, i64 %30, i32 8, i32 %31, i32* null)
  br label %33

33:                                               ; preds = %24, %6
  %34 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %10, align 8
  %35 = getelementptr inbounds %struct.gfs2_dirent*, %struct.gfs2_dirent** %34, i64 0
  %36 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %35, align 8
  store %struct.gfs2_dirent* %36, %struct.gfs2_dirent** %15, align 8
  %37 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %15, align 8
  %38 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %40

40:                                               ; preds = %119, %33
  %41 = load i32, i32* %18, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* %11, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %124

45:                                               ; preds = %40
  %46 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %15, align 8
  store %struct.gfs2_dirent* %46, %struct.gfs2_dirent** %14, align 8
  %47 = load i64, i64* %17, align 8
  store i64 %47, i64* %16, align 8
  %48 = load i32, i32* %19, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* %11, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %45
  %53 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %10, align 8
  %54 = load i32, i32* %19, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.gfs2_dirent*, %struct.gfs2_dirent** %53, i64 %55
  %57 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %56, align 8
  store %struct.gfs2_dirent* %57, %struct.gfs2_dirent** %15, align 8
  %58 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %15, align 8
  %59 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %17, align 8
  %61 = load i64, i64* %16, align 8
  %62 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %63 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %119

67:                                               ; preds = %52
  %68 = load i64, i64* %16, align 8
  %69 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %70 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* %16, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i32 1, i32* %7, align 4
  br label %129

82:                                               ; preds = %78, %74
  store i32 1, i32* %20, align 4
  br label %84

83:                                               ; preds = %67
  store i32 0, i32* %20, align 4
  br label %84

84:                                               ; preds = %83, %82
  br label %96

85:                                               ; preds = %45
  %86 = load i64, i64* %16, align 8
  %87 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %88 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %119

92:                                               ; preds = %85
  %93 = load i64, i64* %16, align 8
  %94 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %95 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %92, %84
  %97 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %98 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %99 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %98, i64 1
  %100 = bitcast %struct.gfs2_dirent* %99 to i8*
  %101 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %102 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @be16_to_cpu(i32 %103)
  %105 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %106 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @be64_to_cpu(i32 %108)
  %110 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %111 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @be16_to_cpu(i32 %112)
  %114 = call i32 @dir_emit(%struct.dir_context* %97, i8* %100, i32 %104, i32 %109, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %96
  store i32 1, i32* %7, align 4
  br label %129

117:                                              ; preds = %96
  %118 = load i32*, i32** %13, align 8
  store i32 1, i32* %118, align 4
  br label %119

119:                                              ; preds = %117, %91, %66
  %120 = load i32, i32* %18, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %19, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %19, align 4
  br label %40

124:                                              ; preds = %40
  %125 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %126 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %124, %116, %81
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local i32 @sort(%struct.gfs2_dirent**, i64, i32, i32, i32*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
