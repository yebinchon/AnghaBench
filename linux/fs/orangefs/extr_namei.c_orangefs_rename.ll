; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_namei.c_orangefs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_namei.c_orangefs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8* }
%struct.dentry = type { %struct.inode*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.orangefs_kernel_op_s = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.iattr = type { i32, i8*, i8* }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GOSSIP_NAME_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"orangefs_rename: called (%pd2 => %pd2) ct=%d\0A\00", align 1
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ORANGEFS_VFS_OP_RENAME = common dso_local global i32 0, align 4
@ORANGEFS_NAME_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"orangefs_rename\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"orangefs_rename: got downcall status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @orangefs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.orangefs_kernel_op_s*, align 8
  %13 = alloca %struct.iattr, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %118

20:                                               ; preds = %5
  %21 = load i32, i32* @GOSSIP_NAME_DEBUG, align 4
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = load %struct.dentry*, %struct.dentry** %10, align 8
  %24 = load %struct.dentry*, %struct.dentry** %10, align 8
  %25 = call i32 @d_count(%struct.dentry* %24)
  %26 = call i32 (i32, i8*, ...) @gossip_debug(i32 %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.dentry* %22, %struct.dentry* %23, i32 %25)
  %27 = call i32 @memset(%struct.iattr* %13, i32 0, i32 24)
  %28 = load i32, i32* @ATTR_MTIME, align 4
  %29 = load i32, i32* @ATTR_CTIME, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 8
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = call i8* @current_time(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = call i32 @__orangefs_setattr(%struct.inode* %38, %struct.iattr* %13)
  %40 = load i32, i32* @ORANGEFS_VFS_OP_RENAME, align 4
  %41 = call %struct.orangefs_kernel_op_s* @op_alloc(i32 %40)
  store %struct.orangefs_kernel_op_s* %41, %struct.orangefs_kernel_op_s** %12, align 8
  %42 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %12, align 8
  %43 = icmp ne %struct.orangefs_kernel_op_s* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %20
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %118

47:                                               ; preds = %20
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call %struct.TYPE_10__* @ORANGEFS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %12, align 8
  %53 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i32 %51, i32* %56, align 4
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = call %struct.TYPE_10__* @ORANGEFS_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %12, align 8
  %62 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 %60, i32* %65, align 4
  %66 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %12, align 8
  %67 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dentry*, %struct.dentry** %8, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* @ORANGEFS_NAME_MAX, align 8
  %77 = sub nsw i64 %76, 1
  %78 = call i32 @strncpy(i32 %71, i32 %75, i64 %77)
  %79 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %12, align 8
  %80 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dentry*, %struct.dentry** %10, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* @ORANGEFS_NAME_MAX, align 8
  %90 = sub nsw i64 %89, 1
  %91 = call i32 @strncpy(i32 %84, i32 %88, i64 %90)
  %92 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %12, align 8
  %93 = load %struct.dentry*, %struct.dentry** %8, align 8
  %94 = getelementptr inbounds %struct.dentry, %struct.dentry* %93, i32 0, i32 0
  %95 = load %struct.inode*, %struct.inode** %94, align 8
  %96 = call i32 @get_interruptible_flag(%struct.inode* %95)
  %97 = call i32 @service_operation(%struct.orangefs_kernel_op_s* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* @GOSSIP_NAME_DEBUG, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 (i32, i8*, ...) @gossip_debug(i32 %98, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load %struct.dentry*, %struct.dentry** %10, align 8
  %102 = getelementptr inbounds %struct.dentry, %struct.dentry* %101, i32 0, i32 0
  %103 = load %struct.inode*, %struct.inode** %102, align 8
  %104 = icmp ne %struct.inode* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %47
  %106 = load %struct.dentry*, %struct.dentry** %10, align 8
  %107 = getelementptr inbounds %struct.dentry, %struct.dentry* %106, i32 0, i32 0
  %108 = load %struct.inode*, %struct.inode** %107, align 8
  %109 = call i8* @current_time(%struct.inode* %108)
  %110 = load %struct.dentry*, %struct.dentry** %10, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 0
  %112 = load %struct.inode*, %struct.inode** %111, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  store i8* %109, i8** %113, align 8
  br label %114

114:                                              ; preds = %105, %47
  %115 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %12, align 8
  %116 = call i32 @op_release(%struct.orangefs_kernel_op_s* %115)
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %114, %44, %17
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @gossip_debug(i32, i8*, ...) #1

declare dso_local i32 @d_count(%struct.dentry*) #1

declare dso_local i32 @memset(%struct.iattr*, i32, i32) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @__orangefs_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local %struct.orangefs_kernel_op_s* @op_alloc(i32) #1

declare dso_local %struct.TYPE_10__* @ORANGEFS_I(%struct.inode*) #1

declare dso_local i32 @strncpy(i32, i32, i64) #1

declare dso_local i32 @service_operation(%struct.orangefs_kernel_op_s*, i8*, i32) #1

declare dso_local i32 @get_interruptible_flag(%struct.inode*) #1

declare dso_local i32 @op_release(%struct.orangefs_kernel_op_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
