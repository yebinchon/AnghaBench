; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_ubifs_xattr_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_ubifs_xattr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.fscrypt_name = type { i32 }
%struct.ubifs_dent_node = type { i32 }
%union.ubifs_key = type { i32 }

@UBIFS_MAX_NLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@UBIFS_MAX_XENT_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @ubifs_xattr_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_xattr_remove(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %struct.fscrypt_name, align 4
  %9 = alloca %struct.ubifs_dent_node*, align 8
  %10 = alloca %union.ubifs_key, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %15, align 8
  store %struct.ubifs_info* %16, %struct.ubifs_info** %7, align 8
  %17 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %8, i32 0, i32 0
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call i32 @FSTR_INIT(i8* %18, i32 %20)
  store i32 %21, i32* %17, align 4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @inode_is_locked(%struct.inode* %23)
  %25 = call i32 @ubifs_assert(%struct.ubifs_info* %22, i32 %24)
  %26 = call i64 @fname_len(%struct.fscrypt_name* %8)
  %27 = load i64, i64* @UBIFS_MAX_NLEN, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @ENAMETOOLONG, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %100

32:                                               ; preds = %2
  %33 = load i32, i32* @UBIFS_MAX_XENT_NODE_SZ, align 4
  %34 = load i32, i32* @GFP_NOFS, align 4
  %35 = call %struct.ubifs_dent_node* @kmalloc(i32 %33, i32 %34)
  store %struct.ubifs_dent_node* %35, %struct.ubifs_dent_node** %9, align 8
  %36 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %9, align 8
  %37 = icmp ne %struct.ubifs_dent_node* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %100

41:                                               ; preds = %32
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xent_key_init(%struct.ubifs_info* %42, %union.ubifs_key* %10, i32 %45, %struct.fscrypt_name* %8)
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %48 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %9, align 8
  %49 = call i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info* %47, %union.ubifs_key* %10, %struct.ubifs_dent_node* %48, %struct.fscrypt_name* %8)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %41
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @ENODATA, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %57, %52
  br label %96

61:                                               ; preds = %41
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %63 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %9, align 8
  %64 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le64_to_cpu(i32 %65)
  %67 = call %struct.inode* @iget_xattr(%struct.ubifs_info* %62, i32 %66)
  store %struct.inode* %67, %struct.inode** %6, align 8
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = call i64 @IS_ERR(%struct.inode* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call i32 @PTR_ERR(%struct.inode* %72)
  store i32 %73, i32* %11, align 4
  br label %96

74:                                               ; preds = %61
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = call i32 @ubifs_assert(%struct.ubifs_info* %75, i32 %80)
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = call i32 @clear_nlink(%struct.inode* %82)
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = call i32 @remove_xattr(%struct.ubifs_info* %84, %struct.inode* %85, %struct.inode* %86, %struct.fscrypt_name* %8)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = call i32 @set_nlink(%struct.inode* %91, i32 1)
  br label %93

93:                                               ; preds = %90, %74
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = call i32 @iput(%struct.inode* %94)
  br label %96

96:                                               ; preds = %93, %71, %60
  %97 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %9, align 8
  %98 = call i32 @kfree(%struct.ubifs_dent_node* %97)
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %38, %29
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @FSTR_INIT(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @inode_is_locked(%struct.inode*) #1

declare dso_local i64 @fname_len(%struct.fscrypt_name*) #1

declare dso_local %struct.ubifs_dent_node* @kmalloc(i32, i32) #1

declare dso_local i32 @xent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_dent_node*, %struct.fscrypt_name*) #1

declare dso_local %struct.inode* @iget_xattr(%struct.ubifs_info*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @remove_xattr(%struct.ubifs_info*, %struct.inode*, %struct.inode*, %struct.fscrypt_name*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
