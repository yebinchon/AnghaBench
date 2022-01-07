; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_clear_journal_err.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_clear_journal_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_super_block = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [50 x i8] c"Filesystem error recorded from previous mount: %s\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Marking fs in need of filesystem check.\00", align 1
@EXT4_ERROR_FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ext4_super_block*)* @ext4_clear_journal_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_clear_journal_err(%struct.super_block* %0, %struct.ext4_super_block* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext4_super_block*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i8], align 16
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ext4_super_block* %1, %struct.ext4_super_block** %4, align 8
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call i32 @ext4_has_feature_journal(%struct.super_block* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @jbd2_journal_errno(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %2
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %27 = call i8* @ext4_decode_error(%struct.super_block* %24, i32 %25, i8* %26)
  store i8* %27, i8** %7, align 8
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EXT4_ERROR_FS, align 4
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @EXT4_ERROR_FS, align 4
  %40 = call i32 @cpu_to_le16(i32 %39)
  %41 = load %struct.ext4_super_block*, %struct.ext4_super_block** %4, align 8
  %42 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.super_block*, %struct.super_block** %3, align 8
  %46 = call i32 @ext4_commit_super(%struct.super_block* %45, i32 1)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @jbd2_journal_clear_err(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @jbd2_journal_update_sb_errno(i32* %49)
  br label %51

51:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_has_feature_journal(%struct.super_block*) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @jbd2_journal_errno(i32*) #1

declare dso_local i8* @ext4_decode_error(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_commit_super(%struct.super_block*, i32) #1

declare dso_local i32 @jbd2_journal_clear_err(i32*) #1

declare dso_local i32 @jbd2_journal_update_sb_errno(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
