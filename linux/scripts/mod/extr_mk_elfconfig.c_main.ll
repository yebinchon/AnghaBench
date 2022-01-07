; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_mk_elfconfig.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_mk_elfconfig.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i16 }

@EI_NIDENT = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error: input truncated\0A\00", align 1
@ELFMAG = common dso_local global i8* null, align 8
@SELFMAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Error: not ELF\0A\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"#define KERNEL_ELFCLASS ELFCLASS32\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"#define KERNEL_ELFCLASS ELFCLASS64\0A\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"#define KERNEL_ELFDATA ELFDATA2LSB\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"#define KERNEL_ELFDATA ELFDATA2MSB\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"#define HOST_ELFCLASS ELFCLASS64\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\01\02\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"#define HOST_ELFDATA ELFDATA2MSB\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\02\01\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"#define HOST_ELFDATA ELFDATA2LSB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.anon, align 2
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @EI_NIDENT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @EI_NIDENT, align 4
  %15 = load i32, i32* @stdin, align 4
  %16 = call i32 @fread(i8* %13, i32 1, i32 %14, i32 %15)
  %17 = load i32, i32* @EI_NIDENT, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %72

22:                                               ; preds = %2
  %23 = load i8*, i8** @ELFMAG, align 8
  %24 = load i32, i32* @SELFMAG, align 4
  %25 = call i64 @memcmp(i8* %13, i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %72

30:                                               ; preds = %22
  %31 = load i64, i64* @EI_CLASS, align 8
  %32 = getelementptr inbounds i8, i8* %13, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  switch i32 %34, label %39 [
    i32 131, label %35
    i32 130, label %37
  ]

35:                                               ; preds = %30
  %36 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %41

37:                                               ; preds = %30
  %38 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %41

39:                                               ; preds = %30
  %40 = call i32 @exit(i32 1) #4
  unreachable

41:                                               ; preds = %37, %35
  %42 = load i64, i64* @EI_DATA, align 8
  %43 = getelementptr inbounds i8, i8* %13, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  switch i32 %45, label %50 [
    i32 129, label %46
    i32 128, label %48
  ]

46:                                               ; preds = %41
  %47 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %52

48:                                               ; preds = %41
  %49 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %52

50:                                               ; preds = %41
  %51 = call i32 @exit(i32 1) #4
  unreachable

52:                                               ; preds = %48, %46
  %53 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %54 = bitcast %union.anon* %8 to i16*
  store i16 258, i16* %54, align 2
  %55 = bitcast %union.anon* %8 to [2 x i8]*
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %55, i64 0, i64 0
  %57 = call i64 @memcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %71

61:                                               ; preds = %52
  %62 = bitcast %union.anon* %8 to [2 x i8]*
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %62, i64 0, i64 0
  %64 = call i64 @memcmp(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 2)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %70

68:                                               ; preds = %61
  %69 = call i32 @exit(i32 1) #4
  unreachable

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %59
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %27, %19
  %73 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
