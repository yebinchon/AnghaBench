; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_dump_spec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_dump_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_core_spec = type { i32, i32, %struct.TYPE_2__*, i64, i32*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"[%u] %s + \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%u @ &x\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"[%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.bpf_core_spec*)* @bpf_core_dump_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_core_dump_spec(i32 %0, %struct.bpf_core_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_core_spec*, align 8
  %5 = alloca %struct.btf_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.bpf_core_spec* %1, %struct.bpf_core_spec** %4, align 8
  %9 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %4, align 8
  %10 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.btf_type* @btf__type_by_id(i32 %17, i32 %18)
  store %struct.btf_type* %19, %struct.btf_type** %5, align 8
  %20 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %4, align 8
  %21 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %24 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @btf__name_by_offset(i32 %22, i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i32, i8*, i64, ...) @libbpf_print(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %29, i8* %30)
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %57, %2
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %4, align 8
  %35 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %4, align 8
  %41 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %4, align 8
  %50 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = icmp eq i32 %48, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %56 = call i32 (i32, i8*, i64, ...) @libbpf_print(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %47, i8* %55)
  br label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %32

60:                                               ; preds = %32
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %4, align 8
  %63 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, i8*, i64, ...) @libbpf_print(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %64)
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %105, %60
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %4, align 8
  %69 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %66
  %73 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %4, align 8
  %74 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %72
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %4, align 8
  %85 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i32, i8*, i64, ...) @libbpf_print(i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %91)
  br label %104

93:                                               ; preds = %72
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.bpf_core_spec*, %struct.bpf_core_spec** %4, align 8
  %96 = getelementptr inbounds %struct.bpf_core_spec, %struct.bpf_core_spec* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i32, i8*, i64, ...) @libbpf_print(i32 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %93, %82
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %66

108:                                              ; preds = %66
  ret void
}

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i32) #1

declare dso_local i8* @btf__name_by_offset(i32, i32) #1

declare dso_local i32 @libbpf_print(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
