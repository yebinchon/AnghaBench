; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@udf_adinicb_aops = common dso_local global i32 0, align 4
@udf_aops = common dso_local global i32 0, align 4
@udf_file_inode_operations = common dso_local global i32 0, align 4
@udf_file_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @udf_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.inode* @udf_new_inode(%struct.inode* %11, i32 %12)
  store %struct.inode* %13, %struct.inode** %10, align 8
  %14 = load %struct.inode*, %struct.inode** %10, align 8
  %15 = call i64 @IS_ERR(%struct.inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call i32 @PTR_ERR(%struct.inode* %18)
  store i32 %19, i32* %5, align 4
  br label %45

20:                                               ; preds = %4
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = call %struct.TYPE_4__* @UDF_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32* @udf_adinicb_aops, i32** %30, align 8
  br label %35

31:                                               ; preds = %20
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32* @udf_aops, i32** %34, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  store i32* @udf_file_inode_operations, i32** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  store i32* @udf_file_operations, i32** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call i32 @mark_inode_dirty(%struct.inode* %40)
  %42 = load %struct.dentry*, %struct.dentry** %7, align 8
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call i32 @udf_add_nondir(%struct.dentry* %42, %struct.inode* %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %35, %17
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.inode* @udf_new_inode(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @UDF_I(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @udf_add_nondir(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
