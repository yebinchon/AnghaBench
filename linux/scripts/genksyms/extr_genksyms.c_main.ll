; ModuleID = '/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64, i8*, %struct.symbol*, i32, i64, i64 }
%struct.TYPE_2__ = type { i8 }

@.str = private unnamed_addr constant [15 x i8] c"s:dwqVDr:T:phR\00", align 1
@EOF = common dso_local global i32 0, align 4
@flag_debug = common dso_local global i32 0, align 4
@flag_warnings = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"genksyms version 2.5.60\0A\00", align 1
@stderr = common dso_local global i32* null, align 8
@flag_dump_defs = common dso_local global i32 0, align 4
@flag_reference = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@flag_dump_types = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@flag_preserve = common dso_local global i32 0, align 4
@flag_rel_crcs = common dso_local global i32 0, align 4
@yydebug = external dso_local global i32, align 4
@yy_flex_debug = external dso_local global i32, align 4
@debugfile = common dso_local global i32* null, align 8
@visited_symbols = common dso_local global %struct.symbol* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"override \00", align 1
@symbol_types = common dso_local global %struct.TYPE_2__* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Hash table occupancy %d/%d = %g\0A\00", align 1
@nsyms = common dso_local global i32 0, align 4
@HASH_BUCKETS = common dso_local global i32 0, align 4
@errors = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.symbol*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @EOF, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %10
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %49 [
    i32 100, label %18
    i32 119, label %21
    i32 113, label %22
    i32 86, label %23
    i32 68, label %26
    i32 114, label %27
    i32 84, label %36
    i32 112, label %45
    i32 104, label %46
    i32 82, label %48
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @flag_debug, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @flag_debug, align 4
  br label %51

21:                                               ; preds = %16
  store i32 1, i32* @flag_warnings, align 4
  br label %51

22:                                               ; preds = %16
  store i32 0, i32* @flag_warnings, align 4
  br label %51

23:                                               ; preds = %16
  %24 = load i32*, i32** @stderr, align 8
  %25 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  br label %51

26:                                               ; preds = %16
  store i32 1, i32* @flag_dump_defs, align 4
  br label %51

27:                                               ; preds = %16
  store i32 1, i32* @flag_reference, align 4
  %28 = load i32, i32* @optarg, align 4
  %29 = call i32* @fopen(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @optarg, align 4
  %34 = call i32 @perror(i32 %33)
  store i32 1, i32* %3, align 4
  br label %160

35:                                               ; preds = %27
  br label %51

36:                                               ; preds = %16
  store i32 1, i32* @flag_dump_types, align 4
  %37 = load i32, i32* @optarg, align 4
  %38 = call i32* @fopen(i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @optarg, align 4
  %43 = call i32 @perror(i32 %42)
  store i32 1, i32* %3, align 4
  br label %160

44:                                               ; preds = %36
  br label %51

45:                                               ; preds = %16
  store i32 1, i32* @flag_preserve, align 4
  br label %51

46:                                               ; preds = %16
  %47 = call i32 (...) @genksyms_usage()
  store i32 0, i32* %3, align 4
  br label %160

48:                                               ; preds = %16
  store i32 1, i32* @flag_rel_crcs, align 4
  br label %51

49:                                               ; preds = %16
  %50 = call i32 (...) @genksyms_usage()
  store i32 1, i32* %3, align 4
  br label %160

51:                                               ; preds = %48, %45, %44, %35, %26, %23, %22, %21, %18
  br label %10

52:                                               ; preds = %10
  %53 = load i32, i32* @flag_debug, align 4
  %54 = icmp sgt i32 %53, 1
  %55 = zext i1 %54 to i32
  store i32 %55, i32* @yydebug, align 4
  %56 = load i32, i32* @flag_debug, align 4
  %57 = icmp sgt i32 %56, 2
  %58 = zext i1 %57 to i32
  store i32 %58, i32* @yy_flex_debug, align 4
  %59 = load i32*, i32** @stderr, align 8
  store i32* %59, i32** @debugfile, align 8
  %60 = load i32, i32* @flag_reference, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @read_reference(i32* %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @fclose(i32* %65)
  br label %67

67:                                               ; preds = %62, %52
  %68 = call i32 (...) @yyparse()
  %69 = load i32, i32* @flag_dump_types, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %137

71:                                               ; preds = %67
  %72 = load %struct.symbol*, %struct.symbol** @visited_symbols, align 8
  %73 = icmp ne %struct.symbol* %72, null
  br i1 %73, label %74, label %137

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %123, %74
  %76 = load %struct.symbol*, %struct.symbol** @visited_symbols, align 8
  %77 = icmp ne %struct.symbol* %76, inttoptr (i64 -1 to %struct.symbol*)
  br i1 %77, label %78, label %136

78:                                               ; preds = %75
  %79 = load %struct.symbol*, %struct.symbol** @visited_symbols, align 8
  store %struct.symbol* %79, %struct.symbol** %9, align 8
  %80 = load %struct.symbol*, %struct.symbol** %9, align 8
  %81 = getelementptr inbounds %struct.symbol, %struct.symbol* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %85)
  br label %87

87:                                               ; preds = %84, %78
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symbol_types, align 8
  %89 = load %struct.symbol*, %struct.symbol** %9, align 8
  %90 = getelementptr inbounds %struct.symbol, %struct.symbol* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %87
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symbol_types, align 8
  %98 = load %struct.symbol*, %struct.symbol** %9, align 8
  %99 = getelementptr inbounds %struct.symbol, %struct.symbol* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i8, i8* %102, align 1
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @putc(i8 signext %103, i32* %104)
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @putc(i8 signext 35, i32* %106)
  br label %108

108:                                              ; preds = %96, %87
  %109 = load %struct.symbol*, %struct.symbol** %9, align 8
  %110 = getelementptr inbounds %struct.symbol, %struct.symbol* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @fputs(i8* %111, i32* %112)
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @putc(i8 signext 32, i32* %114)
  %116 = load %struct.symbol*, %struct.symbol** %9, align 8
  %117 = getelementptr inbounds %struct.symbol, %struct.symbol* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %108
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %121)
  br label %123

123:                                              ; preds = %120, %108
  %124 = load i32*, i32** %6, align 8
  %125 = load %struct.symbol*, %struct.symbol** %9, align 8
  %126 = getelementptr inbounds %struct.symbol, %struct.symbol* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @print_list(i32* %124, i32 %127)
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @putc(i8 signext 10, i32* %129)
  %131 = load %struct.symbol*, %struct.symbol** %9, align 8
  %132 = getelementptr inbounds %struct.symbol, %struct.symbol* %131, i32 0, i32 2
  %133 = load %struct.symbol*, %struct.symbol** %132, align 8
  store %struct.symbol* %133, %struct.symbol** @visited_symbols, align 8
  %134 = load %struct.symbol*, %struct.symbol** %9, align 8
  %135 = getelementptr inbounds %struct.symbol, %struct.symbol* %134, i32 0, i32 2
  store %struct.symbol* null, %struct.symbol** %135, align 8
  br label %75

136:                                              ; preds = %75
  br label %137

137:                                              ; preds = %136, %71, %67
  %138 = load i32, i32* @flag_debug, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load i32*, i32** @debugfile, align 8
  %142 = load i32, i32* @nsyms, align 4
  %143 = load i32, i32* @HASH_BUCKETS, align 4
  %144 = load i32, i32* @nsyms, align 4
  %145 = sitofp i32 %144 to double
  %146 = load i32, i32* @HASH_BUCKETS, align 4
  %147 = sitofp i32 %146 to double
  %148 = fdiv double %145, %147
  %149 = call i32 @fprintf(i32* %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %142, i32 %143, double %148)
  br label %150

150:                                              ; preds = %140, %137
  %151 = load i32*, i32** %6, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @fclose(i32* %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i64, i64* @errors, align 8
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %49, %46, %41, %32
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @perror(i32) #1

declare dso_local i32 @genksyms_usage(...) #1

declare dso_local i32 @read_reference(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @yyparse(...) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @print_list(i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
