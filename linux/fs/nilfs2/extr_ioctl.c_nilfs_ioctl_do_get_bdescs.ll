; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_ioctl.c_nilfs_ioctl_do_get_bdescs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_ioctl.c_nilfs_ioctl_do_get_bdescs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32 }
%struct.nilfs_bmap = type { i32 }
%struct.nilfs_bdesc = type { i64, i64, i32 }
%struct.TYPE_2__ = type { %struct.nilfs_bmap* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, i32*, i32, i8*, i64, i64)* @nilfs_ioctl_do_get_bdescs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_ioctl_do_get_bdescs(%struct.the_nilfs* %0, i32* %1, i32 %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.the_nilfs*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nilfs_bmap*, align 8
  %15 = alloca %struct.nilfs_bdesc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_2__* @NILFS_I(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %22, align 8
  store %struct.nilfs_bmap* %23, %struct.nilfs_bmap** %14, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = bitcast i8* %24 to %struct.nilfs_bdesc*
  store %struct.nilfs_bdesc* %25, %struct.nilfs_bdesc** %15, align 8
  %26 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %27 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %26, i32 0, i32 0
  %28 = call i32 @down_read(i32* %27)
  store i32 0, i32* %17, align 4
  br label %29

29:                                               ; preds = %74, %6
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %13, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %29
  %35 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %14, align 8
  %36 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %15, align 8
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %36, i64 %38
  %40 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %15, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %42, i64 %44
  %46 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %15, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %49, i64 %51
  %53 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %52, i32 0, i32 0
  %54 = call i32 @nilfs_bmap_lookup_at_level(%struct.nilfs_bmap* %35, i32 %41, i64 %48, i64* %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %34
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %64 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %63, i32 0, i32 0
  %65 = call i32 @up_read(i32* %64)
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %7, align 4
  br label %83

67:                                               ; preds = %57
  %68 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %15, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %68, i64 %70
  %72 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %34
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %17, align 4
  br label %29

77:                                               ; preds = %29
  %78 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %79 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %78, i32 0, i32 0
  %80 = call i32 @up_read(i32* %79)
  %81 = load i64, i64* %13, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %77, %62
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_2__* @NILFS_I(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @nilfs_bmap_lookup_at_level(%struct.nilfs_bmap*, i32, i64, i64*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
