; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.inode*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dentry = type { %struct.dentry*, i32, i32, %struct.TYPE_2__ }
%struct.ext4_dir_entry_2 = type { i32 }
%struct.buffer_head = type { %struct.buffer_head*, i32, i32, %struct.TYPE_2__ }

@EXT4_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bad inode number: %u\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"'%pd' linked to parent dir\00", align 1
@EXT4_IGET_NORMAL = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"deleted inode referenced: %u\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Inconsistent encryption contexts: %lu/%lu\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @ext4_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ext4_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_dir_entry_2*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EXT4_NAME_LEN, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @ENAMETOOLONG, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.inode* @ERR_PTR(i32 %20)
  %22 = bitcast %struct.inode* %21 to %struct.dentry*
  store %struct.dentry* %22, %struct.dentry** %4, align 8
  br label %150

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = bitcast %struct.dentry* %25 to %struct.inode*
  %27 = call %struct.inode* @ext4_lookup_entry(%struct.inode* %24, %struct.inode* %26, %struct.ext4_dir_entry_2** %9)
  %28 = bitcast %struct.inode* %27 to %struct.buffer_head*
  store %struct.buffer_head* %28, %struct.buffer_head** %10, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %30 = bitcast %struct.buffer_head* %29 to %struct.inode*
  %31 = call i64 @IS_ERR(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %35 = bitcast %struct.buffer_head* %34 to %struct.inode*
  %36 = call %struct.inode* @ERR_CAST(%struct.inode* %35)
  %37 = bitcast %struct.inode* %36 to %struct.dentry*
  store %struct.dentry* %37, %struct.dentry** %4, align 8
  br label %150

38:                                               ; preds = %23
  store %struct.inode* null, %struct.inode** %8, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %40 = icmp ne %struct.buffer_head* %39, null
  br i1 %40, label %41, label %144

41:                                               ; preds = %38
  %42 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %43 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.inode* @le32_to_cpu(i32 %44)
  store %struct.inode* %45, %struct.inode** %11, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %47 = bitcast %struct.buffer_head* %46 to %struct.inode*
  %48 = call i32 @brelse(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.inode*, %struct.inode** %11, align 8
  %53 = call i32 @ext4_valid_inum(i32 %51, %struct.inode* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %41
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load %struct.inode*, %struct.inode** %11, align 8
  %58 = call i32 @EXT4_ERROR_INODE(%struct.inode* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.inode* %57)
  %59 = load i32, i32* @EFSCORRUPTED, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.inode* @ERR_PTR(i32 %60)
  %62 = bitcast %struct.inode* %61 to %struct.dentry*
  store %struct.dentry* %62, %struct.dentry** %4, align 8
  br label %150

63:                                               ; preds = %41
  %64 = load %struct.inode*, %struct.inode** %11, align 8
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load %struct.inode*, %struct.inode** %66, align 8
  %68 = icmp eq %struct.inode* %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = bitcast %struct.dentry* %74 to %struct.inode*
  %76 = call i32 @EXT4_ERROR_INODE(%struct.inode* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %75)
  %77 = load i32, i32* @EFSCORRUPTED, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.inode* @ERR_PTR(i32 %78)
  %80 = bitcast %struct.inode* %79 to %struct.dentry*
  store %struct.dentry* %80, %struct.dentry** %4, align 8
  br label %150

81:                                               ; preds = %63
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.inode*, %struct.inode** %11, align 8
  %86 = load i32, i32* @EXT4_IGET_NORMAL, align 4
  %87 = call %struct.inode* @ext4_iget(i32 %84, %struct.inode* %85, i32 %86)
  store %struct.inode* %87, %struct.inode** %8, align 8
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = load i32, i32* @ESTALE, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.inode* @ERR_PTR(i32 %90)
  %92 = icmp eq %struct.inode* %88, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %81
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = load %struct.inode*, %struct.inode** %11, align 8
  %96 = call i32 @EXT4_ERROR_INODE(%struct.inode* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %95)
  %97 = load i32, i32* @EFSCORRUPTED, align 4
  %98 = sub nsw i32 0, %97
  %99 = call %struct.inode* @ERR_PTR(i32 %98)
  %100 = bitcast %struct.inode* %99 to %struct.dentry*
  store %struct.dentry* %100, %struct.dentry** %4, align 8
  br label %150

101:                                              ; preds = %81
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = call i64 @IS_ERR(%struct.inode* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %143, label %105

105:                                              ; preds = %101
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = call i64 @IS_ENCRYPTED(%struct.inode* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %105
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @S_ISDIR(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load %struct.inode*, %struct.inode** %8, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @S_ISLNK(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %115, %109
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = call i32 @fscrypt_has_permitted_context(%struct.inode* %122, %struct.inode* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %121
  %127 = load %struct.inode*, %struct.inode** %8, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  %132 = load %struct.inode*, %struct.inode** %131, align 8
  %133 = load %struct.inode*, %struct.inode** %8, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  %135 = load %struct.inode*, %struct.inode** %134, align 8
  %136 = call i32 @ext4_warning(i32 %129, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), %struct.inode* %132, %struct.inode* %135)
  %137 = load %struct.inode*, %struct.inode** %8, align 8
  %138 = call i32 @iput(%struct.inode* %137)
  %139 = load i32, i32* @EPERM, align 4
  %140 = sub nsw i32 0, %139
  %141 = call %struct.inode* @ERR_PTR(i32 %140)
  %142 = bitcast %struct.inode* %141 to %struct.dentry*
  store %struct.dentry* %142, %struct.dentry** %4, align 8
  br label %150

143:                                              ; preds = %121, %115, %105, %101
  br label %144

144:                                              ; preds = %143, %38
  %145 = load %struct.inode*, %struct.inode** %8, align 8
  %146 = load %struct.dentry*, %struct.dentry** %6, align 8
  %147 = bitcast %struct.dentry* %146 to %struct.inode*
  %148 = call %struct.inode* @d_splice_alias(%struct.inode* %145, %struct.inode* %147)
  %149 = bitcast %struct.inode* %148 to %struct.dentry*
  store %struct.dentry* %149, %struct.dentry** %4, align 8
  br label %150

150:                                              ; preds = %144, %126, %93, %72, %55, %33, %18
  %151 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %151
}

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @ext4_lookup_entry(%struct.inode*, %struct.inode*, %struct.ext4_dir_entry_2**) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.inode* @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.inode*) #1

declare dso_local i32 @ext4_valid_inum(i32, %struct.inode*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, %struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.inode* @ext4_iget(i32, %struct.inode*, i32) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @fscrypt_has_permitted_context(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_warning(i32, i8*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @d_splice_alias(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
