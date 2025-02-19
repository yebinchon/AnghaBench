; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_file.c_fat_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_file.c_fat_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@FAT_NFS_NOSTALE_RO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.path*, %struct.path** %5, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.inode* @d_inode(i32 %12)
  store %struct.inode* %13, %struct.inode** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %9, align 8
  %15 = load %struct.kstat*, %struct.kstat** %6, align 8
  %16 = call i32 @generic_fillattr(%struct.inode* %14, %struct.kstat* %15)
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_5__* @MSDOS_SB(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.kstat*, %struct.kstat** %6, align 8
  %24 = getelementptr inbounds %struct.kstat, %struct.kstat* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_5__* @MSDOS_SB(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FAT_NFS_NOSTALE_RO, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %4
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_5__* @MSDOS_SB(i32 %37)
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = call i32 @fat_i_pos_read(%struct.TYPE_5__* %38, %struct.inode* %39)
  %41 = load %struct.kstat*, %struct.kstat** %6, align 8
  %42 = getelementptr inbounds %struct.kstat, %struct.kstat* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %34, %4
  ret i32 0
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local %struct.TYPE_5__* @MSDOS_SB(i32) #1

declare dso_local i32 @fat_i_pos_read(%struct.TYPE_5__*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
