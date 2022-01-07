; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_block_truncate_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_block_truncate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.address_space*, i32)* @ext4_block_truncate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_block_truncate_page(i32* %0, %struct.address_space* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.address_space* %1, %struct.address_space** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.address_space*, %struct.address_space** %6, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %11, align 8
  %20 = call i64 @IS_ENCRYPTED(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %11, align 8
  %24 = call i32 @fscrypt_has_encryption_key(%struct.inode* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %44

27:                                               ; preds = %22, %3
  %28 = load %struct.inode*, %struct.inode** %11, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub i32 %35, 1
  %37 = and i32 %34, %36
  %38 = sub i32 %33, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.address_space*, %struct.address_space** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ext4_block_zero_page_range(i32* %39, %struct.address_space* %40, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %27, %26
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @fscrypt_has_encryption_key(%struct.inode*) #1

declare dso_local i32 @ext4_block_zero_page_range(i32*, %struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
