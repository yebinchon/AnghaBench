; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mmp.c_write_mmp_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mmp.c_write_mmp_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.mmp_struct = type { i32 }

@end_buffer_write_sync = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*)* @write_mmp_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_mmp_block(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.mmp_struct*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %8 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.mmp_struct*
  store %struct.mmp_struct* %10, %struct.mmp_struct** %6, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call i32 @sb_start_write(%struct.super_block* %11)
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = load %struct.mmp_struct*, %struct.mmp_struct** %6, align 8
  %15 = call i32 @ext4_mmp_csum_set(%struct.super_block* %13, %struct.mmp_struct* %14)
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = call i32 @lock_buffer(%struct.buffer_head* %16)
  %18 = load i32, i32* @end_buffer_write_sync, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %22 = call i32 @get_bh(%struct.buffer_head* %21)
  %23 = load i32, i32* @REQ_OP_WRITE, align 4
  %24 = load i32, i32* @REQ_SYNC, align 4
  %25 = load i32, i32* @REQ_META, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @REQ_PRIO, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %30 = call i32 @submit_bh(i32 %23, i32 %28, %struct.buffer_head* %29)
  %31 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %32 = call i32 @wait_on_buffer(%struct.buffer_head* %31)
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = call i32 @sb_end_write(%struct.super_block* %33)
  %35 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %36 = call i32 @buffer_uptodate(%struct.buffer_head* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %44

43:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @sb_start_write(%struct.super_block*) #1

declare dso_local i32 @ext4_mmp_csum_set(%struct.super_block*, %struct.mmp_struct*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @sb_end_write(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
