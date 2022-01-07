; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_flush_times.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_flush_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fuse_file = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_setattr_in = type { i32, i32, i32, i32, i32, i32 }
%struct.fuse_attr_out = type { i32, i32, i32, i32, i32, i32 }

@args = common dso_local global i32 0, align 4
@FATTR_MTIME = common dso_local global i32 0, align 4
@FATTR_CTIME = common dso_local global i32 0, align 4
@FATTR_FH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_flush_times(%struct.inode* %0, %struct.fuse_file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.fuse_file*, align 8
  %5 = alloca %struct.fuse_conn*, align 8
  %6 = alloca %struct.fuse_setattr_in, align 4
  %7 = alloca %struct.fuse_attr_out, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.fuse_file* %1, %struct.fuse_file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %8)
  store %struct.fuse_conn* %9, %struct.fuse_conn** %5, align 8
  %10 = load i32, i32* @args, align 4
  %11 = call i32 @FUSE_ARGS(i32 %10)
  %12 = call i32 @memset(%struct.fuse_setattr_in* %6, i32 0, i32 24)
  %13 = bitcast %struct.fuse_attr_out* %7 to %struct.fuse_setattr_in*
  %14 = call i32 @memset(%struct.fuse_setattr_in* %13, i32 0, i32 24)
  %15 = load i32, i32* @FATTR_MTIME, align 4
  %16 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %6, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %6, i32 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %6, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %28 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 23
  br i1 %30, label %31, label %46

31:                                               ; preds = %2
  %32 = load i32, i32* @FATTR_CTIME, align 4
  %33 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %6, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %6, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %31, %2
  %47 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %48 = icmp ne %struct.fuse_file* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32, i32* @FATTR_FH, align 4
  %51 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %55 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %6, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %49, %46
  %59 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = bitcast %struct.fuse_attr_out* %7 to %struct.fuse_setattr_in*
  %62 = call i32 @fuse_setattr_fill(%struct.fuse_conn* %59, i32* @args, %struct.inode* %60, %struct.fuse_setattr_in* %6, %struct.fuse_setattr_in* %61)
  %63 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %64 = call i32 @fuse_simple_request(%struct.fuse_conn* %63, i32* @args)
  ret i32 %64
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(i32) #1

declare dso_local i32 @memset(%struct.fuse_setattr_in*, i32, i32) #1

declare dso_local i32 @fuse_setattr_fill(%struct.fuse_conn*, i32*, %struct.inode*, %struct.fuse_setattr_in*, %struct.fuse_setattr_in*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
