; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_other_inode_match.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_other_inode_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.other_inode = type { i32, i32 }
%struct.ext4_inode_info = type { i32 }

@I_FREEING = common dso_local global i32 0, align 4
@I_WILL_FREE = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@I_DIRTY_INODE = common dso_local global i32 0, align 4
@I_DIRTY_TIME = common dso_local global i32 0, align 4
@I_DIRTY_TIME_EXPIRED = common dso_local global i32 0, align 4
@i_ctime = common dso_local global i32 0, align 4
@i_mtime = common dso_local global i32 0, align 4
@i_atime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i8*)* @other_inode_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @other_inode_match(%struct.inode* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.other_inode*, align 8
  %9 = alloca %struct.ext4_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.other_inode*
  store %struct.other_inode* %11, %struct.other_inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @I_FREEING, align 4
  %22 = load i32, i32* @I_WILL_FREE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @I_NEW, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @I_DIRTY_INODE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %20, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %17
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @I_DIRTY_TIME, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %17, %3
  store i32 0, i32* %4, align 4
  br label %114

38:                                               ; preds = %30
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @I_FREEING, align 4
  %46 = load i32, i32* @I_WILL_FREE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @I_NEW, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @I_DIRTY_INODE, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %44, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %110

54:                                               ; preds = %38
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @I_DIRTY_TIME, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %110

61:                                               ; preds = %54
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %62)
  store %struct.ext4_inode_info* %63, %struct.ext4_inode_info** %9, align 8
  %64 = load i32, i32* @I_DIRTY_TIME, align 4
  %65 = load i32, i32* @I_DIRTY_TIME_EXPIRED, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 2
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %76 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %75, i32 0, i32 0
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load i32, i32* @i_ctime, align 4
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = load %struct.other_inode*, %struct.other_inode** %8, align 8
  %81 = getelementptr inbounds %struct.other_inode, %struct.other_inode* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @EXT4_INODE_SET_XTIME(i32 %78, %struct.inode* %79, i32 %82)
  %84 = load i32, i32* @i_mtime, align 4
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = load %struct.other_inode*, %struct.other_inode** %8, align 8
  %87 = getelementptr inbounds %struct.other_inode, %struct.other_inode* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @EXT4_INODE_SET_XTIME(i32 %84, %struct.inode* %85, i32 %88)
  %90 = load i32, i32* @i_atime, align 4
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = load %struct.other_inode*, %struct.other_inode** %8, align 8
  %93 = getelementptr inbounds %struct.other_inode, %struct.other_inode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @EXT4_INODE_SET_XTIME(i32 %90, %struct.inode* %91, i32 %94)
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = load %struct.other_inode*, %struct.other_inode** %8, align 8
  %98 = getelementptr inbounds %struct.other_inode, %struct.other_inode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %101 = call i32 @ext4_inode_csum_set(%struct.inode* %96, i32 %99, %struct.ext4_inode_info* %100)
  %102 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %103 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = load %struct.other_inode*, %struct.other_inode** %8, align 8
  %107 = getelementptr inbounds %struct.other_inode, %struct.other_inode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @trace_ext4_other_inode_update_time(%struct.inode* %105, i32 %108)
  store i32 -1, i32* %4, align 4
  br label %114

110:                                              ; preds = %54, %38
  %111 = load %struct.inode*, %struct.inode** %5, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 2
  %113 = call i32 @spin_unlock(i32* %112)
  store i32 -1, i32* %4, align 4
  br label %114

114:                                              ; preds = %110, %61, %37
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @EXT4_INODE_SET_XTIME(i32, %struct.inode*, i32) #1

declare dso_local i32 @ext4_inode_csum_set(%struct.inode*, i32, %struct.ext4_inode_info*) #1

declare dso_local i32 @trace_ext4_other_inode_update_time(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
