; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_write_namespace_deps_files.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_write_namespace_deps_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i8*, %struct.namespace_list*, i64, %struct.module* }
%struct.namespace_list = type { i32, %struct.namespace_list* }
%struct.buffer = type { i64 }

@modules = common dso_local global %struct.module* null, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s.ns_deps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_namespace_deps_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_namespace_deps_files() #0 {
  %1 = alloca %struct.module*, align 8
  %2 = alloca %struct.namespace_list*, align 8
  %3 = alloca %struct.buffer, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.buffer* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.module*, %struct.module** @modules, align 8
  store %struct.module* %8, %struct.module** %1, align 8
  br label %9

9:                                                ; preds = %54, %0
  %10 = load %struct.module*, %struct.module** %1, align 8
  %11 = icmp ne %struct.module* %10, null
  br i1 %11, label %12, label %58

12:                                               ; preds = %9
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load %struct.module*, %struct.module** %1, align 8
  %18 = getelementptr inbounds %struct.module, %struct.module* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 4, i32* %6, align 4
  br label %50

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.module*, %struct.module** %1, align 8
  %25 = getelementptr inbounds %struct.module, %struct.module* %24, i32 0, i32 1
  %26 = load %struct.namespace_list*, %struct.namespace_list** %25, align 8
  store %struct.namespace_list* %26, %struct.namespace_list** %2, align 8
  br label %27

27:                                               ; preds = %35, %22
  %28 = load %struct.namespace_list*, %struct.namespace_list** %2, align 8
  %29 = icmp ne %struct.namespace_list* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.namespace_list*, %struct.namespace_list** %2, align 8
  %32 = getelementptr inbounds %struct.namespace_list, %struct.namespace_list* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @buf_printf(%struct.buffer* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30
  %36 = load %struct.namespace_list*, %struct.namespace_list** %2, align 8
  %37 = getelementptr inbounds %struct.namespace_list, %struct.namespace_list* %36, i32 0, i32 1
  %38 = load %struct.namespace_list*, %struct.namespace_list** %37, align 8
  store %struct.namespace_list* %38, %struct.namespace_list** %2, align 8
  br label %27

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 4, i32* %6, align 4
  br label %50

44:                                               ; preds = %39
  %45 = load %struct.module*, %struct.module** %1, align 8
  %46 = getelementptr inbounds %struct.module, %struct.module* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = call i32 @write_if_changed(%struct.buffer* %3, i8* %16)
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %44, %43, %21
  %51 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %6, align 4
  switch i32 %52, label %59 [
    i32 0, label %53
    i32 4, label %54
  ]

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %50
  %55 = load %struct.module*, %struct.module** %1, align 8
  %56 = getelementptr inbounds %struct.module, %struct.module* %55, i32 0, i32 3
  %57 = load %struct.module*, %struct.module** %56, align 8
  store %struct.module* %57, %struct.module** %1, align 8
  br label %9

58:                                               ; preds = %9
  ret void

59:                                               ; preds = %50
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i32) #3

declare dso_local i32 @sprintf(i8*, i8*, i8*) #3

declare dso_local i32 @write_if_changed(%struct.buffer*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
