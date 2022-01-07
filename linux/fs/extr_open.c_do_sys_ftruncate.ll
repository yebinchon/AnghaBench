; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_do_sys_ftruncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_do_sys_ftruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.inode* }
%struct.fd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dentry* }

@EINVAL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@MAX_NON_LFS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_sys_ftruncate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.fd, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fd, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %120

17:                                               ; preds = %3
  %18 = load i32, i32* @EBADF, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.TYPE_6__* @fdget(i32 %20)
  %22 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %22, align 8
  %23 = bitcast %struct.fd* %9 to i8*
  %24 = bitcast %struct.fd* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  %25 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %120

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @O_LARGEFILE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.dentry*, %struct.dentry** %42, align 8
  store %struct.dentry* %43, %struct.dentry** %8, align 8
  %44 = load %struct.dentry*, %struct.dentry** %8, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = load %struct.inode*, %struct.inode** %45, align 8
  store %struct.inode* %46, %struct.inode** %7, align 8
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @S_ISREG(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FMODE_WRITE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54, %38
  br label %116

63:                                               ; preds = %54
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MAX_NON_LFS, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %116

73:                                               ; preds = %68, %63
  %74 = load i32, i32* @EPERM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  %76 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = call i32 @file_inode(%struct.TYPE_6__* %77)
  %79 = call i64 @IS_APPEND(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %116

82:                                               ; preds = %73
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @sb_start_write(i32 %85)
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @locks_verify_truncate(%struct.inode* %87, %struct.TYPE_6__* %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = call i32 @security_path_truncate(%struct.TYPE_5__* %97)
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %94, %82
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %99
  %103 = load %struct.dentry*, %struct.dentry** %8, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @ATTR_MTIME, align 4
  %106 = load i32, i32* @ATTR_CTIME, align 4
  %107 = or i32 %105, %106
  %108 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call i32 @do_truncate(%struct.dentry* %103, i32 %104, i32 %107, %struct.TYPE_6__* %109)
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %102, %99
  %112 = load %struct.inode*, %struct.inode** %7, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @sb_end_write(i32 %114)
  br label %116

116:                                              ; preds = %111, %81, %72, %62
  %117 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = call i32 @fdput(%struct.TYPE_6__* %118)
  br label %120

120:                                              ; preds = %116, %28, %16
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  ret i64 %122
}

declare dso_local %struct.TYPE_6__* @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @IS_APPEND(i32) #1

declare dso_local i32 @file_inode(%struct.TYPE_6__*) #1

declare dso_local i32 @sb_start_write(i32) #1

declare dso_local i32 @locks_verify_truncate(%struct.inode*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @security_path_truncate(%struct.TYPE_5__*) #1

declare dso_local i32 @do_truncate(%struct.dentry*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @sb_end_write(i32) #1

declare dso_local i32 @fdput(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
