; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_zlib.c_jffs2_zlib_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_zlib.c_jffs2_zlib_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i8*, i32, i64, i64 }

@MAX_WBITS = common dso_local global i32 0, align 4
@inflate_mutex = common dso_local global i32 0, align 4
@inf_strm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PRESET_DICT = common dso_local global i8 0, align 1
@Z_DEFLATED = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [26 x i8] c"inflate skipping adler32\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"inflate not skipping adler32\0A\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"inflateInit failed\0A\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"inflate returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @jffs2_zlib_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_zlib_decompress(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @MAX_WBITS, align 4
  store i32 %12, i32* %11, align 4
  %13 = call i32 @mutex_lock(i32* @inflate_mutex)
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inf_strm, i32 0, i32 0), align 8
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inf_strm, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inf_strm, i32 0, i32 5), align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inf_strm, i32 0, i32 2), align 8
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inf_strm, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inf_strm, i32 0, i32 4), align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %64

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @PRESET_DICT, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %20
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 15
  %35 = load i8, i8* @Z_DEFLATED, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %29
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 8
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %43, %47
  %49 = srem i32 %48, 31
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %38
  %52 = call i32 @jffs2_dbg(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = ashr i32 %56, 4
  %58 = add nsw i32 %57, 8
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inf_strm, i32 0, i32 0), align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inf_strm, i32 0, i32 0), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inf_strm, i32 0, i32 1), align 8
  %63 = sub nsw i32 %62, 2
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inf_strm, i32 0, i32 1), align 8
  br label %66

64:                                               ; preds = %38, %29, %20, %4
  %65 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %51
  %67 = load i32, i32* @Z_OK, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @zlib_inflateInit2(%struct.TYPE_5__* @inf_strm, i32 %68)
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = call i32 @pr_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i32 @mutex_unlock(i32* @inflate_mutex)
  store i32 1, i32* %5, align 4
  br label %91

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %80, %74
  %76 = load i32, i32* @Z_FINISH, align 4
  %77 = call i32 @zlib_inflate(%struct.TYPE_5__* @inf_strm, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* @Z_OK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %75

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @Z_STREAM_END, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %81
  %89 = call i32 @zlib_inflateEnd(%struct.TYPE_5__* @inf_strm)
  %90 = call i32 @mutex_unlock(i32* @inflate_mutex)
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %71
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @jffs2_dbg(i32, i8*) #1

declare dso_local i32 @zlib_inflateInit2(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @zlib_inflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @zlib_inflateEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
