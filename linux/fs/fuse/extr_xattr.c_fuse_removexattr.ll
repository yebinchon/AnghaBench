; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_xattr.c_fuse_removexattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_xattr.c_fuse_removexattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }

@args = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FUSE_REMOVEXATTR = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_removexattr(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %8)
  store %struct.fuse_conn* %9, %struct.fuse_conn** %6, align 8
  %10 = call i32 @FUSE_ARGS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 @args)
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %12 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load i32, i32* @FUSE_REMOVEXATTR, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 3), align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i32 @get_node_id(%struct.inode* %20)
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 0), align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = add nsw i64 %23, 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 1), align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 1), align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %33 = call i32 @fuse_simple_request(%struct.fuse_conn* %32, %struct.TYPE_6__* @args)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @ENOSYS, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %40 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %18
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = call i32 @fuse_invalidate_attr(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = call i32 @fuse_update_ctime(%struct.inode* %49)
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_6__*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @fuse_update_ctime(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
