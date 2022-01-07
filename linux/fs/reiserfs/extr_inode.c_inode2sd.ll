; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_inode2sd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_inode2sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.stat_data = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SD_V2_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.inode*, i32)* @inode2sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode2sd(i8* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat_data*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.stat_data*
  store %struct.stat_data* %9, %struct.stat_data** %7, align 8
  %10 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set_sd_v2_mode(%struct.stat_data* %10, i32 %13)
  %15 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @set_sd_v2_nlink(%struct.stat_data* %15, i32 %18)
  %20 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @i_uid_read(%struct.inode* %21)
  %23 = call i32 @set_sd_v2_uid(%struct.stat_data* %20, i32 %22)
  %24 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @set_sd_v2_size(%struct.stat_data* %24, i32 %25)
  %27 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call i32 @i_gid_read(%struct.inode* %28)
  %30 = call i32 @set_sd_v2_gid(%struct.stat_data* %27, i32 %29)
  %31 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_sd_v2_mtime(%struct.stat_data* %31, i32 %35)
  %37 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_sd_v2_atime(%struct.stat_data* %37, i32 %41)
  %43 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @set_sd_v2_ctime(%struct.stat_data* %43, i32 %47)
  %49 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load i32, i32* @SD_V2_SIZE, align 4
  %52 = call i32 @to_fake_used_blocks(%struct.inode* %50, i32 %51)
  %53 = call i32 @set_sd_v2_blocks(%struct.stat_data* %49, i32 %52)
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @S_ISCHR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %3
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISBLK(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59, %3
  %66 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @new_encode_dev(i32 %69)
  %71 = call i32 @set_sd_v2_rdev(%struct.stat_data* %66, i32 %70)
  br label %78

72:                                               ; preds = %59
  %73 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @set_sd_v2_generation(%struct.stat_data* %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %65
  %79 = load %struct.stat_data*, %struct.stat_data** %7, align 8
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = call %struct.TYPE_8__* @REISERFS_I(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @set_sd_v2_attrs(%struct.stat_data* %79, i32 %83)
  ret void
}

declare dso_local i32 @set_sd_v2_mode(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_nlink(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_uid(%struct.stat_data*, i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @set_sd_v2_size(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_gid(%struct.stat_data*, i32) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i32 @set_sd_v2_mtime(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_atime(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_ctime(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_blocks(%struct.stat_data*, i32) #1

declare dso_local i32 @to_fake_used_blocks(%struct.inode*, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @set_sd_v2_rdev(%struct.stat_data*, i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @set_sd_v2_generation(%struct.stat_data*, i32) #1

declare dso_local i32 @set_sd_v2_attrs(%struct.stat_data*, i32) #1

declare dso_local %struct.TYPE_8__* @REISERFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
