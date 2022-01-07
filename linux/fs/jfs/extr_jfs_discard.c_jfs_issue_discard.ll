; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_discard.c_jfs_issue_discard.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_discard.c_jfs_issue_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"JFS: sb_issue_discard(%p, %llu, %llu, GFP_NOFS, 0) = %d => failed!\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"JFS: sb_issue_discard(%p, %llu, %llu, GFP_NOFS, 0) = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jfs_issue_discard(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.super_block*, %struct.super_block** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = call i32 @sb_issue_discard(%struct.super_block* %12, i64 %13, i64 %14, i32 %15, i32 0)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.super_block*, %struct.super_block** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @jfs_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), %struct.super_block* %23, i64 %24, i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %3
  %29 = load %struct.super_block*, %struct.super_block** %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @jfs_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), %struct.super_block* %29, i64 %30, i64 %31, i32 %32)
  ret void
}

declare dso_local i32 @sb_issue_discard(%struct.super_block*, i64, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @jfs_err(i8*, %struct.super_block*, i64, i64, i32) #1

declare dso_local i32 @jfs_info(i8*, %struct.super_block*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
