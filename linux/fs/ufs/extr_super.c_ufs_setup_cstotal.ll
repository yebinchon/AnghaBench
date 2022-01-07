; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_setup_cstotal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_setup_cstotal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_sb_info = type { i32, %struct.ufs_sb_private_info* }
%struct.ufs_sb_private_info = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8* }
%struct.ufs_super_block_first = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.ufs_super_block_second = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.ufs_super_block_third = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@UFS_MOUNT_UFSTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ENTER, mtype=%u\0A\00", align 1
@UFS_MOUNT_UFSTYPE_44BSD = common dso_local global i32 0, align 4
@UFS_MOUNT_UFSTYPE_UFS2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ufs_setup_cstotal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_setup_cstotal(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ufs_sb_info*, align 8
  %4 = alloca %struct.ufs_sb_private_info*, align 8
  %5 = alloca %struct.ufs_super_block_first*, align 8
  %6 = alloca %struct.ufs_super_block_second*, align 8
  %7 = alloca %struct.ufs_super_block_third*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call %struct.ufs_sb_info* @UFS_SB(%struct.super_block* %9)
  store %struct.ufs_sb_info* %10, %struct.ufs_sb_info** %3, align 8
  %11 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %11, i32 0, i32 1
  %13 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %12, align 8
  store %struct.ufs_sb_private_info* %13, %struct.ufs_sb_private_info** %4, align 8
  %14 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @UFS_MOUNT_UFSTYPE, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %22 = call %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info* %21)
  store %struct.ufs_super_block_first* %22, %struct.ufs_super_block_first** %5, align 8
  %23 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %24 = call %struct.ufs_super_block_second* @ubh_get_usb_second(%struct.ufs_sb_private_info* %23)
  store %struct.ufs_super_block_second* %24, %struct.ufs_super_block_second** %6, align 8
  %25 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %26 = call %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info* %25)
  store %struct.ufs_super_block_third* %26, %struct.ufs_super_block_third** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @UFS_MOUNT_UFSTYPE_44BSD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %1
  %31 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %32 = getelementptr inbounds %struct.ufs_super_block_second, %struct.ufs_super_block_second* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %37 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %30, %1
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @UFS_MOUNT_UFSTYPE_UFS2, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %40, %30
  %45 = load %struct.super_block*, %struct.super_block** %2, align 8
  %46 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %47 = getelementptr inbounds %struct.ufs_super_block_second, %struct.ufs_super_block_second* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @fs64_to_cpu(%struct.super_block* %45, i32 %50)
  %52 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %53 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  store i8* %51, i8** %54, align 8
  %55 = load %struct.super_block*, %struct.super_block** %2, align 8
  %56 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %57 = getelementptr inbounds %struct.ufs_super_block_second, %struct.ufs_super_block_second* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @fs64_to_cpu(%struct.super_block* %55, i32 %60)
  %62 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %63 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  store i8* %61, i8** %64, align 8
  %65 = load %struct.super_block*, %struct.super_block** %2, align 8
  %66 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %67 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @fs64_to_cpu(%struct.super_block* %65, i32 %70)
  %72 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %73 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store i8* %71, i8** %74, align 8
  %75 = load %struct.super_block*, %struct.super_block** %2, align 8
  %76 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %77 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @fs64_to_cpu(%struct.super_block* %75, i32 %80)
  %82 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %83 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i8* %81, i8** %84, align 8
  br label %122

85:                                               ; preds = %40
  %86 = load %struct.super_block*, %struct.super_block** %2, align 8
  %87 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %88 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @fs32_to_cpu(%struct.super_block* %86, i32 %90)
  %92 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %93 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  store i8* %91, i8** %94, align 8
  %95 = load %struct.super_block*, %struct.super_block** %2, align 8
  %96 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %97 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @fs32_to_cpu(%struct.super_block* %95, i32 %99)
  %101 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %102 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  store i8* %100, i8** %103, align 8
  %104 = load %struct.super_block*, %struct.super_block** %2, align 8
  %105 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %106 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @fs32_to_cpu(%struct.super_block* %104, i32 %108)
  %110 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %111 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i8* %109, i8** %112, align 8
  %113 = load %struct.super_block*, %struct.super_block** %2, align 8
  %114 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %115 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @fs32_to_cpu(%struct.super_block* %113, i32 %117)
  %119 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %120 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i8* %118, i8** %121, align 8
  br label %122

122:                                              ; preds = %85, %44
  %123 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ufs_sb_info* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*, ...) #1

declare dso_local %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_super_block_second* @ubh_get_usb_second(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info*) #1

declare dso_local i8* @fs64_to_cpu(%struct.super_block*, i32) #1

declare dso_local i8* @fs32_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
