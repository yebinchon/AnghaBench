; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_jit_add_debug_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_jit_add_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i8* }
%struct.buffer_ext = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"cannot create section\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"cannot get new data\00", align 1
@ELF_T_BYTE = common dso_local global i8* null, align 8
@EV_CURRENT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot get section header\00", align 1
@SHT_PROGBITS = common dso_local global i8* null, align 8
@ELF_C_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"elf_update debug failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jit_add_debug_info(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.buffer_ext, align 4
  %14 = alloca %struct.buffer_ext, align 4
  %15 = alloca %struct.buffer_ext, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = call i32 @buffer_ext_init(%struct.buffer_ext* %13)
  %18 = call i32 @buffer_ext_init(%struct.buffer_ext* %14)
  %19 = call i32 @buffer_ext_init(%struct.buffer_ext* %15)
  %20 = load i32, i32* %7, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @jit_process_debug_info(i32 %20, i8* %21, i32 %22, %struct.buffer_ext* %13, %struct.buffer_ext* %15, %struct.buffer_ext* %14)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %179

27:                                               ; preds = %4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @elf_newscn(i32* %28)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %179

34:                                               ; preds = %27
  %35 = load i32*, i32** %11, align 8
  %36 = call %struct.TYPE_6__* @elf_newdata(i32* %35)
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %10, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %179

41:                                               ; preds = %34
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = call i8* @buffer_ext_addr(%struct.buffer_ext* %13)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @ELF_T_BYTE, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = call i8* @buffer_ext_size(%struct.buffer_ext* %13)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @EV_CURRENT, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call %struct.TYPE_5__* @elf_getshdr(i32* %58)
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %12, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %41
  %63 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %179

64:                                               ; preds = %41
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 52, i32* %66, align 8
  %67 = load i8*, i8** @SHT_PROGBITS, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i32* @elf_newscn(i32* %76)
  store i32* %77, i32** %11, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %64
  %81 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %179

82:                                               ; preds = %64
  %83 = load i32*, i32** %11, align 8
  %84 = call %struct.TYPE_6__* @elf_newdata(i32* %83)
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %10, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = icmp ne %struct.TYPE_6__* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %179

89:                                               ; preds = %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = call i8* @buffer_ext_addr(%struct.buffer_ext* %14)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @ELF_T_BYTE, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = call i8* @buffer_ext_size(%struct.buffer_ext* %14)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** @EV_CURRENT, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call %struct.TYPE_5__* @elf_getshdr(i32* %106)
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %12, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %109 = icmp ne %struct.TYPE_5__* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %89
  %111 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %179

112:                                              ; preds = %89
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i32 64, i32* %114, align 8
  %115 = load i8*, i8** @SHT_PROGBITS, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = call i32* @elf_newscn(i32* %124)
  store i32* %125, i32** %11, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %112
  %129 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %179

130:                                              ; preds = %112
  %131 = load i32*, i32** %11, align 8
  %132 = call %struct.TYPE_6__* @elf_newdata(i32* %131)
  store %struct.TYPE_6__* %132, %struct.TYPE_6__** %10, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %134 = icmp ne %struct.TYPE_6__* %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %179

137:                                              ; preds = %130
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = call i8* @buffer_ext_addr(%struct.buffer_ext* %15)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 5
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @ELF_T_BYTE, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  store i8* %145, i8** %147, align 8
  %148 = call i8* @buffer_ext_size(%struct.buffer_ext* %15)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  store i8* %148, i8** %150, align 8
  %151 = load i8*, i8** @EV_CURRENT, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = call %struct.TYPE_5__* @elf_getshdr(i32* %154)
  store %struct.TYPE_5__* %155, %struct.TYPE_5__** %12, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %157 = icmp ne %struct.TYPE_5__* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %137
  %159 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %179

160:                                              ; preds = %137
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  store i32 76, i32* %162, align 8
  %163 = load i8*, i8** @SHT_PROGBITS, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 4
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 3
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  store i64 0, i64* %169, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  store i64 0, i64* %171, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* @ELF_C_WRITE, align 4
  %174 = call i64 @elf_update(i32* %172, i32 %173)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %160
  %177 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %179

178:                                              ; preds = %160
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %178, %176, %158, %135, %128, %110, %87, %80, %62, %39, %32, %26
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @buffer_ext_init(%struct.buffer_ext*) #1

declare dso_local i32 @jit_process_debug_info(i32, i8*, i32, %struct.buffer_ext*, %struct.buffer_ext*, %struct.buffer_ext*) #1

declare dso_local i32* @elf_newscn(i32*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local %struct.TYPE_6__* @elf_newdata(i32*) #1

declare dso_local i8* @buffer_ext_addr(%struct.buffer_ext*) #1

declare dso_local i8* @buffer_ext_size(%struct.buffer_ext*) #1

declare dso_local %struct.TYPE_5__* @elf_getshdr(i32*) #1

declare dso_local i64 @elf_update(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
