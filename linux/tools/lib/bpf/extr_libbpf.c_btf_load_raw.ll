; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_btf_load_raw.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_btf_load_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.stat = type { i64 }

@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btf* (i8*)* @btf_load_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btf* @btf_load_raw(i8* %0) #0 {
  %2 = alloca %struct.btf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.btf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @stat(i8* %9, %struct.stat* %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @errno, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.btf* @ERR_PTR(i32 %14)
  store %struct.btf* %15, %struct.btf** %2, align 8
  br label %59

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i8* @malloc(i64 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.btf* @ERR_PTR(i32 %24)
  store %struct.btf* %25, %struct.btf** %2, align 8
  br label %59

26:                                               ; preds = %16
  %27 = load i8*, i8** %3, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @errno, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.btf* @ERR_PTR(i32 %33)
  store %struct.btf* %34, %struct.btf** %4, align 8
  br label %55

35:                                               ; preds = %26
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @fread(i8* %36, i32 1, i64 %38, i32* %39)
  store i64 %40, i64* %5, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @fclose(i32* %41)
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i32, i32* @EBADF, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.btf* @ERR_PTR(i32 %49)
  store %struct.btf* %50, %struct.btf** %4, align 8
  br label %55

51:                                               ; preds = %35
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call %struct.btf* @btf__new(i8* %52, i64 %53)
  store %struct.btf* %54, %struct.btf** %4, align 8
  br label %55

55:                                               ; preds = %51, %47, %31
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load %struct.btf*, %struct.btf** %4, align 8
  store %struct.btf* %58, %struct.btf** %2, align 8
  br label %59

59:                                               ; preds = %55, %22, %12
  %60 = load %struct.btf*, %struct.btf** %2, align 8
  ret %struct.btf* %60
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local %struct.btf* @ERR_PTR(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local %struct.btf* @btf__new(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
