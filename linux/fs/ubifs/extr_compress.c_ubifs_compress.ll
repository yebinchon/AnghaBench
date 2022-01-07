; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_compress.c_ubifs_compress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_compress.c_ubifs_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_compressor = type { i32, i64, i32 }
%struct.ubifs_info = type { i32 }

@ubifs_compressors = common dso_local global %struct.ubifs_compressor** null, align 8
@UBIFS_COMPR_NONE = common dso_local global i32 0, align 4
@UBIFS_MIN_COMPR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"cannot compress %d bytes, compressor %s, error %d, leave data uncompressed\00", align 1
@UBIFS_MIN_COMPRESS_DIFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_compress(%struct.ubifs_info* %0, i8* %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_compressor*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load %struct.ubifs_compressor**, %struct.ubifs_compressor*** @ubifs_compressors, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ubifs_compressor*, %struct.ubifs_compressor** %15, i64 %18
  %20 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %19, align 8
  store %struct.ubifs_compressor* %20, %struct.ubifs_compressor** %14, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UBIFS_COMPR_NONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %80

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @UBIFS_MIN_COMPR_LEN, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %80

31:                                               ; preds = %26
  %32 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %14, align 8
  %33 = getelementptr inbounds %struct.ubifs_compressor, %struct.ubifs_compressor* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %14, align 8
  %38 = getelementptr inbounds %struct.ubifs_compressor, %struct.ubifs_compressor* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @mutex_lock(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %14, align 8
  %43 = getelementptr inbounds %struct.ubifs_compressor, %struct.ubifs_compressor* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @crypto_comp_compress(i32 %44, i8* %45, i32 %46, i8* %47, i32* %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %14, align 8
  %51 = getelementptr inbounds %struct.ubifs_compressor, %struct.ubifs_compressor* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %14, align 8
  %56 = getelementptr inbounds %struct.ubifs_compressor, %struct.ubifs_compressor* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @mutex_unlock(i64 %57)
  br label %59

59:                                               ; preds = %54, %41
  %60 = load i32, i32* %13, align 4
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %14, align 8
  %67 = getelementptr inbounds %struct.ubifs_compressor, %struct.ubifs_compressor* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @ubifs_warn(%struct.ubifs_info* %64, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68, i32 %69)
  br label %80

71:                                               ; preds = %59
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %72, %74
  %76 = load i32, i32* @UBIFS_MIN_COMPRESS_DIFF, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %80

79:                                               ; preds = %71
  br label %89

80:                                               ; preds = %78, %63, %30, %25
  %81 = load i8*, i8** %10, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @memcpy(i8* %81, i8* %82, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32*, i32** %11, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @UBIFS_COMPR_NONE, align 4
  %88 = load i32*, i32** %12, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %79
  ret void
}

declare dso_local i32 @mutex_lock(i64) #1

declare dso_local i32 @crypto_comp_compress(i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @mutex_unlock(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ubifs_warn(%struct.ubifs_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
