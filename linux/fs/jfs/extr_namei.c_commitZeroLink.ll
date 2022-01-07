; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_commitZeroLink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_commitZeroLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.tblock = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"commitZeroLink: tid = %d, ip = 0x%p\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@IDATASIZE = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@COMMIT_Freewmap = common dso_local global i32 0, align 4
@COMMIT_PMAP = common dso_local global i32 0, align 4
@DXD_EXTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*)* @commitZeroLink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commitZeroLink(i32 %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tblock*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.inode* %1, %struct.inode** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call i32 @jfs_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %8, %struct.inode* %9)
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @S_IFMT, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %28 [
    i32 128, label %17
    i32 129, label %18
  ]

17:                                               ; preds = %2
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IDATASIZE, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  store i32 0, i32* %3, align 4
  br label %86

27:                                               ; preds = %18
  br label %34

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @S_IFDIR, align 4
  %31 = icmp ne i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  store i32 0, i32* %3, align 4
  br label %86

34:                                               ; preds = %27, %17
  %35 = load i32, i32* @COMMIT_Freewmap, align 4
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = call i32 @set_cflag(i32 %35, %struct.inode* %36)
  %38 = load i32, i32* %4, align 4
  %39 = call %struct.tblock* @tid_to_tblock(i32 %38)
  store %struct.tblock* %39, %struct.tblock** %7, align 8
  %40 = load i32, i32* @COMMIT_PMAP, align 4
  %41 = load %struct.tblock*, %struct.tblock** %7, align 8
  %42 = getelementptr inbounds %struct.tblock, %struct.tblock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DXD_EXTENT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %34
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = call i32 @txEA(i32 %54, %struct.inode* %55, %struct.TYPE_3__* %58, i32* null)
  br label %60

60:                                               ; preds = %53, %34
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DXD_EXTENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @txEA(i32 %70, %struct.inode* %71, %struct.TYPE_3__* %74, i32* null)
  br label %76

76:                                               ; preds = %69, %60
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.inode*, %struct.inode** %5, align 8
  %84 = call i32 @xtTruncate_pmap(i32 %82, %struct.inode* %83, i32 0)
  store i32 %84, i32* %3, align 4
  br label %86

85:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %81, %28, %24
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @jfs_info(i8*, i32, %struct.inode*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @set_cflag(i32, %struct.inode*) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local %struct.TYPE_4__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @txEA(i32, %struct.inode*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @xtTruncate_pmap(i32, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
