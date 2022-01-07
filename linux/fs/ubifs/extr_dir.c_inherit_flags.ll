; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_inherit_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_inherit_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ubifs_inode = type { i32 }

@UBIFS_COMPR_FL = common dso_local global i32 0, align 4
@UBIFS_SYNC_FL = common dso_local global i32 0, align 4
@UBIFS_DIRSYNC_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @inherit_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inherit_flags(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %8)
  store %struct.ubifs_inode* %9, %struct.ubifs_inode** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @S_ISDIR(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %18 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @UBIFS_COMPR_FL, align 4
  %21 = load i32, i32* @UBIFS_SYNC_FL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @UBIFS_DIRSYNC_FL, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %19, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @S_ISDIR(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @UBIFS_DIRSYNC_FL, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %16
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
