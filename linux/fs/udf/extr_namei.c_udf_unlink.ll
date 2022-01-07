; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kernel_lb_addr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Deleting nonexistent file (%lu), %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @udf_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.udf_fileident_bh, align 8
  %8 = alloca %struct.fileIdentDesc*, align 8
  %9 = alloca %struct.fileIdentDesc, align 4
  %10 = alloca %struct.kernel_lb_addr, align 4
  %11 = alloca %struct.kernel_lb_addr, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = call %struct.fileIdentDesc* @udf_find_entry(%struct.inode* %16, i32* %18, %struct.udf_fileident_bh* %7, %struct.fileIdentDesc* %9)
  store %struct.fileIdentDesc* %19, %struct.fileIdentDesc** %8, align 8
  %20 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %21 = call i64 @IS_ERR_OR_NULL(%struct.fileIdentDesc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %25 = icmp ne %struct.fileIdentDesc* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.fileIdentDesc* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %101

30:                                               ; preds = %2
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  %33 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @lelb_to_cpu(i32 %35)
  %37 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.kernel_lb_addr* %10 to i8*
  %39 = bitcast %struct.kernel_lb_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @udf_get_lb_pblock(i32 %42, %struct.kernel_lb_addr* %10, i32 0)
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %87

49:                                               ; preds = %30
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @udf_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %57, i32 %60)
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call i32 @set_nlink(%struct.inode* %62, i32 1)
  br label %64

64:                                               ; preds = %54, %49
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %67 = call i32 @udf_delete_entry(%struct.inode* %65, %struct.fileIdentDesc* %66, %struct.udf_fileident_bh* %7, %struct.fileIdentDesc* %9)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %87

71:                                               ; preds = %64
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = call i32 @current_time(%struct.inode* %72)
  %74 = load %struct.inode*, %struct.inode** %3, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 8
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = call i32 @mark_inode_dirty(%struct.inode* %78)
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = call i32 @inode_dec_link_count(%struct.inode* %80)
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %71, %70, %48
  %88 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @brelse(i64 %95)
  br label %97

97:                                               ; preds = %93, %87
  %98 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @brelse(i64 %99)
  br label %101

101:                                              ; preds = %97, %29
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.fileIdentDesc* @udf_find_entry(%struct.inode*, i32*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.fileIdentDesc*) #1

declare dso_local i32 @PTR_ERR(%struct.fileIdentDesc*) #1

declare dso_local i32 @lelb_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @udf_get_lb_pblock(i32, %struct.kernel_lb_addr*, i32) #1

declare dso_local i32 @udf_debug(i8*, i64, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @udf_delete_entry(%struct.inode*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @brelse(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
