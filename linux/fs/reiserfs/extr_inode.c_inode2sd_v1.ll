; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_inode2sd_v1.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_inode2sd_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.stat_data_v1 = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SD_V1_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.inode*, i32)* @inode2sd_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode2sd_v1(i8* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat_data_v1*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.stat_data_v1*
  store %struct.stat_data_v1* %9, %struct.stat_data_v1** %7, align 8
  %10 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set_sd_v1_mode(%struct.stat_data_v1* %10, i32 %13)
  %15 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call i32 @i_uid_read(%struct.inode* %16)
  %18 = call i32 @set_sd_v1_uid(%struct.stat_data_v1* %15, i32 %17)
  %19 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @i_gid_read(%struct.inode* %20)
  %22 = call i32 @set_sd_v1_gid(%struct.stat_data_v1* %19, i32 %21)
  %23 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @set_sd_v1_nlink(%struct.stat_data_v1* %23, i32 %26)
  %28 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @set_sd_v1_size(%struct.stat_data_v1* %28, i32 %29)
  %31 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_sd_v1_atime(%struct.stat_data_v1* %31, i32 %35)
  %37 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_sd_v1_ctime(%struct.stat_data_v1* %37, i32 %41)
  %43 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @set_sd_v1_mtime(%struct.stat_data_v1* %43, i32 %47)
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @S_ISCHR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %3
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @S_ISBLK(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54, %3
  %61 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @new_encode_dev(i32 %64)
  %66 = call i32 @set_sd_v1_rdev(%struct.stat_data_v1* %61, i32 %65)
  br label %73

67:                                               ; preds = %54
  %68 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = load i32, i32* @SD_V1_SIZE, align 4
  %71 = call i32 @to_fake_used_blocks(%struct.inode* %69, i32 %70)
  %72 = call i32 @set_sd_v1_blocks(%struct.stat_data_v1* %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.stat_data_v1*, %struct.stat_data_v1** %7, align 8
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = call %struct.TYPE_8__* @REISERFS_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @set_sd_v1_first_direct_byte(%struct.stat_data_v1* %74, i32 %78)
  ret void
}

declare dso_local i32 @set_sd_v1_mode(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @set_sd_v1_uid(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @set_sd_v1_gid(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i32 @set_sd_v1_nlink(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @set_sd_v1_size(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @set_sd_v1_atime(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @set_sd_v1_ctime(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @set_sd_v1_mtime(%struct.stat_data_v1*, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @set_sd_v1_rdev(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @set_sd_v1_blocks(%struct.stat_data_v1*, i32) #1

declare dso_local i32 @to_fake_used_blocks(%struct.inode*, i32) #1

declare dso_local i32 @set_sd_v1_first_direct_byte(%struct.stat_data_v1*, i32) #1

declare dso_local %struct.TYPE_8__* @REISERFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
