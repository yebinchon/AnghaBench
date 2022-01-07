; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_attach.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.msdos_sb_info = type { i32, %struct.hlist_head*, %struct.TYPE_3__, i32, %struct.hlist_head* }
%struct.TYPE_3__ = type { i64 }
%struct.hlist_head = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@MSDOS_ROOT_INO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fat_attach(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msdos_sb_info*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca %struct.hlist_head*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.msdos_sb_info* @MSDOS_SB(i32 %10)
  store %struct.msdos_sb_info* %11, %struct.msdos_sb_info** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MSDOS_ROOT_INO, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %18, i32 0, i32 4
  %20 = load %struct.hlist_head*, %struct.hlist_head** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @fat_hash(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %20, i64 %23
  store %struct.hlist_head* %24, %struct.hlist_head** %6, align 8
  %25 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %26 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %25, i32 0, i32 3
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %36 = call i32 @hlist_add_head(i32* %34, %struct.hlist_head* %35)
  %37 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %38 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %37, i32 0, i32 3
  %39 = call i32 @spin_unlock(i32* %38)
  br label %40

40:                                               ; preds = %17, %2
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @S_ISDIR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %48 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %46
  %53 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %54 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %53, i32 0, i32 1
  %55 = load %struct.hlist_head*, %struct.hlist_head** %54, align 8
  store %struct.hlist_head* %55, %struct.hlist_head** %7, align 8
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fat_dir_hash(i32 %59)
  %61 = load %struct.hlist_head*, %struct.hlist_head** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %61, i64 %62
  store %struct.hlist_head* %63, %struct.hlist_head** %7, align 8
  %64 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %65 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %64, i32 0, i32 0
  %66 = call i32 @spin_lock(i32* %65)
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.hlist_head*, %struct.hlist_head** %7, align 8
  %71 = call i32 @hlist_add_head(i32* %69, %struct.hlist_head* %70)
  %72 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %73 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  br label %75

75:                                               ; preds = %52, %46, %40
  ret void
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(i32) #1

declare dso_local i32 @fat_hash(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @fat_dir_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
