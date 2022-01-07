; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_report_sec_mismatch.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_report_sec_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sectioncheck = type { i32, i32 }

@sec_mismatch_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"%s(%s+0x%llx): Section mismatch in reference from the %s %s%s to the %s %s:%s%s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [128 x i8] c"The function %s%s() references\0Athe %s %s%s%s.\0AThis is often because %s lacks a %s\0Aannotation or the annotation of %s is wrong.\0A\00", align 1
@.str.2 = private unnamed_addr constant [162 x i8] c"The variable %s references\0Athe %s %s%s%s\0AIf the reference is valid then annotate the\0Avariable with __init* or __refdata (see linux/init.h) or name the variable:\0A\00", align 1
@.str.3 = private unnamed_addr constant [163 x i8] c"The function %s() references a %s in an exit section.\0AOften the %s %s%s has valid usage outside the exit section\0Aand the fix is to remove the %sannotation of %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [149 x i8] c"The variable %s references\0Athe %s %s%s%s\0AIf the reference is valid then annotate the\0Avariable with __exit* (see linux/init.h) or name the variable:\0A\00", align 1
@.str.5 = private unnamed_addr constant [109 x i8] c"The %s %s%s%s references\0Aa %s %s%s%s.\0AIf %s is only used by %s then\0Aannotate %s with a matching annotation.\0A\00", align 1
@.str.6 = private unnamed_addr constant [231 x i8] c"The %s %s%s%s references\0Aa %s %s%s%s.\0AThis is often seen when error handling in the init function\0Auses functionality in the exit path.\0AThe fix is often to remove the %sannotation of\0A%s%s so it may be used outside an exit section.\0A\00", align 1
@.str.7 = private unnamed_addr constant [231 x i8] c"The %s %s%s%s references\0Aa %s %s%s%s.\0AThis is often seen when error handling in the exit function\0Auses functionality in the init path.\0AThe fix is often to remove the %sannotation of\0A%s%s so it may be used outside an init section.\0A\00", align 1
@.str.8 = private unnamed_addr constant [108 x i8] c"The symbol %s is exported and annotated %s\0AFix this by removing the %sannotation of %s or drop the export.\0A\00", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"There's a special handler for this mismatch type, we should never get here.\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sectioncheck*, i8*, i64, i8*, i32, i8*, i8*, i32)* @report_sec_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_sec_mismatch(i8* %0, %struct.sectioncheck* %1, i8* %2, i64 %3, i8* %4, i32 %5, i8* %6, i8* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sectioncheck*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store %struct.sectioncheck* %1, %struct.sectioncheck** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %25 = load i32, i32* @sec_mismatch_count, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @sec_mismatch_count, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @get_pretty_name(i32 %27, i8** %19, i8** %20)
  %29 = load i32, i32* %18, align 4
  %30 = call i32 @get_pretty_name(i32 %29, i8** %21, i8** %22)
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i8*, i8** %19, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = load i8*, i8** %20, align 8
  %37 = load i8*, i8** %21, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = load i8*, i8** %22, align 8
  %41 = call i32 @warn(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32, i64 %33, i8* %34, i8* %35, i8* %36, i8* %37, i8* %38, i8* %39, i8* %40)
  %42 = load %struct.sectioncheck*, %struct.sectioncheck** %11, align 8
  %43 = getelementptr inbounds %struct.sectioncheck, %struct.sectioncheck* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %190 [
    i32 130, label %45
    i32 134, label %65
    i32 131, label %81
    i32 135, label %95
    i32 128, label %111
    i32 129, label %111
    i32 136, label %133
    i32 137, label %155
    i32 133, label %177
    i32 132, label %188
  ]

45:                                               ; preds = %9
  %46 = load i8*, i8** %12, align 8
  %47 = call i8* @sec2annotation(i8* %46)
  store i8* %47, i8** %23, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = call i8* @sec2annotation(i8* %48)
  store i8* %49, i8** %24, align 8
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** %23, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i8*, i8** %21, align 8
  %54 = load i8*, i8** %24, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = load i8*, i8** %22, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i8*, i8** %24, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.1, i64 0, i64 0), i8* %51, i8* %52, i8* %53, i8* %54, i8* %55, i8* %56, i8* %57, i8* %58, i8* %59)
  %61 = load i8*, i8** %23, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i8*, i8** %24, align 8
  %64 = call i32 @free(i8* %63)
  br label %190

65:                                               ; preds = %9
  %66 = load i8*, i8** %16, align 8
  %67 = call i8* @sec2annotation(i8* %66)
  store i8* %67, i8** %24, align 8
  %68 = load i32, i32* @stderr, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = load i8*, i8** %21, align 8
  %71 = load i8*, i8** %24, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = load i8*, i8** %22, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.2, i64 0, i64 0), i8* %69, i8* %70, i8* %71, i8* %72, i8* %73)
  %75 = load %struct.sectioncheck*, %struct.sectioncheck** %11, align 8
  %76 = getelementptr inbounds %struct.sectioncheck, %struct.sectioncheck* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @print_section_list(i32 %77)
  %79 = load i8*, i8** %24, align 8
  %80 = call i32 @free(i8* %79)
  br label %190

81:                                               ; preds = %9
  %82 = load i8*, i8** %16, align 8
  %83 = call i8* @sec2annotation(i8* %82)
  store i8* %83, i8** %24, align 8
  %84 = load i32, i32* @stderr, align 4
  %85 = load i8*, i8** %14, align 8
  %86 = load i8*, i8** %21, align 8
  %87 = load i8*, i8** %21, align 8
  %88 = load i8*, i8** %17, align 8
  %89 = load i8*, i8** %22, align 8
  %90 = load i8*, i8** %24, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.3, i64 0, i64 0), i8* %85, i8* %86, i8* %87, i8* %88, i8* %89, i8* %90, i8* %91)
  %93 = load i8*, i8** %24, align 8
  %94 = call i32 @free(i8* %93)
  br label %190

