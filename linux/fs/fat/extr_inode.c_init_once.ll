; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_init_once.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdos_inode_info = type { i32, i32, i32, i32, i64, i64, i32 }

@FAT_CACHE_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @init_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_once(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.msdos_inode_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.msdos_inode_info*
  store %struct.msdos_inode_info* %5, %struct.msdos_inode_info** %3, align 8
  %6 = load %struct.msdos_inode_info*, %struct.msdos_inode_info** %3, align 8
  %7 = getelementptr inbounds %struct.msdos_inode_info, %struct.msdos_inode_info* %6, i32 0, i32 6
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.msdos_inode_info*, %struct.msdos_inode_info** %3, align 8
  %10 = getelementptr inbounds %struct.msdos_inode_info, %struct.msdos_inode_info* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load i64, i64* @FAT_CACHE_VALID, align 8
  %12 = add nsw i64 %11, 1
  %13 = load %struct.msdos_inode_info*, %struct.msdos_inode_info** %3, align 8
  %14 = getelementptr inbounds %struct.msdos_inode_info, %struct.msdos_inode_info* %13, i32 0, i32 4
  store i64 %12, i64* %14, align 8
  %15 = load %struct.msdos_inode_info*, %struct.msdos_inode_info** %3, align 8
  %16 = getelementptr inbounds %struct.msdos_inode_info, %struct.msdos_inode_info* %15, i32 0, i32 3
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.msdos_inode_info*, %struct.msdos_inode_info** %3, align 8
  %19 = getelementptr inbounds %struct.msdos_inode_info, %struct.msdos_inode_info* %18, i32 0, i32 2
  %20 = call i32 @INIT_HLIST_NODE(i32* %19)
  %21 = load %struct.msdos_inode_info*, %struct.msdos_inode_info** %3, align 8
  %22 = getelementptr inbounds %struct.msdos_inode_info, %struct.msdos_inode_info* %21, i32 0, i32 1
  %23 = call i32 @INIT_HLIST_NODE(i32* %22)
  %24 = load %struct.msdos_inode_info*, %struct.msdos_inode_info** %3, align 8
  %25 = getelementptr inbounds %struct.msdos_inode_info, %struct.msdos_inode_info* %24, i32 0, i32 0
  %26 = call i32 @inode_init_once(i32* %25)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @inode_init_once(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
