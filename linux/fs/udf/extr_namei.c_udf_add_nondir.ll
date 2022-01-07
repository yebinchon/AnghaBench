; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_add_nondir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_add_nondir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.udf_inode_info = type { i32, i32 }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i8* }
%struct.allocDescImpUse = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*)* @udf_add_nondir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_add_nondir(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.udf_inode_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.udf_fileident_bh, align 8
  %9 = alloca %struct.fileIdentDesc, align 8
  %10 = alloca %struct.fileIdentDesc*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %12)
  store %struct.udf_inode_info* %13, %struct.udf_inode_info** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.inode* @d_inode(i32 %16)
  store %struct.inode* %17, %struct.inode** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = call %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %18, %struct.dentry* %19, %struct.udf_fileident_bh* %8, %struct.fileIdentDesc* %9, i32* %11)
  store %struct.fileIdentDesc* %20, %struct.fileIdentDesc** %10, align 8
  %21 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %10, align 8
  %22 = icmp ne %struct.fileIdentDesc* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call i32 @inode_dec_link_count(%struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i32 @discard_new_inode(%struct.inode* %30)
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %3, align 4
  br label %89

33:                                               ; preds = %2
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.udf_inode_info*, %struct.udf_inode_info** %6, align 8
  %43 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cpu_to_lelb(i32 %44)
  %46 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.udf_inode_info*, %struct.udf_inode_info** %6, align 8
  %49 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = and i64 %51, 4294967295
  %53 = trunc i64 %52 to i32
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.allocDescImpUse*
  %59 = getelementptr inbounds %struct.allocDescImpUse, %struct.allocDescImpUse* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8**
  store i8* %54, i8** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %10, align 8
  %64 = call i32 @udf_write_fi(%struct.inode* %62, %struct.fileIdentDesc* %9, %struct.fileIdentDesc* %63, %struct.udf_fileident_bh* %8, i32* null, i32* null)
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = call i32 @current_time(%struct.inode* %65)
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = call i32 @mark_inode_dirty(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %74, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %33
  %79 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @brelse(i64 %80)
  br label %82

82:                                               ; preds = %78, %33
  %83 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @brelse(i64 %84)
  %86 = load %struct.dentry*, %struct.dentry** %4, align 8
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = call i32 @d_instantiate_new(%struct.dentry* %86, %struct.inode* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %82, %27
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.fileIdentDesc* @udf_add_entry(%struct.inode*, %struct.dentry*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_lelb(i32) #1

declare dso_local i32 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32*, i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
