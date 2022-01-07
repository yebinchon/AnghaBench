; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_lock_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_lock_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.metapage = type { i32 }
%struct.tlock = type { i64 }
%struct.linelock = type { i64, i64, %struct.lv* }
%struct.lv = type { i32, i32 }

@tlckDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.inode*, %struct.metapage*, i32)* @lock_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lock_index(i32 %0, %struct.inode* %1, %struct.metapage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.metapage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tlock*, align 8
  %10 = alloca %struct.linelock*, align 8
  %11 = alloca %struct.lv*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.metapage* %2, %struct.metapage** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = load %struct.metapage*, %struct.metapage** %7, align 8
  %15 = load i32, i32* @tlckDATA, align 4
  %16 = call %struct.tlock* @txLock(i32 %12, %struct.inode* %13, %struct.metapage* %14, i32 %15)
  store %struct.tlock* %16, %struct.tlock** %9, align 8
  %17 = load %struct.tlock*, %struct.tlock** %9, align 8
  %18 = getelementptr inbounds %struct.tlock, %struct.tlock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.linelock*
  store %struct.linelock* %20, %struct.linelock** %10, align 8
  %21 = load %struct.linelock*, %struct.linelock** %10, align 8
  %22 = getelementptr inbounds %struct.linelock, %struct.linelock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.linelock*, %struct.linelock** %10, align 8
  %25 = getelementptr inbounds %struct.linelock, %struct.linelock* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.linelock*, %struct.linelock** %10, align 8
  %30 = call %struct.linelock* @txLinelock(%struct.linelock* %29)
  store %struct.linelock* %30, %struct.linelock** %10, align 8
  br label %31

31:                                               ; preds = %28, %4
  %32 = load %struct.linelock*, %struct.linelock** %10, align 8
  %33 = getelementptr inbounds %struct.linelock, %struct.linelock* %32, i32 0, i32 2
  %34 = load %struct.lv*, %struct.lv** %33, align 8
  %35 = load %struct.linelock*, %struct.linelock** %10, align 8
  %36 = getelementptr inbounds %struct.linelock, %struct.linelock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.lv, %struct.lv* %34, i64 %37
  store %struct.lv* %38, %struct.lv** %11, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 2
  %41 = and i32 %40, 511
  %42 = ashr i32 %41, 1
  %43 = load %struct.lv*, %struct.lv** %11, align 8
  %44 = getelementptr inbounds %struct.lv, %struct.lv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.lv*, %struct.lv** %11, align 8
  %46 = getelementptr inbounds %struct.lv, %struct.lv* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.linelock*, %struct.linelock** %10, align 8
  %48 = getelementptr inbounds %struct.linelock, %struct.linelock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  ret void
}

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local %struct.linelock* @txLinelock(%struct.linelock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
