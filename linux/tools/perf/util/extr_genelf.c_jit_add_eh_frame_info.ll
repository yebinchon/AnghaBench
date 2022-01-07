; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf.c_jit_add_eh_frame_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf.c_jit_add_eh_frame_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i64, i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"cannot create section\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"cannot get new data\00", align 1
@ELF_T_BYTE = common dso_local global i8* null, align 8
@EV_CURRENT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot get section header\00", align 1
@SHT_PROGBITS = common dso_local global i8* null, align 8
@SHF_ALLOC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i32)* @jit_add_eh_frame_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jit_add_eh_frame_info(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %15, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @elf_newscn(i32* %19)
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %124

25:                                               ; preds = %5
  %26 = load i32*, i32** %13, align 8
  %27 = call %struct.TYPE_6__* @elf_newdata(i32* %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %12, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %124

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 8, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @ELF_T_BYTE, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** @EV_CURRENT, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call %struct.TYPE_5__* @elf_getshdr(i32* %49)
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %14, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %32
  %54 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %124

55:                                               ; preds = %32
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 104, i32* %57, align 8
  %58 = load i8*, i8** @SHT_PROGBITS, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i8*, i8** @SHF_ALLOC, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32* @elf_newscn(i32* %69)
  store i32* %70, i32** %13, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %55
  %74 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %124

75:                                               ; preds = %55
  %76 = load i32*, i32** %13, align 8
  %77 = call %struct.TYPE_6__* @elf_newdata(i32* %76)
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %12, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %79 = icmp ne %struct.TYPE_6__* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %124

82:                                               ; preds = %75
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 4, i32* %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr i8, i8* %87, i64 %89
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @ELF_T_BYTE, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i8*, i8** @EV_CURRENT, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = call %struct.TYPE_5__* @elf_getshdr(i32* %102)
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %14, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %105 = icmp ne %struct.TYPE_5__* %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %82
  %107 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %124

108:                                              ; preds = %82
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 90, i32* %110, align 8
  %111 = load i8*, i8** @SHT_PROGBITS, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i8*, i8** @SHF_ALLOC, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %108, %106, %80, %73, %53, %30, %23
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32* @elf_newscn(i32*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local %struct.TYPE_6__* @elf_newdata(i32*) #1

declare dso_local %struct.TYPE_5__* @elf_getshdr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
