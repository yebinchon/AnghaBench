; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_init_dir_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_init_dir_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_dir_block_trailer = type { i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_DIR_TRAILER_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.buffer_head*, i32)* @ocfs2_init_dir_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_init_dir_trailer(%struct.inode* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_dir_block_trailer*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head* %8, i32 %11)
  store %struct.ocfs2_dir_block_trailer* %12, %struct.ocfs2_dir_block_trailer** %7, align 8
  %13 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %7, align 8
  %14 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @OCFS2_DIR_TRAILER_SIGNATURE, align 4
  %17 = call i32 @strcpy(i32 %15, i32 %16)
  %18 = call i8* @cpu_to_le16(i32 40)
  %19 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_le64(i32 %24)
  %26 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %7, align 8
  %27 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le64(i32 %30)
  %32 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %7, align 8
  %33 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %7, align 8
  %37 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  ret void
}

declare dso_local %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
