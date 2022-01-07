; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_gcinode.c_nilfs_gccache_submit_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_gcinode.c_nilfs_gccache_submit_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }
%struct.buffer_head = type { i32, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_gccache_submit_read_data(%struct.inode* %0, i64 %1, i64 %2, i64 %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.the_nilfs*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call %struct.buffer_head* @nilfs_grab_buffer(%struct.inode* %15, i32 %18, i64 %19, i32 0)
  store %struct.buffer_head* %20, %struct.buffer_head** %12, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %111

30:                                               ; preds = %5
  %31 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %32 = call i64 @buffer_uptodate(%struct.buffer_head* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %98

35:                                               ; preds = %30
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.the_nilfs*, %struct.the_nilfs** %42, align 8
  store %struct.the_nilfs* %43, %struct.the_nilfs** %14, align 8
  %44 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %45 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @nilfs_dat_translate(i32 %46, i64 %47, i64* %9)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  br label %101

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %35
  %57 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %58 = call i32 @lock_buffer(%struct.buffer_head* %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %60 = call i64 @buffer_uptodate(%struct.buffer_head* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %64 = call i32 @unlock_buffer(%struct.buffer_head* %63)
  br label %98

65:                                               ; preds = %56
  %66 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %67 = call i32 @buffer_mapped(%struct.buffer_head* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %65
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %78 = call i32 @set_buffer_mapped(%struct.buffer_head* %77)
  br label %79

79:                                               ; preds = %69, %65
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* @end_buffer_read_sync, align 4
  %84 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %87 = call i32 @get_bh(%struct.buffer_head* %86)
  %88 = load i32, i32* @REQ_OP_READ, align 4
  %89 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %90 = call i32 @submit_bh(i32 %88, i32 0, %struct.buffer_head* %89)
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %96 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %79
  br label %98

98:                                               ; preds = %97, %62, %34
  store i32 0, i32* %13, align 4
  %99 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %100 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  store %struct.buffer_head* %99, %struct.buffer_head** %100, align 8
  br label %101

101:                                              ; preds = %98, %52
  %102 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @unlock_page(i32 %104)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %107 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @put_page(i32 %108)
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %101, %27
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local %struct.buffer_head* @nilfs_grab_buffer(%struct.inode*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_dat_translate(i32, i64, i64*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
