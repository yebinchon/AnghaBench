; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_rename_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_rename_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_renament = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32, %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Deleting old file: nlink %d, error=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ext4_renament*, i32)* @ext4_rename_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_rename_delete(i32* %0, %struct.ext4_renament* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ext4_renament*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.ext4_renament* %1, %struct.ext4_renament** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %9 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %8, i32 0, i32 3
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @le32_to_cpu(i32 %12)
  %14 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %15 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %13, %18
  br i1 %19, label %55, label %20

20:                                               ; preds = %3
  %21 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %22 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %21, i32 0, i32 3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %27 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %25, %31
  br i1 %32, label %55, label %33

33:                                               ; preds = %20
  %34 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %35 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %34, i32 0, i32 3
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %40 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %46 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %45, i32 0, i32 3
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @strncmp(i32 %38, i32 %44, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %33
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52, %33, %20, %3
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %58 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %61 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = call i32 @ext4_find_delete_entry(i32* %56, %struct.TYPE_10__* %59, %struct.TYPE_11__* %63)
  store i32 %64, i32* %7, align 4
  br label %92

65:                                               ; preds = %52
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %68 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %71 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %70, i32 0, i32 3
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %74 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ext4_delete_entry(i32* %66, %struct.TYPE_10__* %69, %struct.TYPE_12__* %72, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @ENOENT, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %65
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %84 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %83, i32 0, i32 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %87 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = call i32 @ext4_find_delete_entry(i32* %82, %struct.TYPE_10__* %85, %struct.TYPE_11__* %89)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %81, %65
  br label %92

92:                                               ; preds = %91, %55
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %97 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load %struct.ext4_renament*, %struct.ext4_renament** %5, align 8
  %100 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @ext4_warning_inode(%struct.TYPE_10__* %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %95, %92
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @strncmp(i32, i32, i64) #1

declare dso_local i32 @ext4_find_delete_entry(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ext4_delete_entry(i32*, %struct.TYPE_10__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ext4_warning_inode(%struct.TYPE_10__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
