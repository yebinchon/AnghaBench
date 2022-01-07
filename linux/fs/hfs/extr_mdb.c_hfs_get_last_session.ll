; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_mdb.c_hfs_get_last_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_mdb.c_hfs_get_last_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.cdrom_multisession = type { %struct.TYPE_6__, i64, i8* }
%struct.TYPE_6__ = type { i64 }
%struct.cdrom_tocentry = type { i64, i32, %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@CDROM_LBA = common dso_local global i8* null, align 8
@CDROMREADTOCENTRY = common dso_local global i32 0, align 4
@CDROM_DATA_TRACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"invalid session number or type of track\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CDROMMULTISESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i32*)* @hfs_get_last_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_get_last_session(%struct.super_block* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cdrom_multisession, align 8
  %9 = alloca %struct.cdrom_tocentry, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @i_size_read(i32 %16)
  %18 = ashr i32 %17, 9
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = call %struct.TYPE_8__* @HFS_SB(%struct.super_block* %20)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %3
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = call %struct.TYPE_8__* @HFS_SB(%struct.super_block* %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load i8*, i8** @CDROM_LBA, align 8
  %32 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i32 0, i32 3
  store i8* %31, i8** %32, align 8
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32, i32* @CDROMREADTOCENTRY, align 4
  %37 = ptrtoint %struct.cdrom_tocentry* %9 to i64
  %38 = call i32 @ioctl_by_bdev(%struct.TYPE_7__* %35, i32 %36, i64 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CDROM_DATA_TRACK, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %9, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 %51, 2
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %81

54:                                               ; preds = %41, %25
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %81

58:                                               ; preds = %3
  %59 = load i8*, i8** @CDROM_LBA, align 8
  %60 = getelementptr inbounds %struct.cdrom_multisession, %struct.cdrom_multisession* %8, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = load %struct.super_block*, %struct.super_block** %5, align 8
  %62 = getelementptr inbounds %struct.super_block, %struct.super_block* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* @CDROMMULTISESSION, align 4
  %65 = ptrtoint %struct.cdrom_multisession* %8 to i64
  %66 = call i32 @ioctl_by_bdev(%struct.TYPE_7__* %63, i32 %64, i64 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.cdrom_multisession, %struct.cdrom_multisession* %8, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.cdrom_multisession, %struct.cdrom_multisession* %8, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 2
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %69, %58
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %54, %47
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @i_size_read(i32) #1

declare dso_local %struct.TYPE_8__* @HFS_SB(%struct.super_block*) #1

declare dso_local i32 @ioctl_by_bdev(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
