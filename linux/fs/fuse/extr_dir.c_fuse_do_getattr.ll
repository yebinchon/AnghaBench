; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_do_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_do_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.fuse_getattr_in* }
%struct.fuse_getattr_in = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.fuse_getattr_in* }
%struct.inode = type { i32 }
%struct.kstat = type { i32 }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.fuse_attr_out = type { %struct.TYPE_11__, i32, i32 }
%struct.fuse_conn = type { i32 }

@args = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@FUSE_GETATTR_FH = common dso_local global i32 0, align 4
@FUSE_GETATTR = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.kstat*, %struct.file*)* @fuse_do_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_do_getattr(%struct.inode* %0, %struct.kstat* %1, %struct.file* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.kstat*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_getattr_in, align 4
  %9 = alloca %struct.fuse_attr_out, align 4
  %10 = alloca %struct.fuse_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fuse_file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.kstat* %1, %struct.kstat** %5, align 8
  store %struct.file* %2, %struct.file** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %13)
  store %struct.fuse_conn* %14, %struct.fuse_conn** %10, align 8
  %15 = call i32 @FUSE_ARGS(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 @args)
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %17 = call i32 @fuse_get_attr_version(%struct.fuse_conn* %16)
  store i32 %17, i32* %11, align 4
  %18 = call i32 @memset(%struct.fuse_getattr_in* %8, i32 0, i32 12)
  %19 = bitcast %struct.fuse_attr_out* %9 to %struct.fuse_getattr_in*
  %20 = call i32 @memset(%struct.fuse_getattr_in* %19, i32 0, i32 12)
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = icmp ne %struct.file* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISREG(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.file*, %struct.file** %6, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load %struct.fuse_file*, %struct.fuse_file** %31, align 8
  store %struct.fuse_file* %32, %struct.fuse_file** %12, align 8
  %33 = load i32, i32* @FUSE_GETATTR_FH, align 4
  %34 = getelementptr inbounds %struct.fuse_getattr_in, %struct.fuse_getattr_in* %8, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = load %struct.fuse_file*, %struct.fuse_file** %12, align 8
  %38 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.fuse_getattr_in, %struct.fuse_getattr_in* %8, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %29, %23, %3
  %42 = load i32, i32* @FUSE_GETATTR, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 5), align 4
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i32 @get_node_id(%struct.inode* %43)
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 0), align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 3), align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 12, i32* %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 3), align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store %struct.fuse_getattr_in* %8, %struct.fuse_getattr_in** %50, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 1), align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 2), align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32 12, i32* %53, align 8
  %54 = bitcast %struct.fuse_attr_out* %9 to %struct.fuse_getattr_in*
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 2), align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store %struct.fuse_getattr_in* %54, %struct.fuse_getattr_in** %57, align 8
  %58 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %59 = call i32 @fuse_simple_request(%struct.fuse_conn* %58, %struct.TYPE_10__* @args)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %94, label %62

62:                                               ; preds = %41
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %9, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %65, %68
  %70 = load i32, i32* @S_IFMT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = call i32 @make_bad_inode(%struct.inode* %74)
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %93

78:                                               ; preds = %62
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %9, i32 0, i32 0
  %81 = bitcast %struct.fuse_attr_out* %9 to %struct.fuse_getattr_in*
  %82 = call i32 @attr_timeout(%struct.fuse_getattr_in* %81)
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @fuse_change_attributes(%struct.inode* %79, %struct.TYPE_11__* %80, i32 %82, i32 %83)
  %85 = load %struct.kstat*, %struct.kstat** %5, align 8
  %86 = icmp ne %struct.kstat* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %9, i32 0, i32 0
  %90 = load %struct.kstat*, %struct.kstat** %5, align 8
  %91 = call i32 @fuse_fillattr(%struct.inode* %88, %struct.TYPE_11__* %89, %struct.kstat* %90)
  br label %92

92:                                               ; preds = %87, %78
  br label %93

93:                                               ; preds = %92, %73
  br label %94

94:                                               ; preds = %93, %41
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

declare dso_local i32 @fuse_get_attr_version(%struct.fuse_conn*) #1

declare dso_local i32 @memset(%struct.fuse_getattr_in*, i32, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_10__*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @fuse_change_attributes(%struct.inode*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @attr_timeout(%struct.fuse_getattr_in*) #1

declare dso_local i32 @fuse_fillattr(%struct.inode*, %struct.TYPE_11__*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
