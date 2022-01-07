; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_detach.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.msdos_sb_info = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fat_detach(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.msdos_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.msdos_sb_info* @MSDOS_SB(i32 %6)
  store %struct.msdos_sb_info* %7, %struct.msdos_sb_info** %3, align 8
  %8 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %8, i32 0, i32 2
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = call i32 @hlist_del_init(i32* %16)
  %18 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %19 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %18, i32 0, i32 2
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @S_ISDIR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %1
  %27 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %28 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %34 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.inode*, %struct.inode** %2, align 8
  %37 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @hlist_del_init(i32* %38)
  %40 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %41 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %32, %26, %1
  ret void
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
