; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_fill_in_super_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_fill_in_super_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32 }
%struct.the_nilfs = type { i32, i64, i32, i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.nilfs_super_root = type { i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*, %struct.the_nilfs*)* @nilfs_segctor_fill_in_super_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_fill_in_super_root(%struct.nilfs_sc_info* %0, %struct.the_nilfs* %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.nilfs_super_root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store %struct.the_nilfs* %1, %struct.the_nilfs** %4, align 8
  %9 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %10 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %9, i32 0, i32 1
  %11 = call %struct.TYPE_2__* @NILFS_LAST_SEGBUF(i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %13, %struct.buffer_head** %5, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.nilfs_super_root*
  store %struct.nilfs_super_root* %17, %struct.nilfs_super_root** %6, align 8
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @NILFS_SR_BYTES(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @cpu_to_le16(i32 %23)
  %25 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %6, align 8
  %26 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = call i64 (...) @nilfs_doing_gc()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %31 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %35 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %32, %29 ], [ %36, %33 ]
  %39 = call i32 @cpu_to_le64(i32 %38)
  %40 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %6, align 8
  %41 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %6, align 8
  %43 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %45 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %6, align 8
  %48 = bitcast %struct.nilfs_super_root* %47 to i8*
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @NILFS_SR_DAT_OFFSET(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %48, i64 %51
  %53 = call i32 @nilfs_write_inode_common(i32 %46, i8* %52, i32 1)
  %54 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %55 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %6, align 8
  %58 = bitcast %struct.nilfs_super_root* %57 to i8*
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @NILFS_SR_CPFILE_OFFSET(i32 %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %58, i64 %61
  %63 = call i32 @nilfs_write_inode_common(i32 %56, i8* %62, i32 1)
  %64 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %65 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %6, align 8
  %68 = bitcast %struct.nilfs_super_root* %67 to i8*
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @NILFS_SR_SUFILE_OFFSET(i32 %69)
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %68, i64 %71
  %73 = call i32 @nilfs_write_inode_common(i32 %66, i8* %72, i32 1)
  %74 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %6, align 8
  %75 = bitcast %struct.nilfs_super_root* %74 to i8*
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr i8, i8* %75, i64 %77
  %79 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %80 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = sub nsw i64 %81, %83
  %85 = call i32 @memset(i8* %78, i32 0, i64 %84)
  ret void
}

declare dso_local %struct.TYPE_2__* @NILFS_LAST_SEGBUF(i32*) #1

declare dso_local i32 @NILFS_SR_BYTES(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @nilfs_doing_gc(...) #1

declare dso_local i32 @nilfs_write_inode_common(i32, i8*, i32) #1

declare dso_local i32 @NILFS_SR_DAT_OFFSET(i32) #1

declare dso_local i32 @NILFS_SR_CPFILE_OFFSET(i32) #1

declare dso_local i32 @NILFS_SR_SUFILE_OFFSET(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
