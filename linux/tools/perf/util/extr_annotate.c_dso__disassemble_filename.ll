; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_dso__disassemble_filename.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_dso__disassemble_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i64, i8*, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@DSO_BINARY_TYPE__KALLSYMS = common dso_local global i64 0, align 8
@SYMBOL_ANNOTATE_ERRNO__NO_VMLINUX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SBUILD_ID_SIZE = common dso_local global i32 0, align 4
@DSO__NAME_KALLSYMS = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, i8*, i64)* @dso__disassemble_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__disassemble_filename(%struct.dso* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dso*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i8* null, i8** %11, align 8
  %18 = load %struct.dso*, %struct.dso** %5, align 8
  %19 = getelementptr inbounds %struct.dso, %struct.dso* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DSO_BINARY_TYPE__KALLSYMS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.dso*, %struct.dso** %5, align 8
  %25 = call i64 @dso__is_kcore(%struct.dso* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @SYMBOL_ANNOTATE_ERRNO__NO_VMLINUX, align 4
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %99

29:                                               ; preds = %23, %3
  %30 = load %struct.dso*, %struct.dso** %5, align 8
  %31 = call i8* @dso__build_id_filename(%struct.dso* %30, i32* null, i32 0, i32 0)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @__symbol__join_symfs(i8* %35, i64 %36, i8* %37)
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @free(i8* %39)
  br label %49

41:                                               ; preds = %29
  %42 = load %struct.dso*, %struct.dso** %5, align 8
  %43 = getelementptr inbounds %struct.dso, %struct.dso* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %99

48:                                               ; preds = %41
  br label %89

49:                                               ; preds = %34
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @strdup(i8* %50)
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %99

56:                                               ; preds = %49
  %57 = load i8*, i8** %11, align 8
  %58 = call i8* @strrchr(i8* %57, i8 signext 47)
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = load i32, i32* @SBUILD_ID_SIZE, align 4
  %65 = sub nsw i32 %64, 2
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @dirname(i8* %68)
  br label %70

70:                                               ; preds = %67, %61, %56
  %71 = load %struct.dso*, %struct.dso** %5, align 8
  %72 = call i64 @dso__is_kcore(%struct.dso* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %11, align 8
  %76 = trunc i64 %15 to i32
  %77 = call i64 @readlink(i8* %75, i8* %17, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @DSO__NAME_KALLSYMS, align 4
  %81 = call i64 @strstr(i8* %17, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* @R_OK, align 4
  %86 = call i64 @access(i8* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83, %79, %74, %70
  br label %89

89:                                               ; preds = %88, %48
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.dso*, %struct.dso** %5, align 8
  %93 = getelementptr inbounds %struct.dso, %struct.dso* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @__symbol__join_symfs(i8* %90, i64 %91, i8* %94)
  br label %96

96:                                               ; preds = %89, %83
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @free(i8* %97)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %99

99:                                               ; preds = %96, %54, %46, %27
  %100 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @dso__is_kcore(%struct.dso*) #2

declare dso_local i8* @dso__build_id_filename(%struct.dso*, i32*, i32, i32) #2

declare dso_local i32 @__symbol__join_symfs(i8*, i64, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @dirname(i8*) #2

declare dso_local i64 @readlink(i8*, i8*, i32) #2

declare dso_local i64 @strstr(i8*, i32) #2

declare dso_local i64 @access(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
