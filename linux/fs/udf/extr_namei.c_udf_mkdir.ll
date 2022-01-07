; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i8*, i8* }
%struct.udf_inode_info = type { i32, i32 }
%struct.allocDescImpUse = type { i64 }

@S_IFDIR = common dso_local global i32 0, align 4
@udf_dir_inode_operations = common dso_local global i32 0, align 4
@udf_dir_operations = common dso_local global i32 0, align 4
@FID_FILE_CHAR_DIRECTORY = common dso_local global i32 0, align 4
@FID_FILE_CHAR_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @udf_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.udf_fileident_bh, align 8
  %10 = alloca %struct.fileIdentDesc, align 8
  %11 = alloca %struct.fileIdentDesc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.udf_inode_info*, align 8
  %14 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %15)
  store %struct.udf_inode_info* %16, %struct.udf_inode_info** %13, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load i32, i32* @S_IFDIR, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.inode* @udf_new_inode(%struct.inode* %17, i32 %20)
  store %struct.inode* %21, %struct.inode** %8, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call i64 @IS_ERR(%struct.inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call i32 @PTR_ERR(%struct.inode* %26)
  store i32 %27, i32* %4, align 4
  br label %163

28:                                               ; preds = %3
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %29)
  store %struct.udf_inode_info* %30, %struct.udf_inode_info** %14, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 4
  store i32* @udf_dir_inode_operations, i32** %32, align 8
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 3
  store i32* @udf_dir_operations, i32** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %35, %struct.dentry* null, %struct.udf_fileident_bh* %9, %struct.fileIdentDesc* %10, i32* %12)
  store %struct.fileIdentDesc* %36, %struct.fileIdentDesc** %11, align 8
  %37 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %11, align 8
  %38 = icmp ne %struct.fileIdentDesc* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call i32 @inode_dec_link_count(%struct.inode* %40)
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i32 @discard_new_inode(%struct.inode* %42)
  br label %161

44:                                               ; preds = %28
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = call i32 @set_nlink(%struct.inode* %45, i32 2)
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %56 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_lelb(i32 %57)
  %59 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %62 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = and i64 %64, 4294967295
  %66 = trunc i64 %65 to i32
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.allocDescImpUse*
  %72 = getelementptr inbounds %struct.allocDescImpUse, %struct.allocDescImpUse* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8**
  store i8* %67, i8** %74, align 8
  %75 = load i32, i32* @FID_FILE_CHAR_DIRECTORY, align 4
  %76 = load i32, i32* @FID_FILE_CHAR_PARENT, align 4
  %77 = or i32 %75, %76
  %78 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %11, align 8
  %81 = call i32 @udf_write_fi(%struct.inode* %79, %struct.fileIdentDesc* %10, %struct.fileIdentDesc* %80, %struct.udf_fileident_bh* %9, i32* null, i32* null)
  %82 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @brelse(i64 %83)
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = call i32 @mark_inode_dirty(%struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = load %struct.dentry*, %struct.dentry** %6, align 8
  %89 = call %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %87, %struct.dentry* %88, %struct.udf_fileident_bh* %9, %struct.fileIdentDesc* %10, i32* %12)
  store %struct.fileIdentDesc* %89, %struct.fileIdentDesc** %11, align 8
  %90 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %11, align 8
  %91 = icmp ne %struct.fileIdentDesc* %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %44
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = call i32 @clear_nlink(%struct.inode* %93)
  %95 = load %struct.inode*, %struct.inode** %8, align 8
  %96 = call i32 @mark_inode_dirty(%struct.inode* %95)
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = call i32 @discard_new_inode(%struct.inode* %97)
  br label %161

99:                                               ; preds = %44
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 2
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @cpu_to_le32(i32 %104)
  %106 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %109 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @cpu_to_lelb(i32 %110)
  %112 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %115 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = and i64 %117, 4294967295
  %119 = trunc i64 %118 to i32
  %120 = call i8* @cpu_to_le32(i32 %119)
  %121 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to %struct.allocDescImpUse*
  %125 = getelementptr inbounds %struct.allocDescImpUse, %struct.allocDescImpUse* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i8**
  store i8* %120, i8** %127, align 8
  %128 = load i32, i32* @FID_FILE_CHAR_DIRECTORY, align 4
  %129 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 8
  %132 = load %struct.inode*, %struct.inode** %5, align 8
  %133 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %11, align 8
  %134 = call i32 @udf_write_fi(%struct.inode* %132, %struct.fileIdentDesc* %10, %struct.fileIdentDesc* %133, %struct.udf_fileident_bh* %9, i32* null, i32* null)
  %135 = load %struct.inode*, %struct.inode** %5, align 8
  %136 = call i32 @inc_nlink(%struct.inode* %135)
  %137 = load %struct.inode*, %struct.inode** %5, align 8
  %138 = call i32 @current_time(%struct.inode* %137)
  %139 = load %struct.inode*, %struct.inode** %5, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.inode*, %struct.inode** %5, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 1
  store i32 %138, i32* %142, align 4
  %143 = load %struct.inode*, %struct.inode** %5, align 8
  %144 = call i32 @mark_inode_dirty(%struct.inode* %143)
  %145 = load %struct.dentry*, %struct.dentry** %6, align 8
  %146 = load %struct.inode*, %struct.inode** %8, align 8
  %147 = call i32 @d_instantiate_new(%struct.dentry* %145, %struct.inode* %146)
  %148 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %149, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %99
  %154 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @brelse(i64 %155)
  br label %157

157:                                              ; preds = %153, %99
  %158 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @brelse(i64 %159)
  store i32 0, i32* %12, align 4
  br label %161

161:                                              ; preds = %157, %92, %39
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %161, %25
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local %struct.inode* @udf_new_inode(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.fileIdentDesc* @udf_add_entry(%struct.inode*, %struct.dentry*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_lelb(i32) #1

declare dso_local i32 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32*, i32*) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
