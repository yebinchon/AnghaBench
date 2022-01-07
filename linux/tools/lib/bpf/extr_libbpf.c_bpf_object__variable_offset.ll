; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__variable_offset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__variable_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@STB_GLOBAL = common dso_local global i64 0, align 8
@STT_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"failed to get sym name string for var %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_object__variable_offset(%struct.bpf_object* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %87

24:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %81, %24
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 12
  %32 = icmp ult i64 %26, %31
  br i1 %32, label %33, label %84

33:                                               ; preds = %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @gelf_getsym(%struct.TYPE_8__* %34, i64 %35, %struct.TYPE_7__* %11)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %81

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @GELF_ST_BIND(i32 %41)
  %43 = load i64, i64* @STB_GLOBAL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @GELF_ST_TYPE(i32 %47)
  %49 = load i64, i64* @STT_OBJECT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %39
  br label %81

52:                                               ; preds = %45
  %53 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %54 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %58 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @elf_strptr(i32 %56, i32 %60, i32 %62)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %52
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %87

71:                                               ; preds = %52
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i64 @strcmp(i8* %72, i8* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  store i32 0, i32* %4, align 4
  br label %87

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %51, %38
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  br label %25

84:                                               ; preds = %25
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %76, %66, %21
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @gelf_getsym(%struct.TYPE_8__*, i64, %struct.TYPE_7__*) #1

declare dso_local i64 @GELF_ST_BIND(i32) #1

declare dso_local i64 @GELF_ST_TYPE(i32) #1

declare dso_local i8* @elf_strptr(i32, i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
