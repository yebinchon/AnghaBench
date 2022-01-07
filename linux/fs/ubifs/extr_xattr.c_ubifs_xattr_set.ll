; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_ubifs_xattr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_ubifs_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.fscrypt_name = type { i32 }
%struct.ubifs_dent_node = type { i32 }
%union.ubifs_key = type { i32 }

@UBIFS_MAX_INO_DATA = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@UBIFS_MAX_NLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@UBIFS_MAX_XENT_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_xattr_set(%struct.inode* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.ubifs_info*, align 8
  %16 = alloca %struct.fscrypt_name, align 4
  %17 = alloca %struct.ubifs_dent_node*, align 8
  %18 = alloca %union.ubifs_key, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %23, align 8
  store %struct.ubifs_info* %24, %struct.ubifs_info** %15, align 8
  %25 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %16, i32 0, i32 0
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32 @FSTR_INIT(i8* %26, i32 %28)
  store i32 %29, i32* %25, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %6
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %15, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = call i32 @inode_is_locked(%struct.inode* %34)
  %36 = call i32 @ubifs_assert(%struct.ubifs_info* %33, i32 %35)
  br label %37

37:                                               ; preds = %32, %6
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @UBIFS_MAX_INO_DATA, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ERANGE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %126

44:                                               ; preds = %37
  %45 = call i64 @fname_len(%struct.fscrypt_name* %16)
  %46 = load i64, i64* @UBIFS_MAX_NLEN, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @ENAMETOOLONG, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %126

51:                                               ; preds = %44
  %52 = load i32, i32* @UBIFS_MAX_XENT_NODE_SZ, align 4
  %53 = load i32, i32* @GFP_NOFS, align 4
  %54 = call %struct.ubifs_dent_node* @kmalloc(i32 %52, i32 %53)
  store %struct.ubifs_dent_node* %54, %struct.ubifs_dent_node** %17, align 8
  %55 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %17, align 8
  %56 = icmp ne %struct.ubifs_dent_node* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %126

60:                                               ; preds = %51
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %15, align 8
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @xent_key_init(%struct.ubifs_info* %61, %union.ubifs_key* %18, i32 %64, %struct.fscrypt_name* %16)
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %15, align 8
  %67 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %17, align 8
  %68 = call i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info* %66, %union.ubifs_key* %18, %struct.ubifs_dent_node* %67, %struct.fscrypt_name* %16)
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %19, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %60
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %122

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @XATTR_REPLACE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @ENODATA, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %19, align 4
  br label %91

85:                                               ; preds = %77
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %15, align 8
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @create_xattr(%struct.ubifs_info* %86, %struct.inode* %87, %struct.fscrypt_name* %16, i8* %88, i64 %89)
  store i32 %90, i32* %19, align 4
  br label %91

91:                                               ; preds = %85, %82
  br label %122

92:                                               ; preds = %60
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @XATTR_CREATE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @EEXIST, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %19, align 4
  br label %122

100:                                              ; preds = %92
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %15, align 8
  %102 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %17, align 8
  %103 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le64_to_cpu(i32 %104)
  %106 = call %struct.inode* @iget_xattr(%struct.ubifs_info* %101, i32 %105)
  store %struct.inode* %106, %struct.inode** %14, align 8
  %107 = load %struct.inode*, %struct.inode** %14, align 8
  %108 = call i64 @IS_ERR(%struct.inode* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load %struct.inode*, %struct.inode** %14, align 8
  %112 = call i32 @PTR_ERR(%struct.inode* %111)
  store i32 %112, i32* %19, align 4
  br label %122

113:                                              ; preds = %100
  %114 = load %struct.ubifs_info*, %struct.ubifs_info** %15, align 8
  %115 = load %struct.inode*, %struct.inode** %8, align 8
  %116 = load %struct.inode*, %struct.inode** %14, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = call i32 @change_xattr(%struct.ubifs_info* %114, %struct.inode* %115, %struct.inode* %116, i8* %117, i64 %118)
  store i32 %119, i32* %19, align 4
  %120 = load %struct.inode*, %struct.inode** %14, align 8
  %121 = call i32 @iput(%struct.inode* %120)
  br label %122

122:                                              ; preds = %113, %110, %97, %91, %76
  %123 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %17, align 8
  %124 = call i32 @kfree(%struct.ubifs_dent_node* %123)
  %125 = load i32, i32* %19, align 4
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %122, %57, %48, %41
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i32 @FSTR_INIT(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @inode_is_locked(%struct.inode*) #1

declare dso_local i64 @fname_len(%struct.fscrypt_name*) #1

declare dso_local %struct.ubifs_dent_node* @kmalloc(i32, i32) #1

declare dso_local i32 @xent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_dent_node*, %struct.fscrypt_name*) #1

declare dso_local i32 @create_xattr(%struct.ubifs_info*, %struct.inode*, %struct.fscrypt_name*, i8*, i64) #1

declare dso_local %struct.inode* @iget_xattr(%struct.ubifs_info*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @change_xattr(%struct.ubifs_info*, %struct.inode*, %struct.inode*, i8*, i64) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
