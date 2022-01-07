; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_set_i.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_set_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_ea_location = type { i32 }
%struct.gfs2_ea_request = type { i32, i8*, i64, i32, i8* }
%struct.ea_set = type { %struct.gfs2_ea_location*, %struct.gfs2_ea_request* }
%struct.TYPE_2__ = type { i64 }

@ea_set_simple = common dso_local global i32 0, align 4
@GFS2_DIF_EA_INDIRECT = common dso_local global i32 0, align 4
@ea_set_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32, i8*, i8*, i64, %struct.gfs2_ea_location*)* @ea_set_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_set_i(%struct.gfs2_inode* %0, i32 %1, i8* %2, i8* %3, i64 %4, %struct.gfs2_ea_location* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.gfs2_ea_location*, align 8
  %14 = alloca %struct.gfs2_ea_request, align 8
  %15 = alloca %struct.ea_set, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.gfs2_ea_location* %5, %struct.gfs2_ea_location** %13, align 8
  store i32 2, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %14, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %14, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %14, i32 0, i32 4
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %14, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %14, i32 0, i32 2
  store i64 %27, i64* %28, align 8
  %29 = call i32 @memset(%struct.ea_set* %15, i32 0, i32 16)
  %30 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %15, i32 0, i32 1
  store %struct.gfs2_ea_request* %14, %struct.gfs2_ea_request** %30, align 8
  %31 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %13, align 8
  %32 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %15, i32 0, i32 0
  store %struct.gfs2_ea_location* %31, %struct.gfs2_ea_location** %32, align 8
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %34 = load i32, i32* @ea_set_simple, align 4
  %35 = call i32 @ea_foreach(%struct.gfs2_inode* %33, i32 %34, %struct.ea_set* %15)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %81

39:                                               ; preds = %6
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %7, align 4
  br label %81

44:                                               ; preds = %39
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %46 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GFS2_DIF_EA_INDIRECT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %16, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = call i64 @GFS2_EAREQ_SIZE_STUFFED(%struct.gfs2_ea_request* %14)
  %56 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %57 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %56, i32 0, i32 1
  %58 = call %struct.TYPE_2__* @GFS2_SB(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %55, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %14, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %66 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %65, i32 0, i32 1
  %67 = call %struct.TYPE_2__* @GFS2_SB(i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @DIV_ROUND_UP(i64 %64, i64 %69)
  %71 = load i32, i32* %16, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %62, %54
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @ea_set_block, align 4
  %79 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %13, align 8
  %80 = call i32 @ea_alloc_skeleton(%struct.gfs2_inode* %76, %struct.gfs2_ea_request* %14, i32 %77, i32 %78, %struct.gfs2_ea_location* %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %75, %42, %38
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.ea_set*, i32, i32) #1

declare dso_local i32 @ea_foreach(%struct.gfs2_inode*, i32, %struct.ea_set*) #1

declare dso_local i64 @GFS2_EAREQ_SIZE_STUFFED(%struct.gfs2_ea_request*) #1

declare dso_local %struct.TYPE_2__* @GFS2_SB(i32*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @ea_alloc_skeleton(%struct.gfs2_inode*, %struct.gfs2_ea_request*, i32, i32, %struct.gfs2_ea_location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
