; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_copy_args_from_argbuf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_copy_args_from_argbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_args = type { i32, i32, i32, i32, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fuse_req = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fuse_arg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_args*, %struct.fuse_req*)* @copy_args_from_argbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_args_from_argbuf(%struct.fuse_args* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_args*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fuse_args* %0, %struct.fuse_args** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %11 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %12 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %20 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %23 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %27 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %30 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sub i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %35 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.fuse_arg*
  %38 = call i32 @fuse_len_args(i32 %33, %struct.fuse_arg* %37)
  store i32 %38, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %100, %2
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %103

43:                                               ; preds = %39
  %44 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %45 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %44, i32 0, i32 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %53 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %43
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %59 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %67, %63, %56, %43
  %70 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %71 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %70, i32 0, i32 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %79 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @memcpy(i32 %77, i32* %83, i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %91 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = icmp ne i32 %89, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %69
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sub i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %69
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %9, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %39

103:                                              ; preds = %39
  %104 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %105 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %103
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %111 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %110, i32 0, i32 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load %struct.fuse_args*, %struct.fuse_args** %3, align 8
  %114 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 %109, i32* %119, align 4
  br label %120

120:                                              ; preds = %108, %103
  %121 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %122 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @kfree(i32* %123)
  %125 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %126 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %125, i32 0, i32 0
  store i32* null, i32** %126, align 8
  ret void
}

declare dso_local i32 @fuse_len_args(i32, %struct.fuse_arg*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
