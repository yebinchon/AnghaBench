; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_compare_dents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_compare_dents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_dirent = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_dents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_dents(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gfs2_dirent*, align 8
  %6 = alloca %struct.gfs2_dirent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.gfs2_dirent**
  %14 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %13, align 8
  store %struct.gfs2_dirent* %14, %struct.gfs2_dirent** %5, align 8
  %15 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.gfs2_dirent**
  %20 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %19, align 8
  store %struct.gfs2_dirent* %20, %struct.gfs2_dirent** %6, align 8
  %21 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %22 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %61

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %9, align 4
  br label %60

33:                                               ; preds = %28
  %34 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %35 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @be16_to_cpu(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %39 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @be16_to_cpu(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  br label %59

46:                                               ; preds = %33
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %9, align 4
  br label %58

51:                                               ; preds = %46
  %52 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %53 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %52, i64 1
  %54 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %55 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %54, i64 1
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @memcmp(%struct.gfs2_dirent* %53, %struct.gfs2_dirent* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %51, %50
  br label %59

59:                                               ; preds = %58, %45
  br label %60

60:                                               ; preds = %59, %32
  br label %61

61:                                               ; preds = %60, %27
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcmp(%struct.gfs2_dirent*, %struct.gfs2_dirent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
