; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_read_inode_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_read_inode_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i8*, i8*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.nilfs_inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nilfs_inode_info = type { i32, i32, i64, i8*, i8*, i8* }

@ESTALE = common dso_local global i32 0, align 4
@NILFS_I_BMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_read_inode_common(%struct.inode* %0, %struct.nilfs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_inode*, align 8
  %6 = alloca %struct.nilfs_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nilfs_inode* %1, %struct.nilfs_inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %8)
  store %struct.nilfs_inode_info* %9, %struct.nilfs_inode_info** %6, align 8
  %10 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %11 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %10, i32 0, i32 13
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le16_to_cpu(i32 %12)
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %18 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @le32_to_cpu(i32 %19)
  %21 = call i32 @i_uid_write(%struct.inode* %16, i8* %20)
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %24 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @le32_to_cpu(i32 %25)
  %27 = call i32 @i_gid_write(%struct.inode* %22, i8* %26)
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %30 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = call i32 @set_nlink(%struct.inode* %28, i32 %32)
  %34 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %35 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le64_to_cpu(i32 %36)
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %41 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le64_to_cpu(i32 %42)
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %48 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @le64_to_cpu(i32 %49)
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %55 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le64_to_cpu(i32 %56)
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %62 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le32_to_cpu(i32 %63)
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %69 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @le32_to_cpu(i32 %70)
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i8* %71, i8** %74, align 8
  %75 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %76 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le32_to_cpu(i32 %77)
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load %struct.inode*, %struct.inode** %4, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %2
  %87 = load i32, i32* @ESTALE, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %143

89:                                               ; preds = %2
  %90 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %91 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le64_to_cpu(i32 %92)
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %97 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @le32_to_cpu(i32 %98)
  %100 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %101 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %103 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %105 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @le32_to_cpu(i32 %106)
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.inode*, %struct.inode** %4, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @S_ISREG(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %89
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @S_ISDIR(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load %struct.inode*, %struct.inode** %4, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @S_ISLNK(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %121, %115, %89
  %128 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %129 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %132 = call i32 @nilfs_bmap_read(i32 %130, %struct.nilfs_inode* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %3, align 4
  br label %143

137:                                              ; preds = %127
  %138 = load i32, i32* @NILFS_I_BMAP, align 4
  %139 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %140 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %139, i32 0, i32 0
  %141 = call i32 @set_bit(i32 %138, i32* %140)
  br label %142

142:                                              ; preds = %137, %121
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %135, %86
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i8*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @nilfs_bmap_read(i32, %struct.nilfs_inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
