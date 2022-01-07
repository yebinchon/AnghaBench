; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.fileIdentDesc = type { i32, %struct.TYPE_3__ }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.kernel_lb_addr = type { i32 }

@UDF_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @udf_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @udf_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.fileIdentDesc, align 4
  %10 = alloca %struct.udf_fileident_bh, align 8
  %11 = alloca %struct.fileIdentDesc*, align 8
  %12 = alloca %struct.kernel_lb_addr, align 4
  %13 = alloca %struct.kernel_lb_addr, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UDF_NAME_LEN, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @ENAMETOOLONG, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.dentry* @ERR_PTR(i32 %22)
  store %struct.dentry* %23, %struct.dentry** %4, align 8
  br label %78

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = bitcast %struct.fileIdentDesc* %9 to %struct.inode*
  %29 = call %struct.inode* @udf_find_entry(%struct.inode* %25, %struct.TYPE_4__* %27, %struct.udf_fileident_bh* %10, %struct.inode* %28)
  %30 = bitcast %struct.inode* %29 to %struct.fileIdentDesc*
  store %struct.fileIdentDesc* %30, %struct.fileIdentDesc** %11, align 8
  %31 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %11, align 8
  %32 = bitcast %struct.fileIdentDesc* %31 to %struct.inode*
  %33 = call i64 @IS_ERR(%struct.inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %11, align 8
  %37 = bitcast %struct.fileIdentDesc* %36 to %struct.inode*
  %38 = call %struct.dentry* @ERR_CAST(%struct.inode* %37)
  store %struct.dentry* %38, %struct.dentry** %4, align 8
  br label %78

39:                                               ; preds = %24
  %40 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %11, align 8
  %41 = icmp ne %struct.fileIdentDesc* %40, null
  br i1 %41, label %42, label %74

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %10, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %10, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %10, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @brelse(i64 %50)
  br label %52

52:                                               ; preds = %48, %42
  %53 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %10, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @brelse(i64 %54)
  %56 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @lelb_to_cpu(i32 %58)
  %60 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %13, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = bitcast %struct.kernel_lb_addr* %12 to i8*
  %62 = bitcast %struct.kernel_lb_addr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.inode* @udf_iget(i32 %65, %struct.kernel_lb_addr* %12)
  store %struct.inode* %66, %struct.inode** %8, align 8
  %67 = load %struct.inode*, %struct.inode** %8, align 8
  %68 = call i64 @IS_ERR(%struct.inode* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %52
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = call %struct.dentry* @ERR_CAST(%struct.inode* %71)
  store %struct.dentry* %72, %struct.dentry** %4, align 8
  br label %78

73:                                               ; preds = %52
  br label %74

74:                                               ; preds = %73, %39
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = load %struct.dentry*, %struct.dentry** %6, align 8
  %77 = call %struct.dentry* @d_splice_alias(%struct.inode* %75, %struct.dentry* %76)
  store %struct.dentry* %77, %struct.dentry** %4, align 8
  br label %78

78:                                               ; preds = %74, %70, %35, %20
  %79 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %79
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @udf_find_entry(%struct.inode*, %struct.TYPE_4__*, %struct.udf_fileident_bh*, %struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @lelb_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.inode* @udf_iget(i32, %struct.kernel_lb_addr*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
