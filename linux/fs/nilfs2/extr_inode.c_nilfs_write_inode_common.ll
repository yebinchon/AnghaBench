; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_write_inode_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_write_inode_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nilfs_inode = type { i8*, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.nilfs_inode_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_write_inode_common(%struct.inode* %0, %struct.nilfs_inode* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_inode_info*, align 8
  %8 = alloca %struct.the_nilfs*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nilfs_inode* %1, %struct.nilfs_inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %9)
  store %struct.nilfs_inode_info* %10, %struct.nilfs_inode_info** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @cpu_to_le16(i32 %13)
  %15 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %16 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %15, i32 0, i32 14
  store i8* %14, i8** %16, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @i_uid_read(%struct.inode* %17)
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %21 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %20, i32 0, i32 13
  store i8* %19, i8** %21, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @i_gid_read(%struct.inode* %22)
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %26 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %25, i32 0, i32 12
  store i8* %24, i8** %26, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %32 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %31, i32 0, i32 11
  store i8* %30, i8** %32, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cpu_to_le64(i32 %35)
  %37 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %38 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %37, i32 0, i32 10
  store i8* %36, i8** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_le64(i32 %42)
  %44 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %45 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %44, i32 0, i32 9
  store i8* %43, i8** %45, align 8
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le64(i32 %49)
  %51 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %52 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %59 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %66 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @cpu_to_le64(i32 %69)
  %71 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %72 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %74 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %78 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %84 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @NILFS_ROOT_METADATA_FILE(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %3
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.the_nilfs*, %struct.the_nilfs** %94, align 8
  store %struct.the_nilfs* %95, %struct.the_nilfs** %8, align 8
  %96 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %97 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %99 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %101 = bitcast %struct.nilfs_inode* %100 to i8*
  %102 = getelementptr i8, i8* %101, i64 120
  %103 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %104 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %105, 120
  %107 = call i32 @memset(i8* %102, i32 0, i64 %106)
  br label %108

108:                                              ; preds = %90, %3
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %113 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %116 = call i32 @nilfs_bmap_write(i32 %114, %struct.nilfs_inode* %115)
  br label %138

117:                                              ; preds = %108
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @S_ISCHR(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load %struct.inode*, %struct.inode** %4, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @S_ISBLK(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %123, %117
  %130 = load %struct.inode*, %struct.inode** %4, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @huge_encode_dev(i32 %132)
  %134 = call i8* @cpu_to_le64(i32 %133)
  %135 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %136 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %129, %123
  br label %138

138:                                              ; preds = %137, %111
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @NILFS_ROOT_METADATA_FILE(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @nilfs_bmap_write(i32, %struct.nilfs_inode*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @huge_encode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
