; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_init_dinode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_init_dinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.gfs2_dinode = type { i32, i32, i64, i64, i64, i8*, i8* }
%struct.buffer_head = type { i64 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_inode*, %struct.gfs2_inode*, i8*)* @init_dinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_dinode(%struct.gfs2_inode* %0, %struct.gfs2_inode* %1, i8* %2) #0 {
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gfs2_dinode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.gfs2_inode* %1, %struct.gfs2_inode** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %10 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.buffer_head* @gfs2_meta_new(i32 %11, i32 %14)
  store %struct.buffer_head* %15, %struct.buffer_head** %8, align 8
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %17 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %20 = call i32 @gfs2_trans_add_meta(i32 %18, %struct.buffer_head* %19)
  %21 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.gfs2_dinode*
  store %struct.gfs2_dinode* %24, %struct.gfs2_dinode** %7, align 8
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %26 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %7, align 8
  %27 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %25, %struct.gfs2_dinode* %26)
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MAJOR(i32 %31)
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %7, align 8
  %35 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MINOR(i32 %39)
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %7, align 8
  %43 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %7, align 8
  %45 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %7, align 8
  %47 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %7, align 8
  %49 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %7, align 8
  %51 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %50, i32 0, i32 1
  %52 = call i32 @memset(i32* %51, i32 0, i32 4)
  %53 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %7, align 8
  %54 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %53, i32 0, i32 0
  %55 = call i32 @memset(i32* %54, i32 0, i32 4)
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = call i32 @gfs2_buffer_clear_tail(%struct.buffer_head* %56, i32 48)
  %58 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %59 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @S_IFMT, align 4
  %63 = and i32 %61, %62
  switch i32 %63, label %79 [
    i32 129, label %64
    i32 128, label %68
  ]

64:                                               ; preds = %3
  %65 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %66 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %67 = call i32 @gfs2_init_dir(%struct.buffer_head* %65, %struct.gfs2_inode* %66)
  br label %79

68:                                               ; preds = %3
  %69 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 48
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %75 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i64 %72, i8* %73, i32 %77)
  br label %79

79:                                               ; preds = %3, %68, %64
  %80 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %81 = call i32 @set_buffer_uptodate(%struct.buffer_head* %80)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %83 = call i32 @brelse(%struct.buffer_head* %82)
  ret void
}

declare dso_local %struct.buffer_head* @gfs2_meta_new(i32, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, %struct.gfs2_dinode*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @gfs2_buffer_clear_tail(%struct.buffer_head*, i32) #1

declare dso_local i32 @gfs2_init_dir(%struct.buffer_head*, %struct.gfs2_inode*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
