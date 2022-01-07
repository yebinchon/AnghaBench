; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_zlib.c_gzip_is_compressed.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_zlib.c_gzip_is_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@__const.gzip_is_compressed.magic = private unnamed_addr constant [2 x i32] [i32 31, i32 139], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzip_is_compressed(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([2 x i32]* @__const.gzip_is_compressed.magic to i8*), i64 8, i1 false)
  %12 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 2, i1 false)
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %19 = call i32 @read(i32 %17, i8* %18, i32 2)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @close(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, 2
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %28 = call i64 @memcmp(i8* %26, i32* %27, i32 2)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  br label %32

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i32 [ %30, %25 ], [ 0, %31 ]
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @open(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @memcmp(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
