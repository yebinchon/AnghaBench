; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_put_cstotal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_put_cstotal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_sb_private_info = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.ufs_super_block_first = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8* }
%struct.ufs_super_block_second = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i8*, i8* }
%struct.ufs_super_block_third = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i32, %struct.ufs_sb_private_info* }

@UFS_MOUNT_UFSTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@UFS_MOUNT_UFSTYPE_UFS2 = common dso_local global i32 0, align 4
@UFS_MOUNT_UFSTYPE_44BSD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ufs_put_cstotal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_put_cstotal(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ufs_sb_private_info*, align 8
  %5 = alloca %struct.ufs_super_block_first*, align 8
  %6 = alloca %struct.ufs_super_block_second*, align 8
  %7 = alloca %struct.ufs_super_block_third*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = call %struct.TYPE_14__* @UFS_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @UFS_MOUNT_UFSTYPE, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = call %struct.TYPE_14__* @UFS_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %16, align 8
  store %struct.ufs_sb_private_info* %17, %struct.ufs_sb_private_info** %4, align 8
  %18 = call i32 @UFSD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %20 = call %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info* %19)
  store %struct.ufs_super_block_first* %20, %struct.ufs_super_block_first** %5, align 8
  %21 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %22 = call %struct.ufs_super_block_second* @ubh_get_usb_second(%struct.ufs_sb_private_info* %21)
  store %struct.ufs_super_block_second* %22, %struct.ufs_super_block_second** %6, align 8
  %23 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %24 = call %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info* %23)
  store %struct.ufs_super_block_third* %24, %struct.ufs_super_block_third** %7, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @UFS_MOUNT_UFSTYPE_UFS2, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %1
  %29 = load %struct.super_block*, %struct.super_block** %2, align 8
  %30 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %31 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_fs64(%struct.super_block* %29, i32 %33)
  %35 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %36 = getelementptr inbounds %struct.ufs_super_block_second, %struct.ufs_super_block_second* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i8* %34, i8** %38, align 8
  %39 = load %struct.super_block*, %struct.super_block** %2, align 8
  %40 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %41 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_fs64(%struct.super_block* %39, i32 %43)
  %45 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %46 = getelementptr inbounds %struct.ufs_super_block_second, %struct.ufs_super_block_second* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i8* %44, i8** %48, align 8
  %49 = load %struct.super_block*, %struct.super_block** %2, align 8
  %50 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %51 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @cpu_to_fs64(%struct.super_block* %49, i32 %53)
  %55 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %56 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store i8* %54, i8** %58, align 8
  %59 = load %struct.super_block*, %struct.super_block** %2, align 8
  %60 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %61 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_fs64(%struct.super_block* %59, i32 %63)
  %65 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %66 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i8* %64, i8** %68, align 8
  br label %161

69:                                               ; preds = %1
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @UFS_MOUNT_UFSTYPE_44BSD, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %124

73:                                               ; preds = %69
  %74 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %75 = getelementptr inbounds %struct.ufs_super_block_second, %struct.ufs_super_block_second* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %80 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %124

83:                                               ; preds = %73
  %84 = load %struct.super_block*, %struct.super_block** %2, align 8
  %85 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %86 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @cpu_to_fs64(%struct.super_block* %84, i32 %88)
  %90 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %91 = getelementptr inbounds %struct.ufs_super_block_second, %struct.ufs_super_block_second* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  store i8* %89, i8** %93, align 8
  %94 = load %struct.super_block*, %struct.super_block** %2, align 8
  %95 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %96 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_fs64(%struct.super_block* %94, i32 %98)
  %100 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %101 = getelementptr inbounds %struct.ufs_super_block_second, %struct.ufs_super_block_second* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i8* %99, i8** %103, align 8
  %104 = load %struct.super_block*, %struct.super_block** %2, align 8
  %105 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %106 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @cpu_to_fs64(%struct.super_block* %104, i32 %108)
  %110 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %111 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  store i8* %109, i8** %113, align 8
  %114 = load %struct.super_block*, %struct.super_block** %2, align 8
  %115 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %116 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @cpu_to_fs64(%struct.super_block* %114, i32 %118)
  %120 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %121 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i8* %119, i8** %123, align 8
  br label %124

124:                                              ; preds = %83, %73, %69
  %125 = load %struct.super_block*, %struct.super_block** %2, align 8
  %126 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %127 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @cpu_to_fs32(%struct.super_block* %125, i32 %129)
  %131 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %132 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  store i8* %130, i8** %133, align 8
  %134 = load %struct.super_block*, %struct.super_block** %2, align 8
  %135 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %136 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @cpu_to_fs32(%struct.super_block* %134, i32 %138)
  %140 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %141 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  store i8* %139, i8** %142, align 8
  %143 = load %struct.super_block*, %struct.super_block** %2, align 8
  %144 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %145 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @cpu_to_fs32(%struct.super_block* %143, i32 %147)
  %149 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %150 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  store i8* %148, i8** %151, align 8
  %152 = load %struct.super_block*, %struct.super_block** %2, align 8
  %153 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %154 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @cpu_to_fs32(%struct.super_block* %152, i32 %156)
  %158 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %159 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  store i8* %157, i8** %160, align 8
  br label %161

161:                                              ; preds = %124, %28
  %162 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %4, align 8
  %163 = call i32 @USPI_UBH(%struct.ufs_sb_private_info* %162)
  %164 = call i32 @ubh_mark_buffer_dirty(i32 %163)
  %165 = load %struct.super_block*, %struct.super_block** %2, align 8
  %166 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %5, align 8
  %167 = load %struct.ufs_super_block_second*, %struct.ufs_super_block_second** %6, align 8
  %168 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %169 = call i32 @ufs_print_super_stuff(%struct.super_block* %165, %struct.ufs_super_block_first* %166, %struct.ufs_super_block_second* %167, %struct.ufs_super_block_third* %168)
  %170 = call i32 @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_14__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*) #1

declare dso_local %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_super_block_second* @ubh_get_usb_second(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info*) #1

declare dso_local i8* @cpu_to_fs64(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

declare dso_local i32 @ubh_mark_buffer_dirty(i32) #1

declare dso_local i32 @USPI_UBH(%struct.ufs_sb_private_info*) #1

declare dso_local i32 @ufs_print_super_stuff(%struct.super_block*, %struct.ufs_super_block_first*, %struct.ufs_super_block_second*, %struct.ufs_super_block_third*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
