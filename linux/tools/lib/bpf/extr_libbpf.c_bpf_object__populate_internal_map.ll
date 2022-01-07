; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__populate_internal_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__populate_internal_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.bpf_map = type { i64, i32, i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@LIBBPF_MAP_BSS = common dso_local global i64 0, align 8
@LIBBPF_MAP_DATA = common dso_local global i64 0, align 8
@LIBBPF_MAP_RODATA = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error freezing map(%s) as read-only: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, %struct.bpf_map*)* @bpf_object__populate_internal_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__populate_internal_map(%struct.bpf_object* %0, %struct.bpf_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %4, align 8
  store %struct.bpf_map* %1, %struct.bpf_map** %5, align 8
  %13 = load i32, i32* @STRERR_BUFSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %18 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LIBBPF_MAP_BSS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %73

23:                                               ; preds = %2
  %24 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %25 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LIBBPF_MAP_DATA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %31 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  br label %39

34:                                               ; preds = %23
  %35 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %36 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i32* [ %33, %29 ], [ %38, %34 ]
  store i32* %40, i32** %11, align 8
  %41 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %42 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @bpf_map_update_elem(i32 %43, i32* %10, i32* %44, i32 0)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %39
  %49 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %50 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LIBBPF_MAP_RODATA, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %56 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bpf_map_freeze(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load i32, i32* @errno, align 4
  %63 = trunc i64 %14 to i32
  %64 = call i8* @libbpf_strerror_r(i32 %62, i8* %16, i32 %63)
  store i8* %64, i8** %6, align 8
  %65 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %66 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @pr_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %67, i8* %68)
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %61, %54
  br label %71

71:                                               ; preds = %70, %48, %39
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %73

73:                                               ; preds = %71, %22
  %74 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i32*, i32) #2

declare dso_local i32 @bpf_map_freeze(i32) #2

declare dso_local i8* @libbpf_strerror_r(i32, i8*, i32) #2

declare dso_local i32 @pr_warning(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
