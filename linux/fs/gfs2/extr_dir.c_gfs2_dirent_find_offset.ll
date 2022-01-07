; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dirent_find_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dirent_find_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_dirent = type { i32, i32 }
%struct.qstr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_dirent*, %struct.qstr*, i8*)* @gfs2_dirent_find_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_dirent_find_offset(%struct.gfs2_dirent* %0, %struct.qstr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_dirent*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gfs2_dirent* %0, %struct.gfs2_dirent** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.qstr*, %struct.qstr** %6, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @GFS2_DIRENT_SIZE(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be16_to_cpu(i32 %17)
  %19 = call i32 @GFS2_DIRENT_SIZE(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %21 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be16_to_cpu(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %26 = bitcast %struct.gfs2_dirent* %25 to i8*
  %27 = icmp ult i8* %24, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %31 = bitcast %struct.gfs2_dirent* %30 to i8*
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr i8, i8* %31, i64 %33
  %35 = icmp uge i8* %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %3
  store i32 0, i32* %4, align 4
  br label %64

37:                                               ; preds = %28
  %38 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %39 = call i64 @gfs2_dirent_sentinel(%struct.gfs2_dirent* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %45 = bitcast %struct.gfs2_dirent* %44 to i8*
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr i8, i8* %45, i64 %47
  %49 = icmp ult i8* %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %64

51:                                               ; preds = %42
  %52 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %53 = bitcast %struct.gfs2_dirent* %52 to i8*
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr i8, i8* %53, i64 %55
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr i8, i8* %57, i64 %59
  %61 = icmp uge i8* %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %64

63:                                               ; preds = %51
  store i32 -1, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %62, %50, %36
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @GFS2_DIRENT_SIZE(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @gfs2_dirent_sentinel(%struct.gfs2_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
