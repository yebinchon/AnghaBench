; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_copy_args_to_argbuf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_virtio_fs.c_copy_args_to_argbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { i64, %struct.fuse_args* }
%struct.fuse_args = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.fuse_arg* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.fuse_arg = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_req*)* @copy_args_to_argbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_args_to_argbuf(%struct.fuse_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fuse_req*, align 8
  %4 = alloca %struct.fuse_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fuse_req* %0, %struct.fuse_req** %3, align 8
  %10 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %11 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %10, i32 0, i32 1
  %12 = load %struct.fuse_args*, %struct.fuse_args** %11, align 8
  store %struct.fuse_args* %12, %struct.fuse_args** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %14 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %17 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %21 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %24 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %29 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = bitcast %struct.TYPE_2__* %30 to %struct.fuse_arg*
  %32 = call i32 @fuse_len_args(i32 %27, %struct.fuse_arg* %31)
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %35 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %34, i32 0, i32 5
  %36 = load %struct.fuse_arg*, %struct.fuse_arg** %35, align 8
  %37 = call i32 @fuse_len_args(i32 %33, %struct.fuse_arg* %36)
  %38 = add i32 %32, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call i64 @kmalloc(i32 %39, i32 %40)
  %42 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %43 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %45 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %1
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %96

51:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %92, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %52
  %57 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %58 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %64 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %63, i32 0, i32 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %72 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @memcpy(i64 %62, i32 %70, i64 %78)
  %80 = load %struct.fuse_args*, %struct.fuse_args** %4, align 8
  %81 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %80, i32 0, i32 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %56
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %52

95:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %48
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @fuse_len_args(i32, %struct.fuse_arg*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
