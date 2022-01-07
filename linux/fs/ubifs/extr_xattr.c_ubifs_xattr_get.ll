; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_ubifs_xattr_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_ubifs_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.fscrypt_name = type { i32 }
%struct.ubifs_inode = type { i64, i64, i32, i32 }
%struct.ubifs_dent_node = type { i32 }
%union.ubifs_key = type { i32 }

@UBIFS_MAX_NLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@UBIFS_MAX_XENT_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_xattr_get(%struct.inode* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_info*, align 8
  %12 = alloca %struct.fscrypt_name, align 4
  %13 = alloca %struct.ubifs_inode*, align 8
  %14 = alloca %struct.ubifs_dent_node*, align 8
  %15 = alloca %union.ubifs_key, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %20, align 8
  store %struct.ubifs_info* %21, %struct.ubifs_info** %11, align 8
  %22 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %12, i32 0, i32 0
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = call i32 @FSTR_INIT(i8* %23, i32 %25)
  store i32 %26, i32* %22, align 4
  %27 = call i64 @fname_len(%struct.fscrypt_name* %12)
  %28 = load i64, i64* @UBIFS_MAX_NLEN, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @ENAMETOOLONG, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %137

33:                                               ; preds = %4
  %34 = load i32, i32* @UBIFS_MAX_XENT_NODE_SZ, align 4
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call %struct.ubifs_dent_node* @kmalloc(i32 %34, i32 %35)
  store %struct.ubifs_dent_node* %36, %struct.ubifs_dent_node** %14, align 8
  %37 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %14, align 8
  %38 = icmp ne %struct.ubifs_dent_node* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %137

42:                                               ; preds = %33
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @xent_key_init(%struct.ubifs_info* %43, %union.ubifs_key* %15, i32 %46, %struct.fscrypt_name* %12)
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %49 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %14, align 8
  %50 = call i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info* %48, %union.ubifs_key* %15, %struct.ubifs_dent_node* %49, %struct.fscrypt_name* %12)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @ENODATA, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %58, %53
  br label %133

62:                                               ; preds = %42
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %64 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %14, align 8
  %65 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le64_to_cpu(i32 %66)
  %68 = call %struct.inode* @iget_xattr(%struct.ubifs_info* %63, i32 %67)
  store %struct.inode* %68, %struct.inode** %10, align 8
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = call i64 @IS_ERR(%struct.inode* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call i32 @PTR_ERR(%struct.inode* %73)
  store i32 %74, i32* %16, align 4
  br label %133

75:                                               ; preds = %62
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %76)
  store %struct.ubifs_inode* %77, %struct.ubifs_inode** %13, align 8
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %83 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @ubifs_assert(%struct.ubifs_info* %78, i32 %86)
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %94 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ugt i64 %92, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @ubifs_assert(%struct.ubifs_info* %88, i32 %97)
  %99 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %100 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %99, i32 0, i32 2
  %101 = call i32 @mutex_lock(i32* %100)
  %102 = load i8*, i8** %8, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %122

104:                                              ; preds = %75
  %105 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %106 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @ERANGE, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %16, align 4
  br label %127

113:                                              ; preds = %104
  %114 = load i8*, i8** %8, align 8
  %115 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %116 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %119 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @memcpy(i8* %114, i32 %117, i64 %120)
  br label %122

122:                                              ; preds = %113, %75
  %123 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %124 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %16, align 4
  br label %127

127:                                              ; preds = %122, %110
  %128 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %129 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %128, i32 0, i32 2
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load %struct.inode*, %struct.inode** %10, align 8
  %132 = call i32 @iput(%struct.inode* %131)
  br label %133

133:                                              ; preds = %127, %72, %61
  %134 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %14, align 8
  %135 = call i32 @kfree(%struct.ubifs_dent_node* %134)
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %39, %30
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @FSTR_INIT(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @fname_len(%struct.fscrypt_name*) #1

declare dso_local %struct.ubifs_dent_node* @kmalloc(i32, i32) #1

declare dso_local i32 @xent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_dent_node*, %struct.fscrypt_name*) #1

declare dso_local %struct.inode* @iget_xattr(%struct.ubifs_info*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
