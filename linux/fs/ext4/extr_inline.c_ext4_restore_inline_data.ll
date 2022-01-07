; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_restore_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_restore_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }

@EXT4_STATE_MAY_INLINE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.inode*, %struct.ext4_iloc*, i8*, i32)* @ext4_restore_inline_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_restore_inline_data(i32* %0, %struct.inode* %1, %struct.ext4_iloc* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_iloc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext4_iloc* %2, %struct.ext4_iloc** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = load i32, i32* %10, align 4
  %14 = call i32 @ext4_create_inline_data(i32* %11, %struct.inode* %12, i32 %13)
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = load %struct.ext4_iloc*, %struct.ext4_iloc** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @ext4_write_inline_data(%struct.inode* %15, %struct.ext4_iloc* %16, i8* %17, i32 0, i32 %18)
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %22 = call i32 @ext4_set_inode_state(%struct.inode* %20, i32 %21)
  ret void
}

declare dso_local i32 @ext4_create_inline_data(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_write_inline_data(%struct.inode*, %struct.ext4_iloc*, i8*, i32, i32) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
