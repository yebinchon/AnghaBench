; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_detect_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_detect_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_sb_info = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.coh_super_block = type { i32, i32 }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"noname\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"xxxxx \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"nopack\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"xxxxx\0A\00", align 1
@BYTESEX_PDP = common dso_local global i32 0, align 4
@FSTYPE_COH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysv_sb_info*, %struct.buffer_head*)* @detect_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_coherent(%struct.sysv_sb_info* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysv_sb_info*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.coh_super_block*, align 8
  store %struct.sysv_sb_info* %0, %struct.sysv_sb_info** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %8 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @BLOCK_SIZE, align 4
  %11 = sdiv i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = inttoptr i64 %13 to %struct.coh_super_block*
  store %struct.coh_super_block* %14, %struct.coh_super_block** %6, align 8
  %15 = load %struct.coh_super_block*, %struct.coh_super_block** %6, align 8
  %16 = getelementptr inbounds %struct.coh_super_block, %struct.coh_super_block* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @memcmp(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.coh_super_block*, %struct.coh_super_block** %6, align 8
  %22 = getelementptr inbounds %struct.coh_super_block, %struct.coh_super_block* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @memcmp(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.coh_super_block*, %struct.coh_super_block** %6, align 8
  %28 = getelementptr inbounds %struct.coh_super_block, %struct.coh_super_block* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @memcmp(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.coh_super_block*, %struct.coh_super_block** %6, align 8
  %34 = getelementptr inbounds %struct.coh_super_block, %struct.coh_super_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @memcmp(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %20
  store i32 0, i32* %3, align 4
  br label %46

39:                                               ; preds = %32, %26
  %40 = load i32, i32* @BYTESEX_PDP, align 4
  %41 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %42 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @FSTYPE_COH, align 4
  %44 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %45 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %39, %38
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
