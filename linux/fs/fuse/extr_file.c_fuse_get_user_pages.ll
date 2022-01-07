; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_get_user_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_get_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_args_pages = type { i32, %struct.TYPE_7__, %struct.TYPE_8__*, i32* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.iov_iter = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_args_pages*, %struct.iov_iter*, i64*, i32, i32)* @fuse_get_user_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_get_user_pages(%struct.fuse_args_pages* %0, %struct.iov_iter* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_args_pages*, align 8
  %8 = alloca %struct.iov_iter*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.fuse_args_pages* %0, %struct.fuse_args_pages** %7, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %19 = call i64 @iov_iter_is_kvec(%struct.iov_iter* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %5
  %22 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %23 = call i64 @fuse_get_user_addr(%struct.iov_iter* %22)
  store i64 %23, i64* %14, align 8
  %24 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @fuse_get_frag_size(%struct.iov_iter* %24, i64 %26)
  store i64 %27, i64* %15, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load i64, i64* %14, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %34 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i8* %32, i8** %38, align 8
  br label %48

39:                                               ; preds = %21
  %40 = load i64, i64* %14, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %43 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i8* %41, i8** %47, align 8
  br label %48

48:                                               ; preds = %39, %30
  %49 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @iov_iter_advance(%struct.iov_iter* %49, i64 %50)
  %52 = load i64, i64* %15, align 8
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %6, align 4
  br label %172

54:                                               ; preds = %5
  br label %55

55:                                               ; preds = %91, %54
  %56 = load i64, i64* %12, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %62 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = icmp ult i32 %63, %64
  br label %66

66:                                               ; preds = %60, %55
  %67 = phi i1 [ false, %55 ], [ %65, %60 ]
  br i1 %67, label %68, label %150

68:                                               ; preds = %66
  %69 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %70 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %71 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %74 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i64*, i64** %9, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %12, align 8
  %81 = sub i64 %79, %80
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %84 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub i32 %82, %85
  %87 = call i64 @iov_iter_get_pages(%struct.iov_iter* %69, i32* %77, i64 %81, i32 %86, i64* %17)
  store i64 %87, i64* %13, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %68
  br label %150

91:                                               ; preds = %68
  %92 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @iov_iter_advance(%struct.iov_iter* %92, i64 %93)
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* @PAGE_SIZE, align 8
  %103 = add nsw i64 %101, %102
  %104 = sub nsw i64 %103, 1
  %105 = load i64, i64* @PAGE_SIZE, align 8
  %106 = sdiv i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %16, align 4
  %108 = load i64, i64* %17, align 8
  %109 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %110 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %113 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i64 %108, i64* %117, align 8
  %118 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %119 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %118, i32 0, i32 2
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %122 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = zext i32 %123 to i64
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @fuse_page_descs_length_init(%struct.TYPE_8__* %120, i64 %124, i32 %125)
  %127 = load i32, i32* %16, align 4
  %128 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %129 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load i64, i64* @PAGE_SIZE, align 8
  %133 = load i64, i64* %13, align 8
  %134 = sub nsw i64 %132, %133
  %135 = load i64, i64* @PAGE_SIZE, align 8
  %136 = sub nsw i64 %135, 1
  %137 = and i64 %134, %136
  %138 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %139 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %138, i32 0, i32 2
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %142 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub i32 %143, 1
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %148, %137
  store i64 %149, i64* %147, align 8
  br label %55

150:                                              ; preds = %90, %66
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %155 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  br label %161

157:                                              ; preds = %150
  %158 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %159 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %153
  %162 = load i64, i64* %12, align 8
  %163 = load i64*, i64** %9, align 8
  store i64 %162, i64* %163, align 8
  %164 = load i64, i64* %13, align 8
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i64, i64* %13, align 8
  br label %169

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168, %166
  %170 = phi i64 [ %167, %166 ], [ 0, %168 ]
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %169, %48
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i64 @iov_iter_is_kvec(%struct.iov_iter*) #1

declare dso_local i64 @fuse_get_user_addr(%struct.iov_iter*) #1

declare dso_local i64 @fuse_get_frag_size(%struct.iov_iter*, i64) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i64) #1

declare dso_local i64 @iov_iter_get_pages(%struct.iov_iter*, i32*, i64, i32, i64*) #1

declare dso_local i32 @fuse_page_descs_length_init(%struct.TYPE_8__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
