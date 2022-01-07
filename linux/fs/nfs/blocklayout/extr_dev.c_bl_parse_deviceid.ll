; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_parse_deviceid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_parse_deviceid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.pnfs_block_dev = type { i32 }
%struct.pnfs_block_volume = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"unsupported volume type: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.pnfs_block_dev*, %struct.pnfs_block_volume*, i32, i32)* @bl_parse_deviceid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_parse_deviceid(%struct.nfs_server* %0, %struct.pnfs_block_dev* %1, %struct.pnfs_block_volume* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.pnfs_block_dev*, align 8
  %9 = alloca %struct.pnfs_block_volume*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %7, align 8
  store %struct.pnfs_block_dev* %1, %struct.pnfs_block_dev** %8, align 8
  store %struct.pnfs_block_volume* %2, %struct.pnfs_block_volume** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %9, align 8
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %12, i64 %14
  %16 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %53 [
    i32 130, label %18
    i32 129, label %25
    i32 132, label %32
    i32 128, label %39
    i32 131, label %46
  ]

18:                                               ; preds = %5
  %19 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %20 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %21 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @bl_parse_simple(%struct.nfs_server* %19, %struct.pnfs_block_dev* %20, %struct.pnfs_block_volume* %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %63

25:                                               ; preds = %5
  %26 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %27 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %28 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @bl_parse_slice(%struct.nfs_server* %26, %struct.pnfs_block_dev* %27, %struct.pnfs_block_volume* %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %63

32:                                               ; preds = %5
  %33 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %34 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %35 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @bl_parse_concat(%struct.nfs_server* %33, %struct.pnfs_block_dev* %34, %struct.pnfs_block_volume* %35, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %63

39:                                               ; preds = %5
  %40 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %41 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %42 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @bl_parse_stripe(%struct.nfs_server* %40, %struct.pnfs_block_dev* %41, %struct.pnfs_block_volume* %42, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %63

46:                                               ; preds = %5
  %47 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %48 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %49 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @bl_parse_scsi(%struct.nfs_server* %47, %struct.pnfs_block_dev* %48, %struct.pnfs_block_volume* %49, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %63

53:                                               ; preds = %5
  %54 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %54, i64 %56
  %58 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %53, %46, %39, %32, %25, %18
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @bl_parse_simple(%struct.nfs_server*, %struct.pnfs_block_dev*, %struct.pnfs_block_volume*, i32, i32) #1

declare dso_local i32 @bl_parse_slice(%struct.nfs_server*, %struct.pnfs_block_dev*, %struct.pnfs_block_volume*, i32, i32) #1

declare dso_local i32 @bl_parse_concat(%struct.nfs_server*, %struct.pnfs_block_dev*, %struct.pnfs_block_volume*, i32, i32) #1

declare dso_local i32 @bl_parse_stripe(%struct.nfs_server*, %struct.pnfs_block_dev*, %struct.pnfs_block_volume*, i32, i32) #1

declare dso_local i32 @bl_parse_scsi(%struct.nfs_server*, %struct.pnfs_block_dev*, %struct.pnfs_block_volume*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
