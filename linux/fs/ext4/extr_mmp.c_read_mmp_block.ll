; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mmp.c_read_mmp_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mmp.c_read_mmp_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.mmp_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EXT4_MMP_MAGIC = common dso_local global i64 0, align 8
@EFSCORRUPTED = common dso_local global i32 0, align 4
@EFSBADCRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error %d while reading MMP block %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head**, i32)* @read_mmp_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mmp_block(%struct.super_block* %0, %struct.buffer_head** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmp_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %12 = icmp ne %struct.buffer_head* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %16 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %15)
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %20 = icmp ne %struct.buffer_head* %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %22, i32 %23)
  %25 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  store %struct.buffer_head* %24, %struct.buffer_head** %25, align 8
  %26 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %28 = icmp ne %struct.buffer_head* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %85

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %17
  %34 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %34, align 8
  %36 = call i32 @get_bh(%struct.buffer_head* %35)
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %37, align 8
  %39 = call i32 @lock_buffer(%struct.buffer_head* %38)
  %40 = load i32, i32* @end_buffer_read_sync, align 4
  %41 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %41, align 8
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @REQ_OP_READ, align 4
  %45 = load i32, i32* @REQ_META, align 4
  %46 = load i32, i32* @REQ_PRIO, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %48, align 8
  %50 = call i32 @submit_bh(i32 %44, i32 %47, %struct.buffer_head* %49)
  %51 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %51, align 8
  %53 = call i32 @wait_on_buffer(%struct.buffer_head* %52)
  %54 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %54, align 8
  %56 = call i32 @buffer_uptodate(%struct.buffer_head* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %33
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %85

61:                                               ; preds = %33
  %62 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %62, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.mmp_struct*
  store %struct.mmp_struct* %66, %struct.mmp_struct** %8, align 8
  %67 = load %struct.mmp_struct*, %struct.mmp_struct** %8, align 8
  %68 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le32_to_cpu(i32 %69)
  %71 = load i64, i64* @EXT4_MMP_MAGIC, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i32, i32* @EFSCORRUPTED, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %85

76:                                               ; preds = %61
  %77 = load %struct.super_block*, %struct.super_block** %5, align 8
  %78 = load %struct.mmp_struct*, %struct.mmp_struct** %8, align 8
  %79 = call i32 @ext4_mmp_csum_verify(%struct.super_block* %77, %struct.mmp_struct* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @EFSBADCRC, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  br label %85

84:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %95

85:                                               ; preds = %81, %73, %58, %29
  %86 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %86, align 8
  %88 = call i32 @brelse(%struct.buffer_head* %87)
  %89 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %89, align 8
  %90 = load %struct.super_block*, %struct.super_block** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @ext4_warning(%struct.super_block* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %85, %84
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_mmp_csum_verify(%struct.super_block*, %struct.mmp_struct*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
