; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_inode.c_minix_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_inode.c_minix_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.kstat = type { i32, i32, i32 }
%struct.inode = type { i32 }

@MINIX_V1 = common dso_local global i64 0, align 8
@BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minix_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.path*, %struct.path** %5, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %9, align 8
  %16 = load %struct.path*, %struct.path** %5, align 8
  %17 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call %struct.inode* @d_inode(%struct.TYPE_2__* %18)
  store %struct.inode* %19, %struct.inode** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = load %struct.kstat*, %struct.kstat** %6, align 8
  %22 = call i32 @generic_fillattr(%struct.inode* %20, %struct.kstat* %21)
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = call i64 @INODE_VERSION(%struct.inode* %23)
  %25 = load i64, i64* @MINIX_V1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %4
  %28 = load i32, i32* @BLOCK_SIZE, align 4
  %29 = sdiv i32 %28, 512
  %30 = load %struct.kstat*, %struct.kstat** %6, align 8
  %31 = getelementptr inbounds %struct.kstat, %struct.kstat* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.super_block*, %struct.super_block** %9, align 8
  %34 = call i32 @V1_minix_blocks(i32 %32, %struct.super_block* %33)
  %35 = mul nsw i32 %29, %34
  %36 = load %struct.kstat*, %struct.kstat** %6, align 8
  %37 = getelementptr inbounds %struct.kstat, %struct.kstat* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %51

38:                                               ; preds = %4
  %39 = load %struct.super_block*, %struct.super_block** %9, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 512
  %43 = load %struct.kstat*, %struct.kstat** %6, align 8
  %44 = getelementptr inbounds %struct.kstat, %struct.kstat* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.super_block*, %struct.super_block** %9, align 8
  %47 = call i32 @V2_minix_blocks(i32 %45, %struct.super_block* %46)
  %48 = mul nsw i32 %42, %47
  %49 = load %struct.kstat*, %struct.kstat** %6, align 8
  %50 = getelementptr inbounds %struct.kstat, %struct.kstat* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %38, %27
  %52 = load %struct.super_block*, %struct.super_block** %9, align 8
  %53 = getelementptr inbounds %struct.super_block, %struct.super_block* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kstat*, %struct.kstat** %6, align 8
  %56 = getelementptr inbounds %struct.kstat, %struct.kstat* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  ret i32 0
}

declare dso_local %struct.inode* @d_inode(%struct.TYPE_2__*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i64 @INODE_VERSION(%struct.inode*) #1

declare dso_local i32 @V1_minix_blocks(i32, %struct.super_block*) #1

declare dso_local i32 @V2_minix_blocks(i32, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
