; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_util.h_gfs2_metatype_check_i.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_util.h_gfs2_metatype_check_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_meta_header = type { i32, i32 }

@GFS2_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"magic number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.buffer_head*, i64, i8*, i8*, i32)* @gfs2_metatype_check_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_metatype_check_i(%struct.gfs2_sbd* %0, %struct.buffer_head* %1, i64 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gfs2_meta_header*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %8, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.gfs2_meta_header*
  store %struct.gfs2_meta_header* %20, %struct.gfs2_meta_header** %14, align 8
  %21 = load %struct.gfs2_meta_header*, %struct.gfs2_meta_header** %14, align 8
  %22 = getelementptr inbounds %struct.gfs2_meta_header, %struct.gfs2_meta_header* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @be32_to_cpu(i32 %23)
  store i64 %24, i64* %15, align 8
  %25 = load %struct.gfs2_meta_header*, %struct.gfs2_meta_header** %14, align 8
  %26 = getelementptr inbounds %struct.gfs2_meta_header, %struct.gfs2_meta_header* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @be32_to_cpu(i32 %27)
  store i64 %28, i64* %16, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* @GFS2_MAGIC, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %6
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @gfs2_meta_check_ii(%struct.gfs2_sbd* %36, %struct.buffer_head* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %59

42:                                               ; preds = %6
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @gfs2_metatype_check_ii(%struct.gfs2_sbd* %50, %struct.buffer_head* %51, i64 %52, i64 %53, i8* %54, i8* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %59

58:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %49, %35
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfs2_meta_check_ii(%struct.gfs2_sbd*, %struct.buffer_head*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @gfs2_metatype_check_ii(%struct.gfs2_sbd*, %struct.buffer_head*, i64, i64, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
