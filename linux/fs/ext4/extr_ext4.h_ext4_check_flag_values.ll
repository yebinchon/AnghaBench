; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ext4.h_ext4_check_flag_values.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ext4.h_ext4_check_flag_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECRM = common dso_local global i32 0, align 4
@UNRM = common dso_local global i32 0, align 4
@COMPR = common dso_local global i32 0, align 4
@SYNC = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@NODUMP = common dso_local global i32 0, align 4
@NOATIME = common dso_local global i32 0, align 4
@DIRTY = common dso_local global i32 0, align 4
@COMPRBLK = common dso_local global i32 0, align 4
@NOCOMPR = common dso_local global i32 0, align 4
@ENCRYPT = common dso_local global i32 0, align 4
@INDEX = common dso_local global i32 0, align 4
@IMAGIC = common dso_local global i32 0, align 4
@JOURNAL_DATA = common dso_local global i32 0, align 4
@NOTAIL = common dso_local global i32 0, align 4
@DIRSYNC = common dso_local global i32 0, align 4
@TOPDIR = common dso_local global i32 0, align 4
@HUGE_FILE = common dso_local global i32 0, align 4
@EXTENTS = common dso_local global i32 0, align 4
@VERITY = common dso_local global i32 0, align 4
@EA_INODE = common dso_local global i32 0, align 4
@EOFBLOCKS = common dso_local global i32 0, align 4
@INLINE_DATA = common dso_local global i32 0, align 4
@PROJINHERIT = common dso_local global i32 0, align 4
@RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ext4_check_flag_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_check_flag_values() #0 {
  %1 = load i32, i32* @SECRM, align 4
  %2 = call i32 @CHECK_FLAG_VALUE(i32 %1)
  %3 = load i32, i32* @UNRM, align 4
  %4 = call i32 @CHECK_FLAG_VALUE(i32 %3)
  %5 = load i32, i32* @COMPR, align 4
  %6 = call i32 @CHECK_FLAG_VALUE(i32 %5)
  %7 = load i32, i32* @SYNC, align 4
  %8 = call i32 @CHECK_FLAG_VALUE(i32 %7)
  %9 = load i32, i32* @IMMUTABLE, align 4
  %10 = call i32 @CHECK_FLAG_VALUE(i32 %9)
  %11 = load i32, i32* @APPEND, align 4
  %12 = call i32 @CHECK_FLAG_VALUE(i32 %11)
  %13 = load i32, i32* @NODUMP, align 4
  %14 = call i32 @CHECK_FLAG_VALUE(i32 %13)
  %15 = load i32, i32* @NOATIME, align 4
  %16 = call i32 @CHECK_FLAG_VALUE(i32 %15)
  %17 = load i32, i32* @DIRTY, align 4
  %18 = call i32 @CHECK_FLAG_VALUE(i32 %17)
  %19 = load i32, i32* @COMPRBLK, align 4
  %20 = call i32 @CHECK_FLAG_VALUE(i32 %19)
  %21 = load i32, i32* @NOCOMPR, align 4
  %22 = call i32 @CHECK_FLAG_VALUE(i32 %21)
  %23 = load i32, i32* @ENCRYPT, align 4
  %24 = call i32 @CHECK_FLAG_VALUE(i32 %23)
  %25 = load i32, i32* @INDEX, align 4
  %26 = call i32 @CHECK_FLAG_VALUE(i32 %25)
  %27 = load i32, i32* @IMAGIC, align 4
  %28 = call i32 @CHECK_FLAG_VALUE(i32 %27)
  %29 = load i32, i32* @JOURNAL_DATA, align 4
  %30 = call i32 @CHECK_FLAG_VALUE(i32 %29)
  %31 = load i32, i32* @NOTAIL, align 4
  %32 = call i32 @CHECK_FLAG_VALUE(i32 %31)
  %33 = load i32, i32* @DIRSYNC, align 4
  %34 = call i32 @CHECK_FLAG_VALUE(i32 %33)
  %35 = load i32, i32* @TOPDIR, align 4
  %36 = call i32 @CHECK_FLAG_VALUE(i32 %35)
  %37 = load i32, i32* @HUGE_FILE, align 4
  %38 = call i32 @CHECK_FLAG_VALUE(i32 %37)
  %39 = load i32, i32* @EXTENTS, align 4
  %40 = call i32 @CHECK_FLAG_VALUE(i32 %39)
  %41 = load i32, i32* @VERITY, align 4
  %42 = call i32 @CHECK_FLAG_VALUE(i32 %41)
  %43 = load i32, i32* @EA_INODE, align 4
  %44 = call i32 @CHECK_FLAG_VALUE(i32 %43)
  %45 = load i32, i32* @EOFBLOCKS, align 4
  %46 = call i32 @CHECK_FLAG_VALUE(i32 %45)
  %47 = load i32, i32* @INLINE_DATA, align 4
  %48 = call i32 @CHECK_FLAG_VALUE(i32 %47)
  %49 = load i32, i32* @PROJINHERIT, align 4
  %50 = call i32 @CHECK_FLAG_VALUE(i32 %49)
  %51 = load i32, i32* @RESERVED, align 4
  %52 = call i32 @CHECK_FLAG_VALUE(i32 %51)
  ret void
}

declare dso_local i32 @CHECK_FLAG_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
