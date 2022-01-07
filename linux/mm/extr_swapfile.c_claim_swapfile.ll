; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_claim_swapfile.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_claim_swapfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32*, i32, i32 }
%struct.inode = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SWP_BLKDEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_info_struct*, %struct.inode*)* @claim_swapfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claim_swapfile(%struct.swap_info_struct* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %5, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @S_ISBLK(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i32 @I_BDEV(%struct.inode* %13)
  %15 = call i32* @bdgrab(i32 %14)
  %16 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %17 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %19 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @FMODE_READ, align 4
  %22 = load i32, i32* @FMODE_WRITE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FMODE_EXCL, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %27 = call i32 @blkdev_get(i32* %20, i32 %25, %struct.swap_info_struct* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %12
  %31 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %32 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %81

34:                                               ; preds = %12
  %35 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %36 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @block_size(i32* %37)
  %39 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %40 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %42 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i32 @set_blocksize(i32* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %81

50:                                               ; preds = %34
  %51 = load i32, i32* @SWP_BLKDEV, align 4
  %52 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %53 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %71

56:                                               ; preds = %2
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @S_ISREG(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %69 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %62, %56
  br label %71

71:                                               ; preds = %70, %50
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = call i32 @inode_lock(%struct.inode* %72)
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = call i64 @IS_SWAPFILE(%struct.inode* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %77, %48, %30
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32* @bdgrab(i32) #1

declare dso_local i32 @I_BDEV(%struct.inode*) #1

declare dso_local i32 @blkdev_get(i32*, i32, %struct.swap_info_struct*) #1

declare dso_local i32 @block_size(i32*) #1

declare dso_local i32 @set_blocksize(i32*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
