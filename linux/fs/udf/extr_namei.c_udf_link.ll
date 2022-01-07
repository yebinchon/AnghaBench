; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8*, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.dentry = type { i32 }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i8* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.allocDescImpUse = type { i64 }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @udf_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.udf_fileident_bh, align 8
  %10 = alloca %struct.fileIdentDesc, align 8
  %11 = alloca %struct.fileIdentDesc*, align 8
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = call %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %15, %struct.dentry* %16, %struct.udf_fileident_bh* %9, %struct.fileIdentDesc* %10, i32* %12)
  store %struct.fileIdentDesc* %17, %struct.fileIdentDesc** %11, align 8
  %18 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %11, align 8
  %19 = icmp ne %struct.fileIdentDesc* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %4, align 4
  br label %106

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call %struct.TYPE_9__* @UDF_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cpu_to_lelb(i32 %34)
  %36 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call %struct.TYPE_8__* @UDF_SB(%struct.TYPE_7__* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %22
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = call i32 @lvid_get_unique_id(%struct.TYPE_7__* %48)
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.allocDescImpUse*
  %55 = getelementptr inbounds %struct.allocDescImpUse, %struct.allocDescImpUse* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8**
  store i8* %50, i8** %57, align 8
  br label %58

58:                                               ; preds = %45, %22
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %11, align 8
  %61 = call i32 @udf_write_fi(%struct.inode* %59, %struct.fileIdentDesc* %10, %struct.fileIdentDesc* %60, %struct.udf_fileident_bh* %9, i32* null, i32* null)
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call %struct.TYPE_9__* @UDF_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = call i32 @mark_inode_dirty(%struct.inode* %69)
  br label %71

71:                                               ; preds = %68, %58
  %72 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @brelse(i64 %79)
  br label %81

81:                                               ; preds = %77, %71
  %82 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @brelse(i64 %83)
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = call i32 @inc_nlink(%struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call i8* @current_time(%struct.inode* %87)
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = call i32 @mark_inode_dirty(%struct.inode* %91)
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = call i8* @current_time(%struct.inode* %93)
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  store i8* %94, i8** %98, align 8
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = call i32 @mark_inode_dirty(%struct.inode* %99)
  %101 = load %struct.inode*, %struct.inode** %8, align 8
  %102 = call i32 @ihold(%struct.inode* %101)
  %103 = load %struct.dentry*, %struct.dentry** %7, align 8
  %104 = load %struct.inode*, %struct.inode** %8, align 8
  %105 = call i32 @d_instantiate(%struct.dentry* %103, %struct.inode* %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %81, %20
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.fileIdentDesc* @udf_add_entry(%struct.inode*, %struct.dentry*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_lelb(i32) #1

declare dso_local %struct.TYPE_9__* @UDF_I(%struct.inode*) #1

declare dso_local %struct.TYPE_8__* @UDF_SB(%struct.TYPE_7__*) #1

declare dso_local i32 @lvid_get_unique_id(%struct.TYPE_7__*) #1

declare dso_local i32 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32*, i32*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
