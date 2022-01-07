; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_symlink.c_ext4_encrypted_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_symlink.c_ext4_encrypted_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.delayed_call = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i8* }

@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @ext4_encrypted_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ext4_encrypted_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  store %struct.page* null, %struct.page** %8, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ECHILD, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i8* @ERR_PTR(i32 %16)
  store i8* %17, i8** %4, align 8
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i64 @ext4_inode_is_fast_symlink(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  store i32 8, i32* %10, align 4
  br label %46

27:                                               ; preds = %18
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.page* @read_mapping_page(i32 %30, i32 0, i32* null)
  store %struct.page* %31, %struct.page** %8, align 8
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = call i64 @IS_ERR(%struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.page*, %struct.page** %8, align 8
  %37 = call i8* @ERR_CAST(%struct.page* %36)
  store i8* %37, i8** %4, align 8
  br label %59

38:                                               ; preds = %27
  %39 = load %struct.page*, %struct.page** %8, align 8
  %40 = call i8* @page_address(%struct.page* %39)
  store i8* %40, i8** %9, align 8
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %38, %22
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %51 = call i8* @fscrypt_get_symlink(%struct.inode* %47, i8* %48, i32 %49, %struct.delayed_call* %50)
  store i8* %51, i8** %11, align 8
  %52 = load %struct.page*, %struct.page** %8, align 8
  %53 = icmp ne %struct.page* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.page*, %struct.page** %8, align 8
  %56 = call i32 @put_page(%struct.page* %55)
  br label %57

57:                                               ; preds = %54, %46
  %58 = load i8*, i8** %11, align 8
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %57, %35, %14
  %60 = load i8*, i8** %4, align 8
  ret i8* %60
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @ext4_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.page* @read_mapping_page(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i8* @ERR_CAST(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i8* @fscrypt_get_symlink(%struct.inode*, i8*, i32, %struct.delayed_call*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
