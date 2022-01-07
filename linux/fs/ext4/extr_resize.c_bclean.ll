; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_bclean.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_bclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (i32*, %struct.super_block*, i32)* @bclean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @bclean(i32* %0, %struct.super_block* %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.super_block* %1, %struct.super_block** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.super_block*, %struct.super_block** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %10, i32 %11)
  store %struct.buffer_head* %12, %struct.buffer_head** %8, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %14 = icmp ne %struct.buffer_head* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.buffer_head* @ERR_PTR(i32 %21)
  store %struct.buffer_head* %22, %struct.buffer_head** %4, align 8
  br label %47

23:                                               ; preds = %3
  %24 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %25 = call i32 @BUFFER_TRACE(%struct.buffer_head* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %28 = call i32 @ext4_journal_get_write_access(i32* %26, %struct.buffer_head* %27)
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %32 = call i32 @brelse(%struct.buffer_head* %31)
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.buffer_head* @ERR_PTR(i32 %33)
  store %struct.buffer_head* %34, %struct.buffer_head** %8, align 8
  br label %45

35:                                               ; preds = %23
  %36 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.super_block*, %struct.super_block** %6, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memset(i32 %38, i32 0, i32 %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = call i32 @set_buffer_uptodate(%struct.buffer_head* %43)
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %46, %struct.buffer_head** %4, align 8
  br label %47

47:                                               ; preds = %45, %19
  %48 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %48
}

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
