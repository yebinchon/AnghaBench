; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_parse_scsi.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_parse_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.pnfs_block_dev = type { i32, %struct.block_device*, i32, i32, i32 }
%struct.block_device = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.pr_ops* }
%struct.pr_ops = type { i32 (%struct.block_device.0*, i32, i32, i32)* }
%struct.block_device.0 = type opaque
%struct.pnfs_block_volume = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@bl_map_simple = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"pNFS: using block device %s (reservation key 0x%llx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"pNFS: block device %s does not support reservations.\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"pNFS: failed to register key for block device %s.\00", align 1
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.pnfs_block_dev*, %struct.pnfs_block_volume*, i32, i32)* @bl_parse_scsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_parse_scsi(%struct.nfs_server* %0, %struct.pnfs_block_dev* %1, %struct.pnfs_block_volume* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.pnfs_block_dev*, align 8
  %9 = alloca %struct.pnfs_block_volume*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pnfs_block_volume*, align 8
  %13 = alloca %struct.block_device*, align 8
  %14 = alloca %struct.pr_ops*, align 8
  %15 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %7, align 8
  store %struct.pnfs_block_dev* %1, %struct.pnfs_block_dev** %8, align 8
  store %struct.pnfs_block_volume* %2, %struct.pnfs_block_volume** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %16, i64 %18
  store %struct.pnfs_block_volume* %19, %struct.pnfs_block_volume** %12, align 8
  %20 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %12, align 8
  %21 = call i32 @bl_validate_designator(%struct.pnfs_block_volume* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %131

26:                                               ; preds = %5
  %27 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %12, align 8
  %28 = call %struct.block_device* @bl_open_dm_mpath_udev_path(%struct.pnfs_block_volume* %27)
  store %struct.block_device* %28, %struct.block_device** %13, align 8
  %29 = load %struct.block_device*, %struct.block_device** %13, align 8
  %30 = call i64 @IS_ERR(%struct.block_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %12, align 8
  %34 = call %struct.block_device* @bl_open_udev_path(%struct.pnfs_block_volume* %33)
  store %struct.block_device* %34, %struct.block_device** %13, align 8
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.block_device*, %struct.block_device** %13, align 8
  %37 = call i64 @IS_ERR(%struct.block_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.block_device*, %struct.block_device** %13, align 8
  %41 = call i32 @PTR_ERR(%struct.block_device* %40)
  store i32 %41, i32* %6, align 4
  br label %131

42:                                               ; preds = %35
  %43 = load %struct.block_device*, %struct.block_device** %13, align 8
  %44 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %45 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %44, i32 0, i32 1
  store %struct.block_device* %43, %struct.block_device** %45, align 8
  %46 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %47 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %46, i32 0, i32 1
  %48 = load %struct.block_device*, %struct.block_device** %47, align 8
  %49 = getelementptr inbounds %struct.block_device, %struct.block_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @i_size_read(i32 %50)
  %52 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %53 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @bl_map_simple, align 4
  %55 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %56 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %12, align 8
  %58 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %62 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %64 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %63, i32 0, i32 1
  %65 = load %struct.block_device*, %struct.block_device** %64, align 8
  %66 = getelementptr inbounds %struct.block_device, %struct.block_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %71 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %75 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %74, i32 0, i32 1
  %76 = load %struct.block_device*, %struct.block_device** %75, align 8
  %77 = getelementptr inbounds %struct.block_device, %struct.block_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.pr_ops*, %struct.pr_ops** %81, align 8
  store %struct.pr_ops* %82, %struct.pr_ops** %14, align 8
  %83 = load %struct.pr_ops*, %struct.pr_ops** %14, align 8
  %84 = icmp ne %struct.pr_ops* %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %42
  %86 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %87 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %86, i32 0, i32 1
  %88 = load %struct.block_device*, %struct.block_device** %87, align 8
  %89 = getelementptr inbounds %struct.block_device, %struct.block_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %15, align 4
  br label %122

96:                                               ; preds = %42
  %97 = load %struct.pr_ops*, %struct.pr_ops** %14, align 8
  %98 = getelementptr inbounds %struct.pr_ops, %struct.pr_ops* %97, i32 0, i32 0
  %99 = load i32 (%struct.block_device.0*, i32, i32, i32)*, i32 (%struct.block_device.0*, i32, i32, i32)** %98, align 8
  %100 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %101 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %100, i32 0, i32 1
  %102 = load %struct.block_device*, %struct.block_device** %101, align 8
  %103 = bitcast %struct.block_device* %102 to %struct.block_device.0*
  %104 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %105 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 %99(%struct.block_device.0* %103, i32 0, i32 %106, i32 1)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %96
  %111 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %112 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %111, i32 0, i32 1
  %113 = load %struct.block_device*, %struct.block_device** %112, align 8
  %114 = getelementptr inbounds %struct.block_device, %struct.block_device* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %122

119:                                              ; preds = %96
  %120 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %121 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  store i32 0, i32* %6, align 4
  br label %131

122:                                              ; preds = %110, %85
  %123 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %124 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %123, i32 0, i32 1
  %125 = load %struct.block_device*, %struct.block_device** %124, align 8
  %126 = load i32, i32* @FMODE_READ, align 4
  %127 = load i32, i32* @FMODE_WRITE, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @blkdev_put(%struct.block_device* %125, i32 %128)
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %122, %119, %39, %23
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @bl_validate_designator(%struct.pnfs_block_volume*) #1

declare dso_local %struct.block_device* @bl_open_dm_mpath_udev_path(%struct.pnfs_block_volume*) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local %struct.block_device* @bl_open_udev_path(%struct.pnfs_block_volume*) #1

declare dso_local i32 @PTR_ERR(%struct.block_device*) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
