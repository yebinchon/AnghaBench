; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__close.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i64, i64, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, i32, i32 (%struct.bpf_object*, i32)* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32*)*, i32*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_object__close(%struct.bpf_object* %0) #0 {
  %2 = alloca %struct.bpf_object*, align 8
  %3 = alloca i64, align 8
  store %struct.bpf_object* %0, %struct.bpf_object** %2, align 8
  %4 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %5 = icmp ne %struct.bpf_object* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %143

7:                                                ; preds = %1
  %8 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %9 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %8, i32 0, i32 9
  %10 = load i32 (%struct.bpf_object*, i32)*, i32 (%struct.bpf_object*, i32)** %9, align 8
  %11 = icmp ne i32 (%struct.bpf_object*, i32)* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %14 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %13, i32 0, i32 9
  %15 = load i32 (%struct.bpf_object*, i32)*, i32 (%struct.bpf_object*, i32)** %14, align 8
  %16 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %17 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %18 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %15(%struct.bpf_object* %16, i32 %19)
  br label %21

21:                                               ; preds = %12, %7
  %22 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %23 = call i32 @bpf_object__elf_finish(%struct.bpf_object* %22)
  %24 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %25 = call i32 @bpf_object__unload(%struct.bpf_object* %24)
  %26 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %27 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @btf__free(i32 %28)
  %30 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %31 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @btf_ext__free(i32 %32)
  store i64 0, i64* %3, align 8
  br label %34

34:                                               ; preds = %90, %21
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %37 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %93

40:                                               ; preds = %34
  %41 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %42 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %41, i32 0, i32 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = call i32 @zfree(%struct.TYPE_6__** %46)
  %48 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %49 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %48, i32 0, i32 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_6__*, i32*)*, i32 (%struct.TYPE_6__*, i32*)** %53, align 8
  %55 = icmp ne i32 (%struct.TYPE_6__*, i32*)* %54, null
  br i1 %55, label %56, label %77

56:                                               ; preds = %40
  %57 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %58 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %57, i32 0, i32 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i64, i64* %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_6__*, i32*)*, i32 (%struct.TYPE_6__*, i32*)** %62, align 8
  %64 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %65 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %64, i32 0, i32 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %70 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %69, i32 0, i32 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 %63(%struct.TYPE_6__* %68, i32* %75)
  br label %77

77:                                               ; preds = %56, %40
  %78 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %79 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %78, i32 0, i32 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i64, i64* %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %85 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %84, i32 0, i32 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 (%struct.TYPE_6__*, i32*)* null, i32 (%struct.TYPE_6__*, i32*)** %89, align 8
  br label %90

90:                                               ; preds = %77
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %3, align 8
  br label %34

93:                                               ; preds = %34
  %94 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %95 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = call i32 @zfree(%struct.TYPE_6__** %96)
  %98 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %99 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = call i32 @zfree(%struct.TYPE_6__** %100)
  %102 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %103 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %102, i32 0, i32 4
  %104 = call i32 @zfree(%struct.TYPE_6__** %103)
  %105 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %106 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %108 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %107, i32 0, i32 3
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = icmp ne %struct.TYPE_6__* %109, null
  br i1 %110, label %111, label %134

111:                                              ; preds = %93
  %112 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %113 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %111
  store i64 0, i64* %3, align 8
  br label %117

117:                                              ; preds = %130, %116
  %118 = load i64, i64* %3, align 8
  %119 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %120 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %125 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %124, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i64, i64* %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %127
  %129 = call i32 @bpf_program__exit(%struct.TYPE_6__* %128)
  br label %130

130:                                              ; preds = %123
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %3, align 8
  br label %117

133:                                              ; preds = %117
  br label %134

134:                                              ; preds = %133, %111, %93
  %135 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %136 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %135, i32 0, i32 3
  %137 = call i32 @zfree(%struct.TYPE_6__** %136)
  %138 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %139 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %138, i32 0, i32 2
  %140 = call i32 @list_del(i32* %139)
  %141 = load %struct.bpf_object*, %struct.bpf_object** %2, align 8
  %142 = call i32 @free(%struct.bpf_object* %141)
  br label %143

143:                                              ; preds = %134, %6
  ret void
}

declare dso_local i32 @bpf_object__elf_finish(%struct.bpf_object*) #1

declare dso_local i32 @bpf_object__unload(%struct.bpf_object*) #1

declare dso_local i32 @btf__free(i32) #1

declare dso_local i32 @btf_ext__free(i32) #1

declare dso_local i32 @zfree(%struct.TYPE_6__**) #1

declare dso_local i32 @bpf_program__exit(%struct.TYPE_6__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free(%struct.bpf_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
