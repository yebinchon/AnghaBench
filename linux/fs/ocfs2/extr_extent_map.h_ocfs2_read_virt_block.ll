; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.h_ocfs2_read_virt_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.h_ocfs2_read_virt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.super_block = type opaque
%struct.super_block.0 = type opaque

@.str = private unnamed_addr constant [19 x i8] c"ocfs2: bh == NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head**, i32 (%struct.super_block*, %struct.buffer_head*)*)* @ocfs2_read_virt_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_read_virt_block(%struct.inode* %0, i32 %1, %struct.buffer_head** %2, i32 (%struct.super_block*, %struct.buffer_head*)* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32 (%struct.super_block*, %struct.buffer_head*)*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  store i32 (%struct.super_block*, %struct.buffer_head*)* %3, i32 (%struct.super_block*, %struct.buffer_head*)** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %11 = icmp eq %struct.buffer_head** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  br label %23

16:                                               ; preds = %4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %20 = load i32 (%struct.super_block*, %struct.buffer_head*)*, i32 (%struct.super_block*, %struct.buffer_head*)** %8, align 8
  %21 = bitcast i32 (%struct.super_block*, %struct.buffer_head*)* %20 to i32 (%struct.super_block.0*, %struct.buffer_head*)*
  %22 = call i32 @ocfs2_read_virt_blocks(%struct.inode* %17, i32 %18, i32 1, %struct.buffer_head** %19, i32 0, i32 (%struct.super_block.0*, %struct.buffer_head*)* %21)
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %16, %12
  %24 = load i32, i32* %9, align 4
  ret i32 %24
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ocfs2_read_virt_blocks(%struct.inode*, i32, i32, %struct.buffer_head**, i32, i32 (%struct.super_block.0*, %struct.buffer_head*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
