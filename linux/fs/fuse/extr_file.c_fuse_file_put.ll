; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.fuse_args }
%struct.fuse_args = type { i32 (%struct.TYPE_6__*, %struct.fuse_args*, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_file*, i32, i32)* @fuse_file_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_file_put(%struct.fuse_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fuse_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_args*, align 8
  store %struct.fuse_file* %0, %struct.fuse_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %9 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %8, i32 0, i32 2
  %10 = call i64 @refcount_dec_and_test(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %78

12:                                               ; preds = %3
  %13 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %14 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.fuse_args* %16, %struct.fuse_args** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %21 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %39

26:                                               ; preds = %12
  %27 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %28 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26, %19
  %34 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %35 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %38 = call i32 @fuse_release_end(%struct.TYPE_6__* %36, %struct.fuse_args* %37, i32 0)
  br label %75

39:                                               ; preds = %26, %19
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %44 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %47 = call i32 @fuse_simple_request(%struct.TYPE_6__* %45, %struct.fuse_args* %46)
  %48 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %49 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %52 = call i32 @fuse_release_end(%struct.TYPE_6__* %50, %struct.fuse_args* %51, i32 0)
  br label %74

53:                                               ; preds = %39
  %54 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %55 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %54, i32 0, i32 0
  store i32 (%struct.TYPE_6__*, %struct.fuse_args*, i32)* @fuse_release_end, i32 (%struct.TYPE_6__*, %struct.fuse_args*, i32)** %55, align 8
  %56 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %57 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = load i32, i32* @__GFP_NOFAIL, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @fuse_simple_background(%struct.TYPE_6__* %58, %struct.fuse_args* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %53
  %66 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %67 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %70 = load i32, i32* @ENOTCONN, align 4
  %71 = sub nsw i32 0, %70
  %72 = call i32 @fuse_release_end(%struct.TYPE_6__* %68, %struct.fuse_args* %69, i32 %71)
  br label %73

73:                                               ; preds = %65, %53
  br label %74

74:                                               ; preds = %73, %42
  br label %75

75:                                               ; preds = %74, %33
  %76 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %77 = call i32 @kfree(%struct.fuse_file* %76)
  br label %78

78:                                               ; preds = %75, %3
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @fuse_release_end(%struct.TYPE_6__*, %struct.fuse_args*, i32) #1

declare dso_local i32 @fuse_simple_request(%struct.TYPE_6__*, %struct.fuse_args*) #1

declare dso_local i64 @fuse_simple_background(%struct.TYPE_6__*, %struct.fuse_args*, i32) #1

declare dso_local i32 @kfree(%struct.fuse_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
