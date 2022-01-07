; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_recover_inline_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_recover_inline_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_inode = type { i32 }

@F2FS_PIN_FILE = common dso_local global i32 0, align 4
@FI_PIN_FILE = common dso_local global i32 0, align 4
@F2FS_DATA_EXIST = common dso_local global i32 0, align 4
@FI_DATA_EXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.f2fs_inode*)* @recover_inline_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recover_inline_flags(%struct.inode* %0, %struct.f2fs_inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.f2fs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.f2fs_inode* %1, %struct.f2fs_inode** %4, align 8
  %5 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %6 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @F2FS_PIN_FILE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = load i32, i32* @FI_PIN_FILE, align 4
  %14 = call i32 @set_inode_flag(%struct.inode* %12, i32 %13)
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load i32, i32* @FI_PIN_FILE, align 4
  %18 = call i32 @clear_inode_flag(%struct.inode* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.f2fs_inode*, %struct.f2fs_inode** %4, align 8
  %21 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @F2FS_DATA_EXIST, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = load i32, i32* @FI_DATA_EXIST, align 4
  %29 = call i32 @set_inode_flag(%struct.inode* %27, i32 %28)
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = load i32, i32* @FI_DATA_EXIST, align 4
  %33 = call i32 @clear_inode_flag(%struct.inode* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
