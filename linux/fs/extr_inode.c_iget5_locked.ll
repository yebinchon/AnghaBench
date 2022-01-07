; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_iget5_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_iget5_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @iget5_locked(%struct.super_block* %0, i64 %1, i32 (%struct.inode*, i8*)* %2, i32 (%struct.inode*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (%struct.inode*, i8*)*, align 8
  %9 = alloca i32 (%struct.inode*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 (%struct.inode*, i8*)* %2, i32 (%struct.inode*, i8*)** %8, align 8
  store i32 (%struct.inode*, i8*)* %3, i32 (%struct.inode*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)** %8, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call %struct.inode* @ilookup5(%struct.super_block* %13, i64 %14, i32 (%struct.inode*, i8*)* %15, i8* %16)
  store %struct.inode* %17, %struct.inode** %11, align 8
  %18 = load %struct.inode*, %struct.inode** %11, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %5
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.inode* @alloc_inode(%struct.super_block* %21)
  store %struct.inode* %22, %struct.inode** %12, align 8
  %23 = load %struct.inode*, %struct.inode** %12, align 8
  %24 = icmp ne %struct.inode* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = load %struct.inode*, %struct.inode** %12, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.inode*, %struct.inode** %12, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)** %8, align 8
  %31 = load i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call %struct.inode* @inode_insert5(%struct.inode* %28, i64 %29, i32 (%struct.inode*, i8*)* %30, i32 (%struct.inode*, i8*)* %31, i8* %32)
  store %struct.inode* %33, %struct.inode** %11, align 8
  %34 = load %struct.inode*, %struct.inode** %11, align 8
  %35 = load %struct.inode*, %struct.inode** %12, align 8
  %36 = icmp ne %struct.inode* %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load %struct.inode*, %struct.inode** %12, align 8
  %42 = call i32 @destroy_inode(%struct.inode* %41)
  br label %43

43:                                               ; preds = %40, %25
  br label %44

44:                                               ; preds = %43, %20
  br label %45

45:                                               ; preds = %44, %5
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  ret %struct.inode* %46
}

declare dso_local %struct.inode* @ilookup5(%struct.super_block*, i64, i32 (%struct.inode*, i8*)*, i8*) #1

declare dso_local %struct.inode* @alloc_inode(%struct.super_block*) #1

declare dso_local %struct.inode* @inode_insert5(%struct.inode*, i64, i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @destroy_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
