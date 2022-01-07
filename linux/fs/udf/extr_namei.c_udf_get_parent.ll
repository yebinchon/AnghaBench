; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.fileIdentDesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.udf_fileident_bh = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @udf_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @udf_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kernel_lb_addr, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr, align 4
  %7 = alloca %struct.fileIdentDesc, align 4
  %8 = alloca %struct.udf_fileident_bh, align 8
  %9 = alloca %struct.kernel_lb_addr, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  %10 = call i32 @QSTR_INIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %11 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = call i32 @d_inode(%struct.dentry* %12)
  %14 = call i32 @udf_find_entry(i32 %13, %struct.qstr* %6, %struct.udf_fileident_bh* %8, %struct.fileIdentDesc* %7)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EACCES, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dentry* @ERR_PTR(i32 %18)
  store %struct.dentry* %19, %struct.dentry** %2, align 8
  br label %54

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @brelse(i64 %28)
  br label %30

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @brelse(i64 %32)
  %34 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %7, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @lelb_to_cpu(i32 %36)
  %38 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %9, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.kernel_lb_addr* %4 to i8*
  %40 = bitcast %struct.kernel_lb_addr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.dentry*, %struct.dentry** %3, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.inode* @udf_iget(i32 %43, %struct.kernel_lb_addr* %4)
  store %struct.inode* %44, %struct.inode** %5, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i64 @IS_ERR(%struct.inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %30
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call %struct.dentry* @ERR_CAST(%struct.inode* %49)
  store %struct.dentry* %50, %struct.dentry** %2, align 8
  br label %54

51:                                               ; preds = %30
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call %struct.dentry* @d_obtain_alias(%struct.inode* %52)
  store %struct.dentry* %53, %struct.dentry** %2, align 8
  br label %54

54:                                               ; preds = %51, %48, %16
  %55 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %55
}

declare dso_local i32 @QSTR_INIT(i8*, i32) #1

declare dso_local i32 @udf_find_entry(i32, %struct.qstr*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @lelb_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.inode* @udf_iget(i32, %struct.kernel_lb_addr*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
