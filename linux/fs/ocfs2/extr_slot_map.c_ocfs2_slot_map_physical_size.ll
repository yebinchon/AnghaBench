; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c_ocfs2_slot_map_physical_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c_ocfs2_slot_map_physical_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Slot map file is too small!  (size %llu, needed %llu)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, i64*)* @ocfs2_slot_map_physical_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_slot_map_physical_size(%struct.ocfs2_super* %0, %struct.inode* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %10 = call i64 @ocfs2_uses_extended_slot_map(%struct.ocfs2_super* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  store i64 %17, i64* %8, align 8
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call i64 @i_size_read(%struct.inode* %26)
  %28 = icmp ugt i64 %25, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* @ML_ERROR, align 4
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call i64 @i_size_read(%struct.inode* %31)
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @mlog(i32 %30, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33)
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %40

37:                                               ; preds = %24
  %38 = load i64, i64* %8, align 8
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %29
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @ocfs2_uses_extended_slot_map(%struct.ocfs2_super*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
