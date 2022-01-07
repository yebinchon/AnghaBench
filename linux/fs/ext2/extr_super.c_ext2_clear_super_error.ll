; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_clear_super_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_clear_super_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { %struct.buffer_head* }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"previous I/O error to superblock detected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ext2_clear_super_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_clear_super_error(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %7, %struct.buffer_head** %3, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %9 = call i64 @buffer_write_io_error(%struct.buffer_head* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = load i32, i32* @KERN_ERR, align 4
  %14 = call i32 @ext2_msg(%struct.super_block* %12, i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %16 = call i32 @clear_buffer_write_io_error(%struct.buffer_head* %15)
  %17 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %18 = call i32 @set_buffer_uptodate(%struct.buffer_head* %17)
  br label %19

19:                                               ; preds = %11, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i64 @buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @ext2_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @clear_buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
