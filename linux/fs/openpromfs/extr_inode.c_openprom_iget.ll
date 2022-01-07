; ModuleID = '/home/carl/AnghaBench/linux/fs/openpromfs/extr_inode.c_openprom_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/openpromfs/extr_inode.c_openprom_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i32*, i32*, i32, i32, i32 }
%struct.super_block = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@OPENPROM_ROOT_INO = common dso_local global i64 0, align 8
@openprom_inode_operations = common dso_local global i32 0, align 4
@openprom_operations = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32)* @openprom_iget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @openprom_iget(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.inode* @iget_locked(%struct.super_block* %7, i32 %8)
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = icmp ne %struct.inode* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.inode* @ERR_PTR(i32 %14)
  store %struct.inode* %15, %struct.inode** %3, align 8
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @I_NEW, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %16
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i32 @current_time(%struct.inode* %24)
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 6
  store i32 %25, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 7
  store i32 %25, i32* %31, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OPENPROM_ROOT_INO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %23
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 4
  store i32* @openprom_inode_operations, i32** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 3
  store i32* @openprom_operations, i32** %41, align 8
  %42 = load i32, i32* @S_IFDIR, align 4
  %43 = load i32, i32* @S_IRUGO, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @S_IXUGO, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %37, %23
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = call i32 @unlock_new_inode(%struct.inode* %50)
  br label %52

52:                                               ; preds = %49, %16
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %53, %struct.inode** %3, align 8
  br label %54

54:                                               ; preds = %52, %12
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %55
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
