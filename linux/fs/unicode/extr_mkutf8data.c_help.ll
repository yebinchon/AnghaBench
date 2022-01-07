; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_help.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@argv0 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"This program creates an a data trie used for parsing and\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"normalization of UTF-8 strings. The trie is derived from\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"a set of input files from the Unicode character database\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"found at: http://www.unicode.org/Public/UCD/latest/ucd/\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"The generated tree supports two normalization forms:\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\09nfdi:\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\09- Apply unicode normalization form NFD.\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"\09- Remove any Default_Ignorable_Code_Point.\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"\09nfdicf:\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"\09- Apply a full casefold (C + F).\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"These forms were chosen as being most useful when dealing\0A\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"with file names: NFD catches most cases where characters\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"should be considered equivalent. The ignorables are mostly\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"invisible, making names hard to type.\0A\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"The options to specify the files to be used are listed\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"below with their default values, which are the names used\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"by version 11.0.0 of the Unicode Character Database.\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"The input files:\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"\09-a %s\0A\00", align 1
@AGE_NAME = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"\09-c %s\0A\00", align 1
@CCC_NAME = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [8 x i8] c"\09-p %s\0A\00", align 1
@PROP_NAME = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [8 x i8] c"\09-d %s\0A\00", align 1
@DATA_NAME = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [8 x i8] c"\09-f %s\0A\00", align 1
@FOLD_NAME = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"\09-n %s\0A\00", align 1
@NORM_NAME = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [54 x i8] c"Additionally, the generated tables are tested using:\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"\09-t %s\0A\00", align 1
@TEST_NAME = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [27 x i8] c"Finally, the output file:\0A\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"\09-o %s\0A\00", align 1
@UTF8_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help() #0 {
  %1 = load i8*, i8** @argv0, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %30 = load i8*, i8** @AGE_NAME, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** @CCC_NAME, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** @PROP_NAME, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %34)
  %36 = load i8*, i8** @DATA_NAME, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** @FOLD_NAME, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** @NORM_NAME, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i64 0, i64 0))
  %44 = load i8*, i8** @TEST_NAME, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %44)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0))
  %48 = load i8*, i8** @UTF8_NAME, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
