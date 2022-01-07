; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/drivers/dma-buf/extr_udmabuf.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/drivers/dma-buf/extr_udmabuf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udmabuf_create = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"/dev/udmabuf\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: [skip,no-udmabuf]\0A\00", align 1
@TEST_PREFIX = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"udmabuf-test\00", align 1
@MFD_ALLOW_SEALING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: [skip,no-memfd]\0A\00", align 1
@F_ADD_SEALS = common dso_local global i32 0, align 4
@F_SEAL_SHRINK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: [skip,fcntl-add-seals]\0A\00", align 1
@NUM_PAGES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: [FAIL,memfd-truncate]\0A\00", align 1
@UDMABUF_CREATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"%s: [FAIL,test-1]\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"%s: [FAIL,test-2]\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s: [FAIL,test-3]\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"%s: [FAIL,test-4]\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"%s: ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.udmabuf_create, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** @TEST_PREFIX, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = call i32 @exit(i32 77) #3
  unreachable

21:                                               ; preds = %2
  %22 = load i32, i32* @MFD_ALLOW_SEALING, align 4
  %23 = call i32 @memfd_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i8*, i8** @TEST_PREFIX, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  %29 = call i32 @exit(i32 77) #3
  unreachable

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @F_ADD_SEALS, align 4
  %33 = load i32, i32* @F_SEAL_SHRINK, align 4
  %34 = call i32 @fcntl(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i8*, i8** @TEST_PREFIX, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  %40 = call i32 @exit(i32 77) #3
  unreachable

41:                                               ; preds = %30
  %42 = call i32 (...) @getpagesize()
  %43 = load i32, i32* @NUM_PAGES, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %11, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @ftruncate(i32 %47, i8* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i8*, i8** @TEST_PREFIX, align 8
  %54 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  %55 = call i32 @exit(i32 1) #3
  unreachable

56:                                               ; preds = %41
  %57 = call i32 @memset(%struct.udmabuf_create* %6, i32 0, i32 12)
  %58 = load i32, i32* %8, align 4
  %59 = getelementptr inbounds %struct.udmabuf_create, %struct.udmabuf_create* %6, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = call i32 (...) @getpagesize()
  %61 = sdiv i32 %60, 2
  %62 = getelementptr inbounds %struct.udmabuf_create, %struct.udmabuf_create* %6, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = call i32 (...) @getpagesize()
  %64 = getelementptr inbounds %struct.udmabuf_create, %struct.udmabuf_create* %6, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @UDMABUF_CREATE, align 4
  %67 = call i32 @ioctl(i32 %65, i32 %66, %struct.udmabuf_create* %6)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load i8*, i8** @TEST_PREFIX, align 8
  %72 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %71)
  %73 = call i32 @exit(i32 1) #3
  unreachable

74:                                               ; preds = %56
  %75 = load i32, i32* %8, align 4
  %76 = getelementptr inbounds %struct.udmabuf_create, %struct.udmabuf_create* %6, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.udmabuf_create, %struct.udmabuf_create* %6, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = call i32 (...) @getpagesize()
  %79 = sdiv i32 %78, 2
  %80 = getelementptr inbounds %struct.udmabuf_create, %struct.udmabuf_create* %6, i32 0, i32 2
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @UDMABUF_CREATE, align 4
  %83 = call i32 @ioctl(i32 %81, i32 %82, %struct.udmabuf_create* %6)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load i8*, i8** @TEST_PREFIX, align 8
  %88 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %87)
  %89 = call i32 @exit(i32 1) #3
  unreachable

90:                                               ; preds = %74
  %91 = getelementptr inbounds %struct.udmabuf_create, %struct.udmabuf_create* %6, i32 0, i32 0
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds %struct.udmabuf_create, %struct.udmabuf_create* %6, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load i8*, i8** %11, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = getelementptr inbounds %struct.udmabuf_create, %struct.udmabuf_create* %6, i32 0, i32 2
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @UDMABUF_CREATE, align 4
  %98 = call i32 @ioctl(i32 %96, i32 %97, %struct.udmabuf_create* %6)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load i8*, i8** @TEST_PREFIX, align 8
  %103 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %102)
  %104 = call i32 @exit(i32 1) #3
  unreachable

105:                                              ; preds = %90
  %106 = load i32, i32* %8, align 4
  %107 = getelementptr inbounds %struct.udmabuf_create, %struct.udmabuf_create* %6, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = getelementptr inbounds %struct.udmabuf_create, %struct.udmabuf_create* %6, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = getelementptr inbounds %struct.udmabuf_create, %struct.udmabuf_create* %6, i32 0, i32 2
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @UDMABUF_CREATE, align 4
  %114 = call i32 @ioctl(i32 %112, i32 %113, %struct.udmabuf_create* %6)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %105
  %118 = load i8*, i8** @TEST_PREFIX, align 8
  %119 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %118)
  %120 = call i32 @exit(i32 1) #3
  unreachable

121:                                              ; preds = %105
  %122 = load i32, i32* @stderr, align 4
  %123 = load i8*, i8** @TEST_PREFIX, align 8
  %124 = call i32 @fprintf(i32 %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %123)
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @close(i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @close(i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @close(i32 %129)
  ret i32 0
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memfd_create(i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @ftruncate(i32, i8*) #1

declare dso_local i32 @memset(%struct.udmabuf_create*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.udmabuf_create*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
