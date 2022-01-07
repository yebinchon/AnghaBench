; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32* }
%struct.ufs_sb_info = type { %struct.ufs_sb_info*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ufs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ufs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.ufs_sb_info* @UFS_SB(%struct.super_block* %4)
  store %struct.ufs_sb_info* %5, %struct.ufs_sb_info** %3, align 8
  %6 = call i32 @UFSD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call i32 @sb_rdonly(%struct.super_block* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = call i32 @ufs_put_super_internal(%struct.super_block* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %14, i32 0, i32 1
  %16 = call i32 @cancel_delayed_work_sync(i32* %15)
  %17 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %17, i32 0, i32 0
  %19 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %18, align 8
  %20 = call i32 @ubh_brelse_uspi(%struct.ufs_sb_info* %19)
  %21 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %22 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %21, i32 0, i32 0
  %23 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %22, align 8
  %24 = call i32 @kfree(%struct.ufs_sb_info* %23)
  %25 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %26 = call i32 @kfree(%struct.ufs_sb_info* %25)
  %27 = load %struct.super_block*, %struct.super_block** %2, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = call i32 @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ufs_sb_info* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @ufs_put_super_internal(%struct.super_block*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @ubh_brelse_uspi(%struct.ufs_sb_info*) #1

declare dso_local i32 @kfree(%struct.ufs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
