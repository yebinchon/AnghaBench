; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_atime_needs_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_atime_needs_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.vfsmount* }
%struct.vfsmount = type { i32 }
%struct.inode = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timespec64 = type { i32 }

@S_NOATIME = common dso_local global i32 0, align 4
@SB_NODIRATIME = common dso_local global i32 0, align 4
@MNT_NOATIME = common dso_local global i32 0, align 4
@MNT_NODIRATIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atime_needs_update(%struct.path* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.timespec64, align 4
  %8 = alloca %struct.timespec64, align 4
  store %struct.path* %0, %struct.path** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.path*, %struct.path** %4, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %11 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  store %struct.vfsmount* %11, %struct.vfsmount** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @S_NOATIME, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i64 @HAS_UNMAPPED_ID(%struct.inode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %87

24:                                               ; preds = %19
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i64 @IS_NOATIME(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %87

29:                                               ; preds = %24
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SB_NODIRATIME, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @S_ISDIR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %87

45:                                               ; preds = %38, %29
  %46 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %47 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MNT_NOATIME, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %87

53:                                               ; preds = %45
  %54 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %55 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MNT_NODIRATIME, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @S_ISDIR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %87

67:                                               ; preds = %60, %53
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = call i32 @current_time(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = bitcast %struct.timespec64* %7 to i8*
  %72 = bitcast %struct.timespec64* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 4, i1 false)
  %73 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @relatime_need_update(%struct.vfsmount* %73, %struct.inode* %74, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %87

80:                                               ; preds = %67
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  %83 = call i64 @timespec64_equal(i32* %82, %struct.timespec64* %7)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %87

86:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %85, %79, %66, %52, %44, %28, %23, %18
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @HAS_UNMAPPED_ID(%struct.inode*) #1

declare dso_local i64 @IS_NOATIME(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @relatime_need_update(%struct.vfsmount*, %struct.inode*, i32) #1

declare dso_local i64 @timespec64_equal(i32*, %struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
