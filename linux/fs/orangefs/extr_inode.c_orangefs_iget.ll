; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.super_block = type { i32 }
%struct.orangefs_object_kref = type { i32, i32 }

@orangefs_test_inode = common dso_local global i32 0, align 4
@orangefs_set_inode = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@ORANGEFS_GETATTR_NEW = common dso_local global i32 0, align 4
@GOSSIP_INODE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"iget handle %pU, fsid %d hash %ld i_ino %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @orangefs_iget(%struct.super_block* %0, %struct.orangefs_object_kref* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.orangefs_object_kref*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.orangefs_object_kref* %1, %struct.orangefs_object_kref** %5, align 8
  store %struct.inode* null, %struct.inode** %6, align 8
  %9 = load %struct.orangefs_object_kref*, %struct.orangefs_object_kref** %5, align 8
  %10 = call i64 @orangefs_handle_hash(%struct.orangefs_object_kref* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* @orangefs_test_inode, align 4
  %14 = load i32, i32* @orangefs_set_inode, align 4
  %15 = load %struct.orangefs_object_kref*, %struct.orangefs_object_kref** %5, align 8
  %16 = call %struct.inode* @iget5_locked(%struct.super_block* %11, i64 %12, i32 %13, i32 %14, %struct.orangefs_object_kref* %15)
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.inode* @ERR_PTR(i32 %21)
  store %struct.inode* %22, %struct.inode** %3, align 8
  br label %63

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @I_NEW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %31, %struct.inode** %3, align 8
  br label %63

32:                                               ; preds = %23
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load i32, i32* @ORANGEFS_GETATTR_NEW, align 4
  %35 = call i32 @orangefs_inode_getattr(%struct.inode* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32 @iget_failed(%struct.inode* %39)
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.inode* @ERR_PTR(i32 %41)
  store %struct.inode* %42, %struct.inode** %3, align 8
  br label %63

43:                                               ; preds = %32
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call i32 @orangefs_init_iops(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call i32 @unlock_new_inode(%struct.inode* %49)
  %51 = load i32, i32* @GOSSIP_INODE_DEBUG, align 4
  %52 = load %struct.orangefs_object_kref*, %struct.orangefs_object_kref** %5, align 8
  %53 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %52, i32 0, i32 1
  %54 = load %struct.orangefs_object_kref*, %struct.orangefs_object_kref** %5, align 8
  %55 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @gossip_debug(i32 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32* %53, i32 %56, i64 %57, i64 %60)
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %62, %struct.inode** %3, align 8
  br label %63

63:                                               ; preds = %43, %38, %30, %19
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %64
}

declare dso_local i64 @orangefs_handle_hash(%struct.orangefs_object_kref*) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32, i32, %struct.orangefs_object_kref*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @orangefs_inode_getattr(%struct.inode*, i32) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @orangefs_init_iops(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @gossip_debug(i32, i8*, i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
