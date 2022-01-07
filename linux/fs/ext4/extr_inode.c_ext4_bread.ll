; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_bread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ext4_bread(i32* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.buffer_head* @ext4_getblk(i32* %11, %struct.inode* %12, i32 %13, i32 %14)
  store %struct.buffer_head* %15, %struct.buffer_head** %10, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %17 = call i64 @IS_ERR(%struct.buffer_head* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %20, %struct.buffer_head** %5, align 8
  br label %49

21:                                               ; preds = %4
  %22 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %23 = icmp ne %struct.buffer_head* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %26 = call i64 @ext4_buffer_uptodate(%struct.buffer_head* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %21
  %29 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %29, %struct.buffer_head** %5, align 8
  br label %49

30:                                               ; preds = %24
  %31 = load i32, i32* @REQ_OP_READ, align 4
  %32 = load i32, i32* @REQ_META, align 4
  %33 = load i32, i32* @REQ_PRIO, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @ll_rw_block(i32 %31, i32 %34, i32 1, %struct.buffer_head** %10)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %37 = call i32 @wait_on_buffer(%struct.buffer_head* %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %39 = call i64 @buffer_uptodate(%struct.buffer_head* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %42, %struct.buffer_head** %5, align 8
  br label %49

43:                                               ; preds = %30
  %44 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %45 = call i32 @put_bh(%struct.buffer_head* %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.buffer_head* @ERR_PTR(i32 %47)
  store %struct.buffer_head* %48, %struct.buffer_head** %5, align 8
  br label %49

49:                                               ; preds = %43, %41, %28, %19
  %50 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %50
}

declare dso_local %struct.buffer_head* @ext4_getblk(i32*, %struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i64 @ext4_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
