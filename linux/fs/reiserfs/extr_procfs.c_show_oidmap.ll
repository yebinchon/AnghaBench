; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_show_oidmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_show_oidmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.reiserfs_sb_info = type { %struct.TYPE_4__, %struct.reiserfs_super_block* }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.reiserfs_super_block = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@MAX_KEY_OBJECTID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s: [ %x .. %x )\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"total: \09%i [%i/%i] used: %lu [exact]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_oidmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_oidmap(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.reiserfs_sb_info*, align 8
  %7 = alloca %struct.reiserfs_super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %5, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block* %15)
  store %struct.reiserfs_sb_info* %16, %struct.reiserfs_sb_info** %6, align 8
  %17 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %6, align 8
  %18 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %17, i32 0, i32 1
  %19 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %18, align 8
  store %struct.reiserfs_super_block* %19, %struct.reiserfs_super_block** %7, align 8
  %20 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %7, align 8
  %21 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %63, %2
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub i32 %31, 1
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @MAX_KEY_OBJECTID, align 8
  br label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i64 @MAP(i32 %38)
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i64 [ %35, %34 ], [ %39, %36 ]
  store i64 %41, i64* %11, align 8
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @MAP(i32 %48)
  %50 = load i64, i64* %11, align 8
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %47, i64 %49, i64 %50)
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %40
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @MAP(i32 %57)
  %59 = sub nsw i64 %56, %58
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %55, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %25

66:                                               ; preds = %25
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %7, align 8
  %71 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load i64, i64* %9, align 8
  %76 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %69, i32 %74, i64 %75)
  ret i32 0
}

declare dso_local %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @MAP(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
