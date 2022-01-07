; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__init_btf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__init_btf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Error loading ELF section %s: %d.\0A\00", align 1
@BTF_ELF_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error finalizing %s: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Ignore ELF section %s because its depending ELF section %s is not found.\0A\00", align 1
@BTF_EXT_ELF_SEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Error loading ELF section %s: %ld. Ignored and continue.\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"BTF is required, but is missing or corrupted.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, %struct.TYPE_4__*, %struct.TYPE_4__*)* @bpf_object__init_btf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__init_btf(%struct.bpf_object* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_object*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %10 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %11 = call i32 @bpf_object__is_btf_mandatory(%struct.bpf_object* %10)
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %46

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @btf__new(i32 %17, i32 %20)
  %22 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %23 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %25 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @IS_ERR(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %14
  %30 = load i32, i32* @BTF_ELF_SEC, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %84

33:                                               ; preds = %14
  %34 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %35 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %36 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @btf__finalize_data(%struct.bpf_object* %34, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @BTF_ELF_SEC, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  br label %84

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %83

49:                                               ; preds = %46
  %50 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %51 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @BTF_EXT_ELF_SEC, align 4
  %56 = load i32, i32* @BTF_ELF_SEC, align 4
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56)
  br label %84

58:                                               ; preds = %49
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @btf_ext__new(i32 %61, i32 %64)
  %66 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %67 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %66, i32 0, i32 1
  store i32* %65, i32** %67, align 8
  %68 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %69 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @IS_ERR(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %58
  %74 = load i32, i32* @BTF_EXT_ELF_SEC, align 4
  %75 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %76 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @PTR_ERR(i32* %77)
  %79 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %78)
  %80 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %81 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  br label %84

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82, %46
  br label %84

84:                                               ; preds = %83, %73, %54, %41, %29
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %89 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @IS_ERR(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %87, %84
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %105

100:                                              ; preds = %96
  %101 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %102 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @PTR_ERR(i32* %103)
  br label %105

105:                                              ; preds = %100, %99
  %106 = phi i32 [ %97, %99 ], [ %104, %100 ]
  store i32 %106, i32* %9, align 4
  br label %108

107:                                              ; preds = %93
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %107, %105
  %109 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %110 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @IS_ERR_OR_NULL(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %108
  %115 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %116 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @btf__free(i32* %117)
  br label %119

119:                                              ; preds = %114, %108
  %120 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %121 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %120, i32 0, i32 0
  store i32* null, i32** %121, align 8
  br label %122

122:                                              ; preds = %119, %87
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %127 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %141, label %130

130:                                              ; preds = %125
  %131 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* @ENOENT, align 4
  %136 = sub nsw i32 0, %135
  br label %139

137:                                              ; preds = %130
  %138 = load i32, i32* %9, align 4
  br label %139

139:                                              ; preds = %137, %134
  %140 = phi i32 [ %136, %134 ], [ %138, %137 ]
  store i32 %140, i32* %4, align 4
  br label %142

141:                                              ; preds = %125, %122
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %139
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @bpf_object__is_btf_mandatory(%struct.bpf_object*) #1

declare dso_local i32* @btf__new(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @btf__finalize_data(%struct.bpf_object*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32* @btf_ext__new(i32, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @btf__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
