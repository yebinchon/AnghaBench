; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_iget_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_iget_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.nilfs_iget_args = type { i64, i32*, i32, i64 }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@NILFS_I_GCINODE = common dso_local global i32 0, align 4
@NILFS_ROOT_INO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @nilfs_iget_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_iget_set(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nilfs_iget_args*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.nilfs_iget_args*
  store %struct.nilfs_iget_args* %7, %struct.nilfs_iget_args** %5, align 8
  %8 = load %struct.nilfs_iget_args*, %struct.nilfs_iget_args** %5, align 8
  %9 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.nilfs_iget_args*, %struct.nilfs_iget_args** %5, align 8
  %14 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load i32, i32* @NILFS_I_GCINODE, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.TYPE_2__* @NILFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load %struct.nilfs_iget_args*, %struct.nilfs_iget_args** %5, align 8
  %24 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call %struct.TYPE_2__* @NILFS_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call %struct.TYPE_2__* @NILFS_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %55

32:                                               ; preds = %2
  %33 = load %struct.nilfs_iget_args*, %struct.nilfs_iget_args** %5, align 8
  %34 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.nilfs_iget_args*, %struct.nilfs_iget_args** %5, align 8
  %39 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NILFS_ROOT_INO, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.nilfs_iget_args*, %struct.nilfs_iget_args** %5, align 8
  %45 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @nilfs_get_root(i32* %46)
  br label %48

48:                                               ; preds = %43, %37, %32
  %49 = load %struct.nilfs_iget_args*, %struct.nilfs_iget_args** %5, align 8
  %50 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = call %struct.TYPE_2__* @NILFS_I(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32* %51, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %17
  ret i32 0
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.TYPE_2__* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @nilfs_get_root(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
