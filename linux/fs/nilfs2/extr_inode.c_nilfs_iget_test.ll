; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_iget_test.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_iget_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.nilfs_iget_args = type { i64, i64, i64, i64 }
%struct.nilfs_inode_info = type { i64, i64, i32 }

@NILFS_I_GCINODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @nilfs_iget_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_iget_test(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nilfs_iget_args*, align 8
  %7 = alloca %struct.nilfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.nilfs_iget_args*
  store %struct.nilfs_iget_args* %9, %struct.nilfs_iget_args** %6, align 8
  %10 = load %struct.nilfs_iget_args*, %struct.nilfs_iget_args** %6, align 8
  %11 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load %struct.nilfs_iget_args*, %struct.nilfs_iget_args** %6, align 8
  %19 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %58

27:                                               ; preds = %17
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %28)
  store %struct.nilfs_inode_info* %29, %struct.nilfs_inode_info** %7, align 8
  %30 = load i32, i32* @NILFS_I_GCINODE, align 4
  %31 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %32 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %31, i32 0, i32 2
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = load %struct.nilfs_iget_args*, %struct.nilfs_iget_args** %6, align 8
  %37 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %58

42:                                               ; preds = %27
  %43 = load %struct.nilfs_iget_args*, %struct.nilfs_iget_args** %6, align 8
  %44 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.nilfs_iget_args*, %struct.nilfs_iget_args** %6, align 8
  %49 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %52 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br label %55

55:                                               ; preds = %47, %42
  %56 = phi i1 [ false, %42 ], [ %54, %47 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %35, %26
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
