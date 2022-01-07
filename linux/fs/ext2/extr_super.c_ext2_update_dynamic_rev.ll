; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_update_dynamic_rev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_update_dynamic_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext2_super_block = type { i8*, i32, i8* }
%struct.TYPE_2__ = type { %struct.ext2_super_block* }

@EXT2_GOOD_OLD_REV = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"warning: updating to rev %d because of new feature flag, running e2fsck is recommended\00", align 1
@EXT2_DYNAMIC_REV = common dso_local global i32 0, align 4
@EXT2_GOOD_OLD_FIRST_INO = common dso_local global i32 0, align 4
@EXT2_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_update_dynamic_rev(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ext2_super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.ext2_super_block*, %struct.ext2_super_block** %6, align 8
  store %struct.ext2_super_block* %7, %struct.ext2_super_block** %3, align 8
  %8 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %9 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @le32_to_cpu(i8* %10)
  %12 = load i64, i64* @EXT2_GOOD_OLD_REV, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.super_block*, %struct.super_block** %2, align 8
  %17 = load i32, i32* @KERN_WARNING, align 4
  %18 = load i32, i32* @EXT2_DYNAMIC_REV, align 4
  %19 = call i32 @ext2_msg(%struct.super_block* %16, i32 %17, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EXT2_GOOD_OLD_FIRST_INO, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %23 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @EXT2_GOOD_OLD_INODE_SIZE, align 4
  %25 = call i32 @cpu_to_le16(i32 %24)
  %26 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %27 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @EXT2_DYNAMIC_REV, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %31 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i32 @ext2_msg(%struct.super_block*, i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