95:                                               ; preds = %9
  %96 = load i8*, i8** %16, align 8
  %97 = call i8* @sec2annotation(i8* %96)
  store i8* %97, i8** %24, align 8
  %98 = load i32, i32* @stderr, align 4
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %21, align 8
  %101 = load i8*, i8** %24, align 8
  %102 = load i8*, i8** %17, align 8
  %103 = load i8*, i8** %22, align 8
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.4, i64 0, i64 0), i8* %99, i8* %100, i8* %101, i8* %102, i8* %103)
  %105 = load %struct.sectioncheck*, %struct.sectioncheck** %11, align 8
  %106 = getelementptr inbounds %struct.sectioncheck, %struct.sectioncheck* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @print_section_list(i32 %107)
  %109 = load i8*, i8** %24, align 8
  %110 = call i32 @free(i8* %109)
  br label %190

111:                                              ; preds = %9, %9
  %112 = load i8*, i8** %12, align 8
  %113 = call i8* @sec2annotation(i8* %112)
  store i8* %113, i8** %23, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = call i8* @sec2annotation(i8* %114)
  store i8* %115, i8** %24, align 8
  %116 = load i32, i32* @stderr, align 4
  %117 = load i8*, i8** %19, align 8
  %118 = load i8*, i8** %23, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %20, align 8
  %121 = load i8*, i8** %21, align 8
  %122 = load i8*, i8** %24, align 8
  %123 = load i8*, i8** %17, align 8
  %124 = load i8*, i8** %22, align 8
  %125 = load i8*, i8** %17, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = load i8*, i8** %17, align 8
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i8* %117, i8* %118, i8* %119, i8* %120, i8* %121, i8* %122, i8* %123, i8* %124, i8* %125, i8* %126, i8* %127)
  %129 = load i8*, i8** %23, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i8*, i8** %24, align 8
  %132 = call i32 @free(i8* %131)
  br label %190

133:                                              ; preds = %9
  %134 = load i8*, i8** %12, align 8
  %135 = call i8* @sec2annotation(i8* %134)
  store i8* %135, i8** %23, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = call i8* @sec2annotation(i8* %136)
  store i8* %137, i8** %24, align 8
  %138 = load i32, i32* @stderr, align 4
  %139 = load i8*, i8** %19, align 8
  %140 = load i8*, i8** %23, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = load i8*, i8** %20, align 8
  %143 = load i8*, i8** %21, align 8
  %144 = load i8*, i8** %24, align 8
  %145 = load i8*, i8** %17, align 8
  %146 = load i8*, i8** %22, align 8
  %147 = load i8*, i8** %24, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = load i8*, i8** %22, align 8
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([231 x i8], [231 x i8]* @.str.6, i64 0, i64 0), i8* %139, i8* %140, i8* %141, i8* %142, i8* %143, i8* %144, i8* %145, i8* %146, i8* %147, i8* %148, i8* %149)
  %151 = load i8*, i8** %23, align 8
  %152 = call i32 @free(i8* %151)
  %153 = load i8*, i8** %24, align 8
  %154 = call i32 @free(i8* %153)
  br label %190

155:                                              ; preds = %9
  %156 = load i8*, i8** %12, align 8
  %157 = call i8* @sec2annotation(i8* %156)
  store i8* %157, i8** %23, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = call i8* @sec2annotation(i8* %158)
  store i8* %159, i8** %24, align 8
  %160 = load i32, i32* @stderr, align 4
  %161 = load i8*, i8** %19, align 8
  %162 = load i8*, i8** %23, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = load i8*, i8** %20, align 8
  %165 = load i8*, i8** %21, align 8
  %166 = load i8*, i8** %24, align 8
  %167 = load i8*, i8** %17, align 8
  %168 = load i8*, i8** %22, align 8
  %169 = load i8*, i8** %24, align 8
  %170 = load i8*, i8** %17, align 8
  %171 = load i8*, i8** %22, align 8
  %172 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([231 x i8], [231 x i8]* @.str.7, i64 0, i64 0), i8* %161, i8* %162, i8* %163, i8* %164, i8* %165, i8* %166, i8* %167, i8* %168, i8* %169, i8* %170, i8* %171)
  %173 = load i8*, i8** %23, align 8
  %174 = call i32 @free(i8* %173)
  %175 = load i8*, i8** %24, align 8
  %176 = call i32 @free(i8* %175)
  br label %190

177:                                              ; preds = %9
  %178 = load i8*, i8** %16, align 8
  %179 = call i8* @sec2annotation(i8* %178)
  store i8* %179, i8** %24, align 8
  %180 = load i32, i32* @stderr, align 4
  %181 = load i8*, i8** %17, align 8
  %182 = load i8*, i8** %24, align 8
  %183 = load i8*, i8** %24, align 8
  %184 = load i8*, i8** %17, align 8
  %185 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.8, i64 0, i64 0), i8* %181, i8* %182, i8* %183, i8* %184)
  %186 = load i8*, i8** %24, align 8
  %187 = call i32 @free(i8* %186)
  br label %190

188:                                              ; preds = %9
  %189 = call i32 @fatal(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.9, i64 0, i64 0))
  br label %190

190:                                              ; preds = %9, %188, %177, %155, %133, %111, %95, %81, %65, %45
  %191 = load i32, i32* @stderr, align 4
  %192 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @get_pretty_name(i32, i8**, i8**) #1

declare dso_local i32 @warn(i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @sec2annotation(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @print_section_list(i32) #1

declare dso_local i32 @fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
