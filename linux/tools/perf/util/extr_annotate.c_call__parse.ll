; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_call__parse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_call__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8 }
%struct.ins_operands = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.map_symbol = type { %struct.map* }
%struct.map = type { i32 (%struct.map*, i32)* }
%struct.addr_map_symbol = type { i32, i32, %struct.map* }

@.str = private unnamed_addr constant [4 x i8] c"(%r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch*, %struct.ins_operands*, %struct.map_symbol*)* @call__parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call__parse(%struct.arch* %0, %struct.ins_operands* %1, %struct.map_symbol* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arch*, align 8
  %6 = alloca %struct.ins_operands*, align 8
  %7 = alloca %struct.map_symbol*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.map*, align 8
  %12 = alloca %struct.addr_map_symbol, align 8
  store %struct.arch* %0, %struct.arch** %5, align 8
  store %struct.ins_operands* %1, %struct.ins_operands** %6, align 8
  store %struct.map_symbol* %2, %struct.map_symbol** %7, align 8
  %13 = load %struct.map_symbol*, %struct.map_symbol** %7, align 8
  %14 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %13, i32 0, i32 0
  %15 = load %struct.map*, %struct.map** %14, align 8
  store %struct.map* %15, %struct.map** %11, align 8
  %16 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 2
  %19 = load %struct.map*, %struct.map** %11, align 8
  store %struct.map* %19, %struct.map** %18, align 8
  %20 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %21 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @strtoull(i8* %22, i8** %8, i32 16)
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %26 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 60)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %106

33:                                               ; preds = %3
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %10, align 8
  %36 = load %struct.arch*, %struct.arch** %5, align 8
  %37 = getelementptr inbounds %struct.arch, %struct.arch* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.arch*, %struct.arch** %5, align 8
  %45 = getelementptr inbounds %struct.arch, %struct.arch* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i8, i8* %46, align 1
  %48 = call i8* @strchr(i8* %43, i8 signext %47)
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %126

51:                                               ; preds = %42, %33
  %52 = load i8*, i8** %10, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 62)
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 -1, i32* %4, align 4
  br label %126

57:                                               ; preds = %51
  %58 = load i8*, i8** %9, align 8
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %10, align 8
  %60 = call i32* @strdup(i8* %59)
  %61 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %62 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32* %60, i32** %63, align 8
  %64 = load i8*, i8** %9, align 8
  store i8 62, i8* %64, align 1
  %65 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %66 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %126

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %125, %71
  %73 = load %struct.map*, %struct.map** %11, align 8
  %74 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %75 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @map__objdump_2mem(%struct.map* %73, i64 %77)
  %79 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = call i64 @map_groups__find_ams(%struct.addr_map_symbol* %12)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 2
  %84 = load %struct.map*, %struct.map** %83, align 8
  %85 = load %struct.map*, %struct.map** %11, align 8
  %86 = getelementptr inbounds %struct.map, %struct.map* %85, i32 0, i32 0
  %87 = load i32 (%struct.map*, i32)*, i32 (%struct.map*, i32)** %86, align 8
  %88 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 2
  %89 = load %struct.map*, %struct.map** %88, align 8
  %90 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 %87(%struct.map* %89, i32 %91)
  %93 = call i64 @map__rip_2objdump(%struct.map* %84, i32 %92)
  %94 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %95 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %93, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %82
  %100 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %103 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 8
  br label %105

105:                                              ; preds = %99, %82, %72
  store i32 0, i32* %4, align 4
  br label %126

106:                                              ; preds = %32
  %107 = load i8*, i8** %8, align 8
  %108 = call i8* @strchr(i8* %107, i8 signext 42)
  store i8* %108, i8** %9, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = call i32* @strstr(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load i8*, i8** %8, align 8
  %119 = call i8* @strtoull(i8* %118, i8** null, i32 16)
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %122 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i64 %120, i64* %123, align 8
  br label %124

124:                                              ; preds = %117, %111
  br label %125

125:                                              ; preds = %124, %106
  br label %72

126:                                              ; preds = %105, %70, %56, %50
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i8* @strtoull(i8*, i8**, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @map__objdump_2mem(%struct.map*, i64) #1

declare dso_local i64 @map_groups__find_ams(%struct.addr_map_symbol*) #1

declare dso_local i64 @map__rip_2objdump(%struct.map*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
