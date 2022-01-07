; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/s390/annotate/extr_instructions.c_s390_call__parse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/s390/annotate/extr_instructions.c_s390_call__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8 }
%struct.ins_operands = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.map_symbol = type { %struct.map* }
%struct.map = type { i32 (%struct.map*, i32)* }
%struct.addr_map_symbol = type { i32, i32, %struct.map* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch*, %struct.ins_operands*, %struct.map_symbol*)* @s390_call__parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_call__parse(%struct.arch* %0, %struct.ins_operands* %1, %struct.map_symbol* %2) #0 {
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
  %23 = call i8* @strchr(i8* %22, i8 signext 44)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %111

27:                                               ; preds = %3
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i64 @strtoull(i8* %29, i8** %8, i32 16)
  %31 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %32 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 60)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %111

39:                                               ; preds = %27
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  %42 = load %struct.arch*, %struct.arch** %5, align 8
  %43 = getelementptr inbounds %struct.arch, %struct.arch* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.arch*, %struct.arch** %5, align 8
  %51 = getelementptr inbounds %struct.arch, %struct.arch* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 1
  %54 = call i8* @strchr(i8* %49, i8 signext %53)
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %111

57:                                               ; preds = %48, %39
  %58 = load i8*, i8** %10, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 62)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %111

63:                                               ; preds = %57
  %64 = load i8*, i8** %9, align 8
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %10, align 8
  %66 = call i32* @strdup(i8* %65)
  %67 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %68 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32* %66, i32** %69, align 8
  %70 = load i8*, i8** %9, align 8
  store i8 62, i8* %70, align 1
  %71 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %72 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %111

77:                                               ; preds = %63
  %78 = load %struct.map*, %struct.map** %11, align 8
  %79 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %80 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @map__objdump_2mem(%struct.map* %78, i64 %82)
  %84 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = call i64 @map_groups__find_ams(%struct.addr_map_symbol* %12)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 2
  %89 = load %struct.map*, %struct.map** %88, align 8
  %90 = load %struct.map*, %struct.map** %11, align 8
  %91 = getelementptr inbounds %struct.map, %struct.map* %90, i32 0, i32 0
  %92 = load i32 (%struct.map*, i32)*, i32 (%struct.map*, i32)** %91, align 8
  %93 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 2
  %94 = load %struct.map*, %struct.map** %93, align 8
  %95 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 %92(%struct.map* %94, i32 %96)
  %98 = call i64 @map__rip_2objdump(%struct.map* %89, i32 %97)
  %99 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %100 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %98, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %87
  %105 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %12, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ins_operands*, %struct.ins_operands** %6, align 8
  %108 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %87, %77
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %76, %62, %56, %38, %26
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtoull(i8*, i8**, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @map__objdump_2mem(%struct.map*, i64) #1

declare dso_local i64 @map_groups__find_ams(%struct.addr_map_symbol*) #1

declare dso_local i64 @map__rip_2objdump(%struct.map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
