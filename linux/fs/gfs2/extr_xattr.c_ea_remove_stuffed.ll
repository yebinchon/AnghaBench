; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_remove_stuffed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_remove_stuffed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_ea_location = type { i32, %struct.gfs2_ea_header*, %struct.gfs2_ea_header* }
%struct.gfs2_ea_header = type { i32, i32, i32 }

@RES_DINODE = common dso_local global i64 0, align 8
@RES_EATTR = common dso_local global i64 0, align 8
@GFS2_EAFLAG_LAST = common dso_local global i32 0, align 4
@GFS2_EATYPE_UNUSED = common dso_local global i32 0, align 4
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_ea_location*)* @ea_remove_stuffed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_remove_stuffed(%struct.gfs2_inode* %0, %struct.gfs2_ea_location* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_ea_location*, align 8
  %6 = alloca %struct.gfs2_ea_header*, align 8
  %7 = alloca %struct.gfs2_ea_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.gfs2_ea_location* %1, %struct.gfs2_ea_location** %5, align 8
  %10 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %5, align 8
  %11 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %10, i32 0, i32 2
  %12 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %11, align 8
  store %struct.gfs2_ea_header* %12, %struct.gfs2_ea_header** %6, align 8
  %13 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %5, align 8
  %14 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %13, i32 0, i32 1
  %15 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %14, align 8
  store %struct.gfs2_ea_header* %15, %struct.gfs2_ea_header** %7, align 8
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %17 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %16, i32 0, i32 0
  %18 = call i32 @GFS2_SB(%struct.TYPE_4__* %17)
  %19 = load i64, i64* @RES_DINODE, align 8
  %20 = load i64, i64* @RES_EATTR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @gfs2_trans_begin(i32 %18, i64 %21, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %77

27:                                               ; preds = %2
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %5, align 8
  %32 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @gfs2_trans_add_meta(i32 %30, i32 %33)
  %35 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %7, align 8
  %36 = icmp ne %struct.gfs2_ea_header* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %27
  %38 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %7, align 8
  %39 = call i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %38)
  %40 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %41 = call i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %40)
  %42 = add nsw i64 %39, %41
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @cpu_to_be32(i64 %43)
  %45 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %7, align 8
  %46 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %48 = call i64 @GFS2_EA_IS_LAST(%struct.gfs2_ea_header* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load i32, i32* @GFS2_EAFLAG_LAST, align 4
  %52 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %7, align 8
  %53 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %37
  br label %61

57:                                               ; preds = %27
  %58 = load i32, i32* @GFS2_EATYPE_UNUSED, align 4
  %59 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %60 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %56
  %62 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %63 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %62, i32 0, i32 0
  %64 = call i32 @current_time(%struct.TYPE_4__* %63)
  %65 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %66 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %69 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %68, i32 0, i32 0
  %70 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %71 = call i32 @__mark_inode_dirty(%struct.TYPE_4__* %69, i32 %70)
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %73 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %72, i32 0, i32 0
  %74 = call i32 @GFS2_SB(%struct.TYPE_4__* %73)
  %75 = call i32 @gfs2_trans_end(i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %61, %25
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @gfs2_trans_begin(i32, i64, i32) #1

declare dso_local i32 @GFS2_SB(%struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, i32) #1

declare dso_local i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @GFS2_EA_IS_LAST(%struct.gfs2_ea_header*) #1

declare dso_local i32 @current_time(%struct.TYPE_4__*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @gfs2_trans_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
