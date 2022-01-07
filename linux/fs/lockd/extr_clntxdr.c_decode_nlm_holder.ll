; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntxdr.c_decode_nlm_holder.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntxdr.c_decode_nlm_holder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nlm_res = type { %struct.nlm_lock }
%struct.nlm_lock = type { i32, i8*, %struct.file_lock }
%struct.file_lock = type { i8*, i8*, i32, i32, i64 }

@FL_POSIX = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nlm_res*)* @decode_nlm_holder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_nlm_holder(%struct.xdr_stream* %0, %struct.nlm_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nlm_res*, align 8
  %6 = alloca %struct.nlm_lock*, align 8
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nlm_res* %1, %struct.nlm_res** %5, align 8
  %14 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %15 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %14, i32 0, i32 0
  store %struct.nlm_lock* %15, %struct.nlm_lock** %6, align 8
  %16 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %17 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %16, i32 0, i32 2
  store %struct.file_lock* %17, %struct.file_lock** %7, align 8
  %18 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %19 = call i32 @memset(%struct.nlm_lock* %18, i32 0, i32 48)
  %20 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %21 = call i32 @locks_init_lock(%struct.file_lock* %20)
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %23 = call i32* @xdr_inline_decode(%struct.xdr_stream* %22, i32 8)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %108

30:                                               ; preds = %2
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %12, align 8
  %33 = call i8* @be32_to_cpup(i32* %31)
  %34 = ptrtoint i8* %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i8* @be32_to_cpup(i32* %35)
  %37 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %38 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %40 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %44 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %46 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %47 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %46, i32 0, i32 0
  %48 = call i32 @decode_netobj(%struct.xdr_stream* %45, i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %30
  br label %106

53:                                               ; preds = %30
  %54 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %55 = call i32* @xdr_inline_decode(%struct.xdr_stream* %54, i32 8)
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = icmp eq i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %108

62:                                               ; preds = %53
  %63 = load i32, i32* @FL_POSIX, align 4
  %64 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %65 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @F_WRLCK, align 4
  br label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @F_RDLCK, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %75 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %12, align 8
  %78 = call i8* @be32_to_cpup(i32* %76)
  %79 = ptrtoint i8* %78 to i64
  store i64 %79, i64* %9, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i8* @be32_to_cpup(i32* %80)
  %82 = ptrtoint i8* %81 to i64
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %83, %84
  %86 = sub nsw i64 %85, 1
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %9, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %90 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %72
  %94 = load i64, i64* %13, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93, %72
  %97 = load i8*, i8** @OFFSET_MAX, align 8
  %98 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %99 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %105

100:                                              ; preds = %93
  %101 = load i64, i64* %13, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %104 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %100, %96
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %105, %52
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %3, align 4
  br label %111

108:                                              ; preds = %61, %29
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %108, %106
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @memset(%struct.nlm_lock*, i32, i32) #1

declare dso_local i32 @locks_init_lock(%struct.file_lock*) #1

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @be32_to_cpup(i32*) #1

declare dso_local i32 @decode_netobj(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
