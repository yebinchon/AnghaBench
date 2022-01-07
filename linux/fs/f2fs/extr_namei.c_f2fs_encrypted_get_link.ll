; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_encrypted_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_encrypted_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.delayed_call = type { i32 }
%struct.page = type { i32 }

@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @f2fs_encrypted_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @f2fs_encrypted_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = icmp ne %struct.dentry* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ECHILD, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i8* @ERR_PTR(i32 %14)
  store i8* %15, i8** %4, align 8
  br label %41

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.page* @read_mapping_page(i32 %19, i32 0, i32* null)
  store %struct.page* %20, %struct.page** %8, align 8
  %21 = load %struct.page*, %struct.page** %8, align 8
  %22 = call i64 @IS_ERR(%struct.page* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.page*, %struct.page** %8, align 8
  %26 = call i8* @ERR_CAST(%struct.page* %25)
  store i8* %26, i8** %4, align 8
  br label %41

27:                                               ; preds = %16
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = call i32 @page_address(%struct.page* %29)
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %37 = call i8* @fscrypt_get_symlink(%struct.inode* %28, i32 %30, i32 %35, %struct.delayed_call* %36)
  store i8* %37, i8** %9, align 8
  %38 = load %struct.page*, %struct.page** %8, align 8
  %39 = call i32 @put_page(%struct.page* %38)
  %40 = load i8*, i8** %9, align 8
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %27, %24, %12
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.page* @read_mapping_page(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i8* @ERR_CAST(%struct.page*) #1

declare dso_local i8* @fscrypt_get_symlink(%struct.inode*, i32, i32, %struct.delayed_call*) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
