; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_unmount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_kernel_op_s = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ORANGEFS_VFS_OP_FS_UMOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ORANGEFS_MAX_SERVER_ADDR_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"orangefs_fs_umount\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"orangefs_unmount: service_operation %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @orangefs_unmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_unmount(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.orangefs_kernel_op_s*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @ORANGEFS_VFS_OP_FS_UMOUNT, align 4
  %11 = call %struct.orangefs_kernel_op_s* @op_alloc(i32 %10)
  store %struct.orangefs_kernel_op_s* %11, %struct.orangefs_kernel_op_s** %8, align 8
  %12 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %8, align 8
  %13 = icmp ne %struct.orangefs_kernel_op_s* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %51

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %8, align 8
  %20 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %8, align 8
  %26 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 %24, i32* %29, align 4
  %30 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %8, align 8
  %31 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* @ORANGEFS_MAX_SERVER_ADDR_LEN, align 8
  %38 = sub nsw i64 %37, 1
  %39 = call i32 @strncpy(i32 %35, i8* %36, i64 %38)
  %40 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %8, align 8
  %41 = call i32 @service_operation(%struct.orangefs_kernel_op_s* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %17
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @gossip_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %17
  %48 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %8, align 8
  %49 = call i32 @op_release(%struct.orangefs_kernel_op_s* %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.orangefs_kernel_op_s* @op_alloc(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @service_operation(%struct.orangefs_kernel_op_s*, i8*, i32) #1

declare dso_local i32 @gossip_err(i8*, i32) #1

declare dso_local i32 @op_release(%struct.orangefs_kernel_op_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
