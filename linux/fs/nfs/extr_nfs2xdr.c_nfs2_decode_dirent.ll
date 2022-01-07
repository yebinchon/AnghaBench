; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_nfs2_decode_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_nfs2_decode_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_entry = type { i32, i32, i8*, i8*, i32, i32, i8* }

@EAGAIN = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i64 0, align 8
@EBADCOOKIE = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs2_decode_dirent(%struct.xdr_stream* %0, %struct.nfs_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.nfs_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.nfs_entry* %1, %struct.nfs_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %11 = call i32* @xdr_inline_decode(%struct.xdr_stream* %10, i32 4)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %108

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %8, align 8
  %24 = load i32, i32* %22, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @xdr_zero, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %21
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %30 = call i32* @xdr_inline_decode(%struct.xdr_stream* %29, i32 4)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %108

40:                                               ; preds = %28
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %8, align 8
  %43 = load i32, i32* %41, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @xdr_zero, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %108

50:                                               ; preds = %40
  %51 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %52 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @EBADCOOKIE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %108

55:                                               ; preds = %21
  %56 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %57 = call i32* @xdr_inline_decode(%struct.xdr_stream* %56, i32 4)
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = icmp ne i32* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %108

67:                                               ; preds = %55
  %68 = load i32*, i32** %8, align 8
  %69 = call i8* @be32_to_cpup(i32* %68)
  %70 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %71 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %73 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %74 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %73, i32 0, i32 5
  %75 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %76 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %75, i32 0, i32 4
  %77 = call i32 @decode_filename_inline(%struct.xdr_stream* %72, i32* %74, i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %108

83:                                               ; preds = %67
  %84 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %85 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %88 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %90 = call i32* @xdr_inline_decode(%struct.xdr_stream* %89, i32 4)
  store i32* %90, i32** %8, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = icmp ne i32* %91, null
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %83
  %98 = load i32, i32* @EAGAIN, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %108

100:                                              ; preds = %83
  %101 = load i32*, i32** %8, align 8
  %102 = call i8* @be32_to_cpup(i32* %101)
  %103 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %104 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @DT_UNKNOWN, align 4
  %106 = load %struct.nfs_entry*, %struct.nfs_entry** %6, align 8
  %107 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %100, %97, %81, %64, %50, %47, %37, %18
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @be32_to_cpup(i32*) #1

declare dso_local i32 @decode_filename_inline(%struct.xdr_stream*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
