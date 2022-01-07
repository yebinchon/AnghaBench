; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_sb_bread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_sb_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ext4_sb_bread(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %9, i32 %10)
  store %struct.buffer_head* %11, %struct.buffer_head** %8, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %13 = icmp eq %struct.buffer_head* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.buffer_head* @ERR_PTR(i32 %16)
  store %struct.buffer_head* %17, %struct.buffer_head** %4, align 8
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %20 = call i64 @buffer_uptodate(%struct.buffer_head* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %23, %struct.buffer_head** %4, align 8
  br label %43

24:                                               ; preds = %18
  %25 = load i32, i32* @REQ_OP_READ, align 4
  %26 = load i32, i32* @REQ_META, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @ll_rw_block(i32 %25, i32 %28, i32 1, %struct.buffer_head** %8)
  %30 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %31 = call i32 @wait_on_buffer(%struct.buffer_head* %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %33 = call i64 @buffer_uptodate(%struct.buffer_head* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %36, %struct.buffer_head** %4, align 8
  br label %43

37:                                               ; preds = %24
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = call i32 @put_bh(%struct.buffer_head* %38)
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.buffer_head* @ERR_PTR(i32 %41)
  store %struct.buffer_head* %42, %struct.buffer_head** %4, align 8
  br label %43

43:                                               ; preds = %37, %35, %22, %14
  %44 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %44
}

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
