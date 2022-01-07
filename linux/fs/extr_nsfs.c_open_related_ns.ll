; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_nsfs.c_open_related_ns.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_nsfs.c_open_related_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns_common = type opaque
%struct.path = type { i32 }
%struct.file = type opaque

@O_CLOEXEC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_related_ns(%struct.ns_common* %0, %struct.ns_common* (%struct.ns_common*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ns_common*, align 8
  %5 = alloca %struct.ns_common* (%struct.ns_common*)*, align 8
  %6 = alloca %struct.path, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ns_common*, align 8
  store %struct.ns_common* %0, %struct.ns_common** %4, align 8
  store %struct.ns_common* (%struct.ns_common*)* %1, %struct.ns_common* (%struct.ns_common*)** %5, align 8
  %11 = bitcast %struct.path* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load i32, i32* @O_CLOEXEC, align 4
  %13 = call i32 @get_unused_fd_flags(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %75

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %37, %18
  %20 = load %struct.ns_common* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)** %5, align 8
  %21 = load %struct.ns_common*, %struct.ns_common** %4, align 8
  %22 = call %struct.ns_common* %20(%struct.ns_common* %21)
  store %struct.ns_common* %22, %struct.ns_common** %10, align 8
  %23 = load %struct.ns_common*, %struct.ns_common** %10, align 8
  %24 = bitcast %struct.ns_common* %23 to i8*
  %25 = call i64 @IS_ERR(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @put_unused_fd(i32 %28)
  %30 = load %struct.ns_common*, %struct.ns_common** %10, align 8
  %31 = bitcast %struct.ns_common* %30 to i8*
  %32 = call i32 @PTR_ERR(i8* %31)
  store i32 %32, i32* %3, align 4
  br label %75

33:                                               ; preds = %19
  %34 = load %struct.ns_common*, %struct.ns_common** %10, align 8
  %35 = bitcast %struct.ns_common* %34 to i8*
  %36 = call i8* @__ns_get_path(%struct.path* %6, i8* %35)
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i8* @ERR_PTR(i32 %40)
  %42 = icmp eq i8* %38, %41
  br i1 %42, label %19, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @put_unused_fd(i32 %48)
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %3, align 4
  br label %75

52:                                               ; preds = %43
  %53 = load i32, i32* @O_RDONLY, align 4
  %54 = call i32 (...) @current_cred()
  %55 = call i8* @dentry_open(%struct.path* %6, i32 %53, i32 %54)
  %56 = bitcast i8* %55 to %struct.file*
  store %struct.file* %56, %struct.file** %7, align 8
  %57 = call i32 @path_put(%struct.path* %6)
  %58 = load %struct.file*, %struct.file** %7, align 8
  %59 = bitcast %struct.file* %58 to i8*
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @put_unused_fd(i32 %63)
  %65 = load %struct.file*, %struct.file** %7, align 8
  %66 = bitcast %struct.file* %65 to i8*
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %9, align 4
  br label %73

68:                                               ; preds = %52
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.file*, %struct.file** %7, align 8
  %71 = bitcast %struct.file* %70 to i8*
  %72 = call i32 @fd_install(i32 %69, i8* %71)
  br label %73

73:                                               ; preds = %68, %62
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %47, %27, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_unused_fd_flags(i32) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @put_unused_fd(i32) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i8* @__ns_get_path(%struct.path*, i8*) #2

declare dso_local i8* @ERR_PTR(i32) #2

declare dso_local i8* @dentry_open(%struct.path*, i32, i32) #2

declare dso_local i32 @current_cred(...) #2

declare dso_local i32 @path_put(%struct.path*) #2

declare dso_local i32 @fd_install(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
