; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_is_dx_internal_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_is_dx_internal_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i64 }
%struct.ext4_dir_entry = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.ext4_dir_entry*)* @is_dx_internal_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dx_internal_node(%struct.inode* %0, i64 %1, %struct.ext4_dir_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ext4_dir_entry*, align 8
  %8 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ext4_dir_entry* %2, %struct.ext4_dir_entry** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i32 @is_dx(%struct.inode* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %39

20:                                               ; preds = %16
  %21 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %7, align 8
  %22 = getelementptr inbounds %struct.ext4_dir_entry, %struct.ext4_dir_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.ext4_dir_entry*, %struct.ext4_dir_entry** %7, align 8
  %27 = getelementptr inbounds %struct.ext4_dir_entry, %struct.ext4_dir_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.super_block*, %struct.super_block** %8, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @ext4_rec_len_from_disk(i32 %28, i64 %31)
  %33 = load %struct.super_block*, %struct.super_block** %8, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %39

38:                                               ; preds = %25, %20
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %37, %19, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @is_dx(%struct.inode*) #1

declare dso_local i64 @ext4_rec_len_from_disk(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
