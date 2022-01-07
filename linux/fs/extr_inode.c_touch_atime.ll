; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_touch_atime.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_touch_atime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, %struct.vfsmount* }
%struct.vfsmount = type { i32 }
%struct.inode = type { i32 }
%struct.timespec64 = type { i32 }

@S_ATIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @touch_atime(%struct.path* %0) #0 {
  %2 = alloca %struct.path*, align 8
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.timespec64, align 4
  %6 = alloca %struct.timespec64, align 4
  store %struct.path* %0, %struct.path** %2, align 8
  %7 = load %struct.path*, %struct.path** %2, align 8
  %8 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 1
  %9 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  store %struct.vfsmount* %9, %struct.vfsmount** %3, align 8
  %10 = load %struct.path*, %struct.path** %2, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.inode* @d_inode(i32 %12)
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.path*, %struct.path** %2, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i32 @atime_needs_update(%struct.path* %14, %struct.inode* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sb_start_write_trylock(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %47

26:                                               ; preds = %19
  %27 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %28 = call i64 @__mnt_want_write(%struct.vfsmount* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %42

31:                                               ; preds = %26
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call i32 @current_time(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = bitcast %struct.timespec64* %5 to i8*
  %36 = bitcast %struct.timespec64* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = load i32, i32* @S_ATIME, align 4
  %39 = call i32 @update_time(%struct.inode* %37, %struct.timespec64* %5, i32 %38)
  %40 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %41 = call i32 @__mnt_drop_write(%struct.vfsmount* %40)
  br label %42

42:                                               ; preds = %31, %30
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sb_end_write(i32 %45)
  br label %47

47:                                               ; preds = %42, %25, %18
  ret void
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @atime_needs_update(%struct.path*, %struct.inode*) #1

declare dso_local i32 @sb_start_write_trylock(i32) #1

declare dso_local i64 @__mnt_want_write(%struct.vfsmount*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @update_time(%struct.inode*, %struct.timespec64*, i32) #1

declare dso_local i32 @__mnt_drop_write(%struct.vfsmount*) #1

declare dso_local i32 @sb_end_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
