; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_setsize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ext2_iomap_ops = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@ext2_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @ext2_setsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_setsize(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @S_ISREG(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @S_ISDIR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @S_ISLNK(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %119

27:                                               ; preds = %18, %12, %2
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i64 @ext2_inode_is_fast_symlink(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %119

34:                                               ; preds = %27
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i64 @IS_APPEND(%struct.inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call i64 @IS_IMMUTABLE(%struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %34
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %119

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call i32 @inode_dio_wait(%struct.inode* %46)
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = call i64 @IS_DAX(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @PAGE_ALIGN(i64 %54)
  %56 = load i64, i64* %5, align 8
  %57 = sub nsw i64 %55, %56
  %58 = call i32 @iomap_zero_range(%struct.inode* %52, i64 %53, i64 %57, i32* null, i32* @ext2_iomap_ops)
  store i32 %58, i32* %6, align 4
  br label %81

59:                                               ; preds = %45
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NOBH, align 4
  %64 = call i64 @test_opt(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %5, align 8
  %71 = load i32, i32* @ext2_get_block, align 4
  %72 = call i32 @nobh_truncate_page(i32 %69, i64 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  br label %80

73:                                               ; preds = %59
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %5, align 8
  %78 = load i32, i32* @ext2_get_block, align 4
  %79 = call i32 @block_truncate_page(i32 %76, i64 %77, i32 %78)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %73, %66
  br label %81

81:                                               ; preds = %80, %51
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %119

86:                                               ; preds = %81
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = call i32 @EXT2_I(%struct.inode* %87)
  %89 = call i32 @dax_sem_down_write(i32 %88)
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @truncate_setsize(%struct.inode* %90, i64 %91)
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @__ext2_truncate_blocks(%struct.inode* %93, i64 %94)
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = call i32 @EXT2_I(%struct.inode* %96)
  %98 = call i32 @dax_sem_up_write(i32 %97)
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = call i32 @current_time(%struct.inode* %99)
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 2
  store i32 %100, i32* %104, align 4
  %105 = load %struct.inode*, %struct.inode** %4, align 8
  %106 = call i64 @inode_needs_sync(%struct.inode* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %86
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @sync_mapping_buffers(i32 %111)
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = call i32 @sync_inode_metadata(%struct.inode* %113, i32 1)
  br label %118

115:                                              ; preds = %86
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = call i32 @mark_inode_dirty(%struct.inode* %116)
  br label %118

118:                                              ; preds = %115, %108
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %84, %42, %31, %24
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @ext2_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i64 @IS_DAX(%struct.inode*) #1

declare dso_local i32 @iomap_zero_range(%struct.inode*, i64, i64, i32*, i32*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i32 @nobh_truncate_page(i32, i64, i32) #1

declare dso_local i32 @block_truncate_page(i32, i64, i32) #1

declare dso_local i32 @dax_sem_down_write(i32) #1

declare dso_local i32 @EXT2_I(%struct.inode*) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @__ext2_truncate_blocks(%struct.inode*, i64) #1

declare dso_local i32 @dax_sem_up_write(i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @inode_needs_sync(%struct.inode*) #1

declare dso_local i32 @sync_mapping_buffers(i32) #1

declare dso_local i32 @sync_inode_metadata(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
