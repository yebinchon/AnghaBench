; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_datablock_addr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_datablock_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*, i32)* @datablock_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datablock_addr(%struct.inode* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.f2fs_node*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = call i32 @IS_INODE(%struct.page* %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call %struct.f2fs_node* @F2FS_NODE(%struct.page* %13)
  store %struct.f2fs_node* %14, %struct.f2fs_node** %7, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load %struct.f2fs_node*, %struct.f2fs_node** %7, align 8
  %22 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %21, i32 0, i32 0
  %23 = call i32 @offset_in_addr(i32* %22)
  store i32 %23, i32* %9, align 4
  br label %32

24:                                               ; preds = %17
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i64 @f2fs_has_extra_attr(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call i32 @get_extra_isize(%struct.inode* %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %20
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.f2fs_node*, %struct.f2fs_node** %7, align 8
  %35 = call i32* @blkaddr_in_node(%struct.f2fs_node* %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  ret i32 %43
}

declare dso_local i32 @IS_INODE(%struct.page*) #1

declare dso_local %struct.f2fs_node* @F2FS_NODE(%struct.page*) #1

declare dso_local i32 @offset_in_addr(i32*) #1

declare dso_local i64 @f2fs_has_extra_attr(%struct.inode*) #1

declare dso_local i32 @get_extra_isize(%struct.inode*) #1

declare dso_local i32* @blkaddr_in_node(%struct.f2fs_node*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
