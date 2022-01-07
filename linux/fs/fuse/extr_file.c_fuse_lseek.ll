; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_lseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.fuse_lseek_out* }
%struct.fuse_lseek_out = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.fuse_lseek_in* }
%struct.fuse_lseek_in = type { i32, i32, i32 }
%struct.file = type { %struct.fuse_file*, %struct.TYPE_8__* }
%struct.fuse_file = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.fuse_conn = type { i32 }

@args = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@FUSE_LSEEK = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @fuse_lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_lseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.fuse_conn*, align 8
  %10 = alloca %struct.fuse_file*, align 8
  %11 = alloca %struct.fuse_lseek_in, align 4
  %12 = alloca %struct.fuse_lseek_out, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %19)
  store %struct.fuse_conn* %20, %struct.fuse_conn** %9, align 8
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.fuse_file*, %struct.fuse_file** %22, align 8
  store %struct.fuse_file* %23, %struct.fuse_file** %10, align 8
  %24 = call i32 @FUSE_ARGS(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 @args)
  %25 = getelementptr inbounds %struct.fuse_lseek_in, %struct.fuse_lseek_in* %11, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.fuse_lseek_in, %struct.fuse_lseek_in* %11, i32 0, i32 1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.fuse_lseek_in, %struct.fuse_lseek_in* %11, i32 0, i32 2
  %30 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %31 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %34 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %79

38:                                               ; preds = %3
  %39 = load i32, i32* @FUSE_LSEEK, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @args, i32 0, i32 5), align 4
  %40 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %41 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @args, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @args, i32 0, i32 0), align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @args, i32 0, i32 3), align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 12, i32* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @args, i32 0, i32 3), align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store %struct.fuse_lseek_in* %11, %struct.fuse_lseek_in** %48, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @args, i32 0, i32 1), align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @args, i32 0, i32 2), align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 4, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @args, i32 0, i32 2), align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store %struct.fuse_lseek_out* %12, %struct.fuse_lseek_out** %54, align 8
  %55 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %56 = call i32 @fuse_simple_request(%struct.fuse_conn* %55, %struct.TYPE_12__* @args)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %38
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @ENOSYS, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %66 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  br label %79

67:                                               ; preds = %59
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %4, align 4
  br label %92

69:                                               ; preds = %38
  %70 = load %struct.file*, %struct.file** %5, align 8
  %71 = getelementptr inbounds %struct.fuse_lseek_out, %struct.fuse_lseek_out* %12, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @vfs_setpos(%struct.file* %70, i32 %72, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %92

79:                                               ; preds = %64, %37
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = call i32 @fuse_update_attributes(%struct.inode* %80, %struct.file* %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load %struct.file*, %struct.file** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @generic_file_llseek(%struct.file* %86, i32 %87, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %92

90:                                               ; preds = %79
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %85, %69, %67
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_12__*) #1

declare dso_local i32 @vfs_setpos(%struct.file*, i32, i32) #1

declare dso_local i32 @fuse_update_attributes(%struct.inode*, %struct.file*) #1

declare dso_local i32 @generic_file_llseek(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
