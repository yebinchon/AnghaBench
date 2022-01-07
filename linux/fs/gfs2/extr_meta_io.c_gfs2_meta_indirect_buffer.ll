; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_meta_indirect_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_meta_indirect_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, %struct.gfs2_glock*, i32 }
%struct.gfs2_glock = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_sbd = type { i32 }

@GFS2_METATYPE_IN = common dso_local global i32 0, align 4
@GFS2_METATYPE_DI = common dso_local global i32 0, align 4
@DIO_WAIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_meta_indirect_buffer(%struct.gfs2_inode* %0, i32 %1, i32 %2, %struct.buffer_head** %3) #0 {
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca %struct.gfs2_sbd*, align 8
  %10 = alloca %struct.gfs2_glock*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %8, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 3
  %17 = call %struct.gfs2_sbd* @GFS2_SB(i32* %16)
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %9, align 8
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %19 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %18, i32 0, i32 2
  %20 = load %struct.gfs2_glock*, %struct.gfs2_glock** %19, align 8
  store %struct.gfs2_glock* %20, %struct.gfs2_glock** %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @GFS2_METATYPE_IN, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @GFS2_METATYPE_DI, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %36 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.gfs2_glock*, %struct.gfs2_glock** %10, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @DIO_WAIT, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @gfs2_meta_read(%struct.gfs2_glock* %39, i32 %40, i32 %41, i32 %42, %struct.buffer_head** %11)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %47, %struct.buffer_head* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %60

57:                                               ; preds = %46, %38
  %58 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %59 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %58, %struct.buffer_head** %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %12, align 4
  ret i32 %61
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_meta_read(%struct.gfs2_glock*, i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
