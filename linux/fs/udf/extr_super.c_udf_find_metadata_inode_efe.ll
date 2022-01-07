; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_find_metadata_inode_efe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_find_metadata_inode_efe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.kernel_lb_addr = type { i8*, i8* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"metadata inode efe not found\0A\00", align 1
@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"metadata inode efe does not have short allocation descriptors!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @udf_find_metadata_inode_efe(%struct.super_block* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kernel_lb_addr, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %8, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %8, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.inode* @udf_iget_special(%struct.super_block* %14, %struct.kernel_lb_addr* %8)
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = call i64 @IS_ERR(%struct.inode* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = call i32 @udf_warn(%struct.super_block* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %22, %struct.inode** %4, align 8
  br label %40

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = call %struct.TYPE_2__* @UDF_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = call i32 @udf_warn(%struct.super_block* %31, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call i32 @iput(%struct.inode* %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.inode* @ERR_PTR(i32 %36)
  store %struct.inode* %37, %struct.inode** %4, align 8
  br label %40

38:                                               ; preds = %23
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %39, %struct.inode** %4, align 8
  br label %40

40:                                               ; preds = %38, %30, %19
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %41
}

declare dso_local %struct.inode* @udf_iget_special(%struct.super_block*, %struct.kernel_lb_addr*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @udf_warn(%struct.super_block*, i8*) #1

declare dso_local %struct.TYPE_2__* @UDF_I(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
