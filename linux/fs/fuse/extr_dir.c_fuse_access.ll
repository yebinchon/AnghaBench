; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.fuse_access_in* }
%struct.fuse_access_in = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }

@args = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MAY_NOT_BLOCK = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@FUSE_ACCESS = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @fuse_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_access(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.fuse_access_in, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %9)
  store %struct.fuse_conn* %10, %struct.fuse_conn** %6, align 8
  %11 = call i32 @FUSE_ARGS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 @args)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAY_NOT_BLOCK, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %17 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

21:                                               ; preds = %2
  %22 = call i32 @memset(%struct.fuse_access_in* %7, i32 0, i32 4)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MAY_READ, align 4
  %25 = load i32, i32* @MAY_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MAY_EXEC, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %23, %28
  %30 = getelementptr inbounds %struct.fuse_access_in, %struct.fuse_access_in* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @FUSE_ACCESS, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 3), align 4
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call i32 @get_node_id(%struct.inode* %32)
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 0), align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 1), align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 1), align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store %struct.fuse_access_in* %7, %struct.fuse_access_in** %39, align 8
  %40 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %41 = call i32 @fuse_simple_request(%struct.fuse_conn* %40, %struct.TYPE_6__* @args)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ENOSYS, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %21
  %47 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %48 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %21
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.fuse_access_in*, i32, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
