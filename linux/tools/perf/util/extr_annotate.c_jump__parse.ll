; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_jump__parse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_jump__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8 }
%struct.ins_operands = type { i8*, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i64, i32, i32, i64, i32 }
%struct.map_symbol = type { %struct.symbol*, %struct.map* }
%struct.symbol = type { i32, i32 }
%struct.map = type { i64 (%struct.map*, i32)*, i32 (%struct.map*, i64)* }
%struct.addr_map_symbol = type { i64, i32, %struct.map* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch*, %struct.ins_operands*, %struct.map_symbol*)* @jump__parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jump__parse(%struct.arch* %0, %struct.ins_operands* %1, %struct.map_symbol* %2) #0 {
  %4 = alloca %struct.arch*, align 8
  %5 = alloca %struct.ins_operands*, align 8
  %6 = alloca %struct.map_symbol*, align 8
  %7 = alloca %struct.map*, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca %struct.addr_map_symbol, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.arch* %0, %struct.arch** %4, align 8
  store %struct.ins_operands* %1, %struct.ins_operands** %5, align 8
  store %struct.map_symbol* %2, %struct.map_symbol** %6, align 8
  %13 = load %struct.map_symbol*, %struct.map_symbol** %6, align 8
  %14 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %13, i32 0, i32 1
  %15 = load %struct.map*, %struct.map** %14, align 8
  store %struct.map* %15, %struct.map** %7, align 8
  %16 = load %struct.map_symbol*, %struct.map_symbol** %6, align 8
  %17 = getelementptr inbounds %struct.map_symbol, %struct.map_symbol* %16, i32 0, i32 0
  %18 = load %struct.symbol*, %struct.symbol** %17, align 8
  store %struct.symbol* %18, %struct.symbol** %8, align 8
  %19 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %9, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %9, i32 0, i32 1
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %9, i32 0, i32 2
  %22 = load %struct.map*, %struct.map** %7, align 8
  store %struct.map* %22, %struct.map** %21, align 8
  %23 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %24 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 44)
  store i8* %26, i8** %10, align 8
  %27 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %28 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.arch*, %struct.arch** %4, align 8
  %31 = getelementptr inbounds %struct.arch, %struct.arch* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 1
  %34 = call i8* @strchr(i8* %29, i8 signext %33)
  %35 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %36 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %39 = call i8* @validate_comma(i8* %37, %struct.ins_operands* %38)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  %42 = icmp ne i8* %40, null
  br i1 %42, label %43, label %73

43:                                               ; preds = %3
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @strtoull(i8* %44, i32* null, i32 16)
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %48 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %51 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %43
  %56 = load i8*, i8** %10, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 44)
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %60 = call i8* @validate_comma(i8* %58, %struct.ins_operands* %59)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  %63 = icmp ne i8* %61, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load i8*, i8** %10, align 8
  %66 = call i8* @strtoull(i8* %65, i32* null, i32 16)
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %69 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %55
  br label %72

72:                                               ; preds = %71, %43
  br label %82

73:                                               ; preds = %3
  %74 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %75 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @strtoull(i8* %76, i32* null, i32 16)
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %80 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %73, %72
  %83 = load %struct.map*, %struct.map** %7, align 8
  %84 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %85 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @map__objdump_2mem(%struct.map* %83, i64 %87)
  %89 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %9, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = load %struct.map*, %struct.map** %7, align 8
  %91 = getelementptr inbounds %struct.map, %struct.map* %90, i32 0, i32 0
  %92 = load i64 (%struct.map*, i32)*, i64 (%struct.map*, i32)** %91, align 8
  %93 = load %struct.map*, %struct.map** %7, align 8
  %94 = load %struct.symbol*, %struct.symbol** %8, align 8
  %95 = getelementptr inbounds %struct.symbol, %struct.symbol* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 %92(%struct.map* %93, i32 %96)
  store i64 %97, i64* %11, align 8
  %98 = load %struct.map*, %struct.map** %7, align 8
  %99 = getelementptr inbounds %struct.map, %struct.map* %98, i32 0, i32 0
  %100 = load i64 (%struct.map*, i32)*, i64 (%struct.map*, i32)** %99, align 8
  %101 = load %struct.map*, %struct.map** %7, align 8
  %102 = load %struct.symbol*, %struct.symbol** %8, align 8
  %103 = getelementptr inbounds %struct.symbol, %struct.symbol* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 %100(%struct.map* %101, i32 %104)
  store i64 %105, i64* %12, align 8
  %106 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %9, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %82
  %111 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %9, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp sgt i64 %112, %113
  br label %115

115:                                              ; preds = %110, %82
  %116 = phi i1 [ true, %82 ], [ %114, %110 ]
  %117 = zext i1 %116 to i32
  %118 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %119 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 8
  %121 = call i64 @map_groups__find_ams(%struct.addr_map_symbol* %9)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %146

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %9, i32 0, i32 2
  %125 = load %struct.map*, %struct.map** %124, align 8
  %126 = load %struct.map*, %struct.map** %7, align 8
  %127 = getelementptr inbounds %struct.map, %struct.map* %126, i32 0, i32 1
  %128 = load i32 (%struct.map*, i64)*, i32 (%struct.map*, i64)** %127, align 8
  %129 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %9, i32 0, i32 2
  %130 = load %struct.map*, %struct.map** %129, align 8
  %131 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %9, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 %128(%struct.map* %130, i64 %132)
  %134 = call i64 @map__rip_2objdump(%struct.map* %125, i32 %133)
  %135 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %136 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %134, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %123
  %141 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %9, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %144 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  store i32 %142, i32* %145, align 8
  br label %146

146:                                              ; preds = %140, %123, %115
  %147 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %148 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %9, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %11, align 8
  %156 = sub nsw i64 %154, %155
  %157 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %158 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  store i64 %156, i64* %159, align 8
  %160 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %161 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  store i32 1, i32* %162, align 4
  br label %167

163:                                              ; preds = %146
  %164 = load %struct.ins_operands*, %struct.ins_operands** %5, align 8
  %165 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  store i32 0, i32* %166, align 4
  br label %167

167:                                              ; preds = %163, %152
  ret i32 0
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @validate_comma(i8*, %struct.ins_operands*) #1

declare dso_local i8* @strtoull(i8*, i32*, i32) #1

declare dso_local i64 @map__objdump_2mem(%struct.map*, i64) #1

declare dso_local i64 @map_groups__find_ams(%struct.addr_map_symbol*) #1

declare dso_local i64 @map__rip_2objdump(%struct.map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
