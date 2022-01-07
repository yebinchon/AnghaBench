; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_tmpfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_tmpfile.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @udf_tmpfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_tmpfile(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.inode* @udf_new_inode(%struct.inode* %9, i32 %10)
  store %struct.inode* %11, %struct.inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %8, align 8
  %13 = call i64 @IS_ERR(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call i32 @PTR_ERR(%struct.inode* %16)
  store i32 %17, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call %struct.TYPE_4__* @UDF_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32* @udf_adinicb_aops, i32** %28, align 8
  br label %33

29:                                               ; preds = %18
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32* @udf_aops, i32** %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  store i32* @udf_file_inode_operations, i32** %35, align 8
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  store i32* @udf_file_operations, i32** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call i32 @mark_inode_dirty(%struct.inode* %38)
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call i32 @d_tmpfile(%struct.dentry* %40, %struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call i32 @unlock_new_inode(%struct.inode* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %33, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.inode* @udf_new_inode(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @UDF_I(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @d_tmpfile(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
