; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_bitmap.c_minix_count_free_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_bitmap.c_minix_count_free_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.minix_sb_info = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @minix_count_free_inodes(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.minix_sb_info*, align 8
  %4 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %5)
  store %struct.minix_sb_info* %6, %struct.minix_sb_info** %3, align 8
  %7 = load %struct.minix_sb_info*, %struct.minix_sb_info** %3, align 8
  %8 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %4, align 8
  %11 = load %struct.minix_sb_info*, %struct.minix_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @count_free(i32 %13, i32 %16, i64 %17)
  ret i64 %18
}

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local i64 @count_free(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
