; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_readdir.c_iterate_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_readdir.c_iterate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, {}* }
%struct.dir_context = type { i32 }
%struct.inode = type { i32 }

@ENOTDIR = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iterate_dir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dir_context*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.dir_context* %1, %struct.dir_context** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.inode* @file_inode(%struct.file* %8)
  store %struct.inode* %9, %struct.inode** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @ENOTDIR, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.file*, %struct.dir_context*)**
  %17 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %16, align 8
  %18 = icmp ne i32 (%struct.file*, %struct.dir_context*)* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = bitcast {}** %24 to i32 (%struct.file*, %struct.dir_context*)**
  %26 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %25, align 8
  %27 = icmp ne i32 (%struct.file*, %struct.dir_context*)* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %106

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.file*, %struct.file** %3, align 8
  %32 = load i32, i32* @MAY_READ, align 4
  %33 = call i32 @security_file_permission(%struct.file* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %106

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = call i32 @down_read_killable(i32* %42)
  store i32 %43, i32* %7, align 4
  br label %48

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = call i32 @down_write_killable(i32* %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %106

52:                                               ; preds = %48
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call i32 @IS_DEADDIR(%struct.inode* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %96, label %58

58:                                               ; preds = %52
  %59 = load %struct.file*, %struct.file** %3, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %63 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load %struct.file*, %struct.file** %3, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = bitcast {}** %70 to i32 (%struct.file*, %struct.dir_context*)**
  %72 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %71, align 8
  %73 = load %struct.file*, %struct.file** %3, align 8
  %74 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %75 = call i32 %72(%struct.file* %73, %struct.dir_context* %74)
  store i32 %75, i32* %7, align 4
  br label %86

76:                                               ; preds = %58
  %77 = load %struct.file*, %struct.file** %3, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = bitcast {}** %80 to i32 (%struct.file*, %struct.dir_context*)**
  %82 = load i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)** %81, align 8
  %83 = load %struct.file*, %struct.file** %3, align 8
  %84 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %85 = call i32 %82(%struct.file* %83, %struct.dir_context* %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %76, %66
  %87 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %88 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.file*, %struct.file** %3, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.file*, %struct.file** %3, align 8
  %93 = call i32 @fsnotify_access(%struct.file* %92)
  %94 = load %struct.file*, %struct.file** %3, align 8
  %95 = call i32 @file_accessed(%struct.file* %94)
  br label %96

96:                                               ; preds = %86, %52
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = call i32 @inode_unlock_shared(%struct.inode* %100)
  br label %105

102:                                              ; preds = %96
  %103 = load %struct.inode*, %struct.inode** %5, align 8
  %104 = call i32 @inode_unlock(%struct.inode* %103)
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %51, %36, %28
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @security_file_permission(%struct.file*, i32) #1

declare dso_local i32 @down_read_killable(i32*) #1

declare dso_local i32 @down_write_killable(i32*) #1

declare dso_local i32 @IS_DEADDIR(%struct.inode*) #1

declare dso_local i32 @fsnotify_access(%struct.file*) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

declare dso_local i32 @inode_unlock_shared(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
