; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_parser.c_fs_lookup_param.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_parser.c_fs_lookup_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32 }
%struct.fs_parameter = type { i32, i32, i32, %struct.filename*, i32 }
%struct.filename = type { i32, i32 }
%struct.path = type { i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@LOOKUP_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: not usable as path\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: Lookup failure for '%s'\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: Non-blockdev passed as '%s'\00", align 1
@ENOTBLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fs_lookup_param(%struct.fs_context* %0, %struct.fs_parameter* %1, i32 %2, %struct.path* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fs_context*, align 8
  %7 = alloca %struct.fs_parameter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.path*, align 8
  %10 = alloca %struct.filename*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %6, align 8
  store %struct.fs_parameter* %1, %struct.fs_parameter** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.path* %3, %struct.path** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.fs_parameter*, %struct.fs_parameter** %7, align 8
  %15 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %35 [
    i32 128, label %17
    i32 129, label %29
    i32 130, label %31
  ]

17:                                               ; preds = %4
  %18 = load %struct.fs_parameter*, %struct.fs_parameter** %7, align 8
  %19 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.filename* @getname_kernel(i32 %20)
  store %struct.filename* %21, %struct.filename** %10, align 8
  %22 = load %struct.filename*, %struct.filename** %10, align 8
  %23 = call i32 @IS_ERR(%struct.filename* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.filename*, %struct.filename** %10, align 8
  %27 = call i32 @PTR_ERR(%struct.filename* %26)
  store i32 %27, i32* %5, align 4
  br label %102

28:                                               ; preds = %17
  store i32 1, i32* %12, align 4
  br label %41

29:                                               ; preds = %4
  %30 = load i32, i32* @LOOKUP_EMPTY, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %4, %29
  %32 = load %struct.fs_parameter*, %struct.fs_parameter** %7, align 8
  %33 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %32, i32 0, i32 3
  %34 = load %struct.filename*, %struct.filename** %33, align 8
  store %struct.filename* %34, %struct.filename** %10, align 8
  store i32 0, i32* %12, align 4
  br label %41

35:                                               ; preds = %4
  %36 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %37 = load %struct.fs_parameter*, %struct.fs_parameter** %7, align 8
  %38 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @invalf(%struct.fs_context* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %5, align 4
  br label %102

41:                                               ; preds = %31, %28
  %42 = load %struct.filename*, %struct.filename** %10, align 8
  %43 = getelementptr inbounds %struct.filename, %struct.filename* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.fs_parameter*, %struct.fs_parameter** %7, align 8
  %47 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.filename*, %struct.filename** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.path*, %struct.path** %9, align 8
  %52 = call i32 @filename_lookup(i32 %48, %struct.filename* %49, i32 %50, %struct.path* %51, i32* null)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %41
  %56 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %57 = load %struct.fs_parameter*, %struct.fs_parameter** %7, align 8
  %58 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.filename*, %struct.filename** %10, align 8
  %61 = getelementptr inbounds %struct.filename, %struct.filename* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @errorf(%struct.fs_context* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62)
  br label %94

64:                                               ; preds = %41
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %64
  %68 = load %struct.path*, %struct.path** %9, align 8
  %69 = getelementptr inbounds %struct.path, %struct.path* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call %struct.TYPE_2__* @d_backing_inode(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @S_ISBLK(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %67
  %77 = load %struct.path*, %struct.path** %9, align 8
  %78 = call i32 @path_put(%struct.path* %77)
  %79 = load %struct.path*, %struct.path** %9, align 8
  %80 = getelementptr inbounds %struct.path, %struct.path* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.path*, %struct.path** %9, align 8
  %82 = getelementptr inbounds %struct.path, %struct.path* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  %83 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %84 = load %struct.fs_parameter*, %struct.fs_parameter** %7, align 8
  %85 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.filename*, %struct.filename** %10, align 8
  %88 = getelementptr inbounds %struct.filename, %struct.filename* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @errorf(%struct.fs_context* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load i32, i32* @ENOTBLK, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %76, %67, %64
  br label %94

94:                                               ; preds = %93, %55
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.filename*, %struct.filename** %10, align 8
  %99 = call i32 @putname(%struct.filename* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %35, %25
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.filename* @getname_kernel(i32) #1

declare dso_local i32 @IS_ERR(%struct.filename*) #1

declare dso_local i32 @PTR_ERR(%struct.filename*) #1

declare dso_local i32 @invalf(%struct.fs_context*, i8*, i32) #1

declare dso_local i32 @filename_lookup(i32, %struct.filename*, i32, %struct.path*, i32*) #1

declare dso_local i32 @errorf(%struct.fs_context*, i8*, i32, i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local %struct.TYPE_2__* @d_backing_inode(i32*) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @putname(%struct.filename*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
