; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i64, i32 }
%struct.dentry = type { i32 }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kernel_lb_addr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"empty directory has nlink != 2 (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @udf_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
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
  br label %107

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
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @udf_get_lb_pblock(i32 %42, %struct.kernel_lb_addr* %10, i32 0)
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %93

49:                                               ; preds = %30
  %50 = load i32, i32* @ENOTEMPTY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = call i32 @empty_dir(%struct.inode* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %93

56:                                               ; preds = %49
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %59 = call i32 @udf_delete_entry(%struct.inode* %57, %struct.fileIdentDesc* %58, %struct.udf_fileident_bh* %7, %struct.fileIdentDesc* %9)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %93

63:                                               ; preds = %56
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 2
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @udf_warn(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %68, %63
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = call i32 @clear_nlink(%struct.inode* %77)
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = call i32 @inode_dec_link_count(%struct.inode* %81)
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i32 @current_time(%struct.inode* %83)
  %85 = load %struct.inode*, %struct.inode** %3, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.inode*, %struct.inode** %3, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 3
  store i32 %84, i32* %88, align 8
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 3
  store i32 %84, i32* %90, align 8
  %91 = load %struct.inode*, %struct.inode** %3, align 8
  %92 = call i32 @mark_inode_dirty(%struct.inode* %91)
  br label %93

93:                                               ; preds = %76, %62, %55, %48
  %94 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %95, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @brelse(i64 %101)
  br label %103

103:                                              ; preds = %99, %93
  %104 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @brelse(i64 %105)
  br label %107

107:                                              ; preds = %103, %29
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.fileIdentDesc* @udf_find_entry(%struct.inode*, i32*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.fileIdentDesc*) #1

declare dso_local i32 @PTR_ERR(%struct.fileIdentDesc*) #1

declare dso_local i32 @lelb_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @udf_get_lb_pblock(i32, %struct.kernel_lb_addr*, i32) #1

declare dso_local i32 @empty_dir(%struct.inode*) #1

declare dso_local i32 @udf_delete_entry(%struct.inode*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i32 @udf_warn(i32, i8*, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
