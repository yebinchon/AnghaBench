; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }

@NILFS_MDT_MAX_RA_BLOCKS = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"I/O error reading meta-data file (ino=%lu, block-offset=%lu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32, %struct.buffer_head**)* @nilfs_mdt_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_mdt_read_block(%struct.inode* %0, i64 %1, i32 %2, %struct.buffer_head** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %9, align 8
  %16 = load i32, i32* @NILFS_MDT_MAX_RA_BLOCKS, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @REQ_OP_READ, align 4
  %20 = call i32 @nilfs_mdt_submit_block(%struct.inode* %17, i64 %18, i32 %19, i32 0, %struct.buffer_head** %10)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %101

26:                                               ; preds = %4
  %27 = load i32, i32* %15, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %107

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %31
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %75, %34
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i32, i32* @REQ_OP_READ, align 4
  %45 = load i32, i32* @REQ_RAHEAD, align 4
  %46 = call i32 @nilfs_mdt_submit_block(%struct.inode* %42, i64 %43, i32 %44, i32 %45, %struct.buffer_head** %11)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @EEXIST, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br label %54

54:                                               ; preds = %49, %41
  %55 = phi i1 [ true, %41 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %61 = call i32 @brelse(%struct.buffer_head* %60)
  br label %69

62:                                               ; preds = %54
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %80

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %59
  %70 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %71 = call i32 @buffer_locked(%struct.buffer_head* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %84

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %12, align 8
  br label %37

80:                                               ; preds = %67, %37
  br label %81

81:                                               ; preds = %80, %31
  %82 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %83 = call i32 @wait_on_buffer(%struct.buffer_head* %82)
  br label %84

84:                                               ; preds = %81, %73
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %15, align 4
  %87 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %88 = call i32 @buffer_uptodate(%struct.buffer_head* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %84
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @KERN_ERR, align 4
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @nilfs_msg(i32 %93, i32 %94, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %97, i64 %98)
  br label %104

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %100, %25
  %102 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %103 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %102, %struct.buffer_head** %103, align 8
  store i32 0, i32* %5, align 4
  br label %109

104:                                              ; preds = %90
  %105 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %106 = call i32 @brelse(%struct.buffer_head* %105)
  br label %107

107:                                              ; preds = %104, %30
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %101
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @nilfs_mdt_submit_block(%struct.inode*, i64, i32, i32, %struct.buffer_head**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
