; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_vmlinux_path__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_vmlinux_path__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.perf_env = type { i8* }
%struct.utsname = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@vmlinux_paths = common dso_local global i8** null, align 8
@vmlinux_paths_upd = common dso_local global i8** null, align 8
@vmlinux_path = common dso_local global i32* null, align 8
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_env*)* @vmlinux_path__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlinux_path__init(%struct.perf_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_env*, align 8
  %4 = alloca %struct.utsname, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_env* %0, %struct.perf_env** %3, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i8**, i8*** @vmlinux_paths, align 8
  %15 = call i32 @ARRAY_SIZE(i8** %14)
  %16 = load i8**, i8*** @vmlinux_paths_upd, align 8
  %17 = call i32 @ARRAY_SIZE(i8** %16)
  %18 = add i32 %15, %17
  %19 = zext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32* @malloc(i32 %21)
  store i32* %22, i32** @vmlinux_path, align 8
  %23 = load i32*, i32** @vmlinux_path, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %90

26:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i8**, i8*** @vmlinux_paths, align 8
  %30 = call i32 @ARRAY_SIZE(i8** %29)
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i8**, i8*** @vmlinux_paths, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @vmlinux_path__add(i8* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %88

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %90

51:                                               ; preds = %45
  %52 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %53 = icmp ne %struct.perf_env* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %56 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %7, align 8
  br label %65

58:                                               ; preds = %51
  %59 = call i64 @uname(%struct.utsname* %4)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %88

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %7, align 8
  br label %65

65:                                               ; preds = %62, %54
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i32, i32* %8, align 4
  %68 = load i8**, i8*** @vmlinux_paths_upd, align 8
  %69 = call i32 @ARRAY_SIZE(i8** %68)
  %70 = icmp ult i32 %67, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = trunc i64 %11 to i32
  %73 = load i8**, i8*** @vmlinux_paths_upd, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @snprintf(i8* %13, i32 %72, i8* %77, i8* %78)
  %80 = call i64 @vmlinux_path__add(i8* %13)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %88

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %66

87:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %90

88:                                               ; preds = %82, %61, %40
  %89 = call i32 (...) @vmlinux_path__exit()
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %90

90:                                               ; preds = %88, %87, %50, %25
  %91 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i64 @vmlinux_path__add(i8*) #2

declare dso_local i64 @uname(%struct.utsname*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @vmlinux_path__exit(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
