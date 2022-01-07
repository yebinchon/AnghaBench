; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_ubifs_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_ubifs_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }
%struct.ubifs_inode = type { i8*, i32 }

@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @ubifs_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ubifs_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca %struct.ubifs_inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %6, align 8
  %10 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %9)
  store %struct.ubifs_inode* %10, %struct.ubifs_inode** %8, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call i32 @IS_ENCRYPTED(%struct.inode* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %16 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %4, align 8
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = icmp ne %struct.dentry* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @ECHILD, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i8* @ERR_PTR(i32 %23)
  store i8* %24, i8** %4, align 8
  br label %35

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %28 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %31 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %34 = call i8* @fscrypt_get_symlink(%struct.inode* %26, i8* %29, i32 %32, %struct.delayed_call* %33)
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %25, %21, %14
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @fscrypt_get_symlink(%struct.inode*, i8*, i32, %struct.delayed_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
