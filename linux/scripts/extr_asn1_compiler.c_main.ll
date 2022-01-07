; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"KBUILD_VERBOSE\00", align 1
@verbose_opt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@debug_opt = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Format: %s [-v] [-d] <grammar-file> <c-file> <hdr-file>\0A\00", align 1
@filename = common dso_local global i8* null, align 8
@outputname = common dso_local global i8* null, align 8
@headername = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"%s: Short read\0A\00", align 1
@grammar_name = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @atoi(i8* %18)
  store i32 %19, i32* @verbose_opt, align 4
  br label %20

20:                                               ; preds = %17, %2
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 4
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* @verbose_opt, align 4
  br label %40

31:                                               ; preds = %24
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* @debug_opt, align 4
  br label %39

38:                                               ; preds = %31
  br label %53

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memmove(i8** %42, i8** %44, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  br label %21

53:                                               ; preds = %38, %21
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 4
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = call i32 @exit(i32 2) #3
  unreachable

63:                                               ; preds = %53
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** @filename, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 2
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** @outputname, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 3
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** @headername, align 8
  %73 = load i8*, i8** @filename, align 8
  %74 = load i32, i32* @O_RDONLY, align 4
  %75 = call i32 @open(i8* %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %63
  %79 = load i8*, i8** @filename, align 8
  %80 = call i32 @perror(i8* %79)
  %81 = call i32 @exit(i32 1) #3
  unreachable

82:                                               ; preds = %63
  %83 = load i32, i32* %13, align 4
  %84 = call i64 @fstat(i32 %83, %struct.stat* %6)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i8*, i8** @filename, align 8
  %88 = call i32 @perror(i8* %87)
  %89 = call i32 @exit(i32 1) #3
  unreachable

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  %94 = call i8* @malloc(i64 %93)
  store i8* %94, i8** %10, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = call i32 @perror(i8* null)
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %90
  %100 = load i32, i32* %13, align 4
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @read(i32 %100, i8* %101, i64 %103)
  store i64 %104, i64* %7, align 8
  %105 = icmp ult i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i8*, i8** @filename, align 8
  %108 = call i32 @perror(i8* %107)
  %109 = call i32 @exit(i32 1) #3
  unreachable

110:                                              ; preds = %99
  %111 = load i32, i32* %13, align 4
  %112 = call i64 @close(i32 %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i8*, i8** @filename, align 8
  %116 = call i32 @perror(i8* %115)
  %117 = call i32 @exit(i32 1) #3
  unreachable

118:                                              ; preds = %110
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %119, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32, i32* @stderr, align 4
  %125 = load i8*, i8** @filename, align 8
  %126 = call i32 @fprintf(i32 %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %125)
  %127 = call i32 @exit(i32 1) #3
  unreachable

128:                                              ; preds = %118
  %129 = load i8**, i8*** %5, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i8* @strrchr(i8* %131, i8 signext 47)
  store i8* %132, i8** %11, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  br label %142

138:                                              ; preds = %128
  %139 = load i8**, i8*** %5, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 1
  %141 = load i8*, i8** %140, align 8
  br label %142

142:                                              ; preds = %138, %135
  %143 = phi i8* [ %137, %135 ], [ %141, %138 ]
  store i8* %143, i8** %11, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = call i32 @strdup(i8* %144)
  store i32 %145, i32* @grammar_name, align 4
  %146 = load i8*, i8** %11, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %142
  %149 = call i32 @perror(i8* null)
  %150 = call i32 @exit(i32 1) #3
  unreachable

151:                                              ; preds = %142
  %152 = load i32, i32* @grammar_name, align 4
  %153 = call i8* @strchr(i32 %152, i8 signext 46)
  store i8* %153, i8** %11, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i8*, i8** %11, align 8
  store i8 0, i8* %157, align 1
  br label %158

158:                                              ; preds = %156, %151
  %159 = load i8*, i8** %10, align 8
  %160 = load i64, i64* %7, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8 0, i8* %161, align 1
  %162 = load i8*, i8** %10, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = load i64, i64* %7, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = call i32 @tokenise(i8* %162, i8* %165)
  %167 = call i32 (...) @build_type_list()
  %168 = call i32 (...) @parse()
  %169 = call i32 (...) @dump_elements()
  %170 = load i8*, i8** @outputname, align 8
  %171 = call i32* @fopen(i8* %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %171, i32** %8, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %158
  %175 = load i8*, i8** @outputname, align 8
  %176 = call i32 @perror(i8* %175)
  %177 = call i32 @exit(i32 1) #3
  unreachable

178:                                              ; preds = %158
  %179 = load i8*, i8** @headername, align 8
  %180 = call i32* @fopen(i8* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %180, i32** %9, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %178
  %184 = load i8*, i8** @headername, align 8
  %185 = call i32 @perror(i8* %184)
  %186 = call i32 @exit(i32 1) #3
  unreachable

187:                                              ; preds = %178
  %188 = load i32*, i32** %8, align 8
  %189 = load i32*, i32** %9, align 8
  %190 = call i32 @render(i32* %188, i32* %189)
  %191 = load i32*, i32** %8, align 8
  %192 = call i64 @fclose(i32* %191)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load i8*, i8** @outputname, align 8
  %196 = call i32 @perror(i8* %195)
  %197 = call i32 @exit(i32 1) #3
  unreachable

198:                                              ; preds = %187
  %199 = load i32*, i32** %9, align 8
  %200 = call i64 @fclose(i32* %199)
  %201 = icmp slt i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i8*, i8** @headername, align 8
  %204 = call i32 @perror(i8* %203)
  %205 = call i32 @exit(i32 1) #3
  unreachable

206:                                              ; preds = %198
  ret i32 0
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memmove(i8**, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @close(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @tokenise(i8*, i8*) #1

declare dso_local i32 @build_type_list(...) #1

declare dso_local i32 @parse(...) #1

declare dso_local i32 @dump_elements(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @render(i32*, i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
