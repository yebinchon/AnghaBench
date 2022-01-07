; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_free_zero_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_free_zero_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.maplock = type { i32 }
%struct.pxd_lock = type { i32, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"jfs_free_zero_link: ip = 0x%p\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@IDATASIZE = common dso_local global i64 0, align 8
@DXD_EXTENT = common dso_local global i32 0, align 4
@mlckFREEPXD = common dso_local global i8* null, align 8
@COMMIT_WMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jfs_free_zero_link(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.maplock, align 4
  %7 = alloca %struct.pxd_lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.maplock, align 4
  %11 = alloca %struct.pxd_lock*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call i32 @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.inode* %12)
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @S_IFMT, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  switch i32 %19, label %29 [
    i32 128, label %20
    i32 129, label %21
  ]

20:                                               ; preds = %1
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IDATASIZE, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %123

28:                                               ; preds = %21
  br label %30

29:                                               ; preds = %1
  br label %123

30:                                               ; preds = %28, %20
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DXD_EXTENT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %30
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = call i32 @addressDXD(%struct.TYPE_5__* %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = call i32 @lengthDXD(%struct.TYPE_5__* %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = load %struct.inode*, %struct.inode** %2, align 8
  %50 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @invalidate_dxd_metapages(%struct.inode* %48, i32 %53)
  %55 = getelementptr inbounds %struct.maplock, %struct.maplock* %6, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = bitcast %struct.maplock* %6 to %struct.pxd_lock*
  store %struct.pxd_lock* %56, %struct.pxd_lock** %7, align 8
  %57 = load i8*, i8** @mlckFREEPXD, align 8
  %58 = load %struct.pxd_lock*, %struct.pxd_lock** %7, align 8
  %59 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.pxd_lock*, %struct.pxd_lock** %7, align 8
  %61 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %60, i32 0, i32 0
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @PXDaddress(i32* %61, i32 %62)
  %64 = load %struct.pxd_lock*, %struct.pxd_lock** %7, align 8
  %65 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %64, i32 0, i32 0
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @PXDlength(i32* %65, i32 %66)
  %68 = load %struct.inode*, %struct.inode** %2, align 8
  %69 = load %struct.pxd_lock*, %struct.pxd_lock** %7, align 8
  %70 = load i32, i32* @COMMIT_WMAP, align 4
  %71 = call i32 @txFreeMap(%struct.inode* %68, %struct.pxd_lock* %69, i32* null, i32 %70)
  br label %72

72:                                               ; preds = %39, %30
  %73 = load %struct.inode*, %struct.inode** %2, align 8
  %74 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DXD_EXTENT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %72
  %82 = load %struct.inode*, %struct.inode** %2, align 8
  %83 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @addressDXD(%struct.TYPE_5__* %84)
  store i32 %85, i32* %8, align 4
  %86 = load %struct.inode*, %struct.inode** %2, align 8
  %87 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @lengthDXD(%struct.TYPE_5__* %88)
  store i32 %89, i32* %9, align 4
  %90 = load %struct.inode*, %struct.inode** %2, align 8
  %91 = load %struct.inode*, %struct.inode** %2, align 8
  %92 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @invalidate_dxd_metapages(%struct.inode* %90, i32 %95)
  %97 = getelementptr inbounds %struct.maplock, %struct.maplock* %10, i32 0, i32 0
  store i32 1, i32* %97, align 4
  %98 = bitcast %struct.maplock* %10 to %struct.pxd_lock*
  store %struct.pxd_lock* %98, %struct.pxd_lock** %11, align 8
  %99 = load i8*, i8** @mlckFREEPXD, align 8
  %100 = load %struct.pxd_lock*, %struct.pxd_lock** %11, align 8
  %101 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.pxd_lock*, %struct.pxd_lock** %11, align 8
  %103 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %102, i32 0, i32 0
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @PXDaddress(i32* %103, i32 %104)
  %106 = load %struct.pxd_lock*, %struct.pxd_lock** %11, align 8
  %107 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %106, i32 0, i32 0
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @PXDlength(i32* %107, i32 %108)
  %110 = load %struct.inode*, %struct.inode** %2, align 8
  %111 = load %struct.pxd_lock*, %struct.pxd_lock** %11, align 8
  %112 = load i32, i32* @COMMIT_WMAP, align 4
  %113 = call i32 @txFreeMap(%struct.inode* %110, %struct.pxd_lock* %111, i32* null, i32 %112)
  br label %114

114:                                              ; preds = %81, %72
  %115 = load %struct.inode*, %struct.inode** %2, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.inode*, %struct.inode** %2, align 8
  %121 = load i32, i32* @COMMIT_WMAP, align 4
  %122 = call i32 @xtTruncate(i32 0, %struct.inode* %120, i32 0, i32 %121)
  br label %123

123:                                              ; preds = %27, %29, %119, %114
  ret void
}

declare dso_local i32 @jfs_info(i8*, %struct.inode*) #1

declare dso_local %struct.TYPE_6__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @addressDXD(%struct.TYPE_5__*) #1

declare dso_local i32 @lengthDXD(%struct.TYPE_5__*) #1

declare dso_local i32 @invalidate_dxd_metapages(%struct.inode*, i32) #1

declare dso_local i32 @PXDaddress(i32*, i32) #1

declare dso_local i32 @PXDlength(i32*, i32) #1

declare dso_local i32 @txFreeMap(%struct.inode*, %struct.pxd_lock*, i32*, i32) #1

declare dso_local i32 @xtTruncate(i32, %struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
