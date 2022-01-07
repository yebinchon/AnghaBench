; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object_search_section_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object_search_section_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"failed to get section(%d) header from %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to get section(%d) name from %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to get section(%d) data from %s(%s)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, i8*, i64*)* @bpf_object_search_section_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object_search_section_size(%struct.bpf_object* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_9__, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %16 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %8, align 8
  %18 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %19 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %68, %3
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32* @elf_nextscn(i32* %23, i32* %24)
  store i32* %25, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %88

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = call %struct.TYPE_9__* @gelf_getshdr(i32* %30, %struct.TYPE_9__* %14)
  %32 = icmp ne %struct.TYPE_9__* %31, %14
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %36 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 (i8*, i32, i8*, ...) @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %91

43:                                               ; preds = %27
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @elf_strptr(i32* %44, i32 %47, i32 %49)
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %56 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 (i8*, i32, i8*, ...) @pr_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %54, i8* %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %91

63:                                               ; preds = %43
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i64 @strcmp(i8* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %22

69:                                               ; preds = %63
  %70 = load i32*, i32** %10, align 8
  %71 = call %struct.TYPE_11__* @elf_getdata(i32* %70, i32 0)
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %13, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %73 = icmp ne %struct.TYPE_11__* %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %78 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i8*, i32, i8*, ...) @pr_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %75, i8* %76, i32 %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %91

83:                                               ; preds = %69
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  store i32 0, i32* %4, align 4
  br label %91

88:                                               ; preds = %22
  %89 = load i32, i32* @ENOENT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %83, %74, %53, %33
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @gelf_getshdr(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @pr_warning(i8*, i32, i8*, ...) #1

declare dso_local i8* @elf_strptr(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_11__* @elf_getdata(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
