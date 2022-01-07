; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_elf.c_elf_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_elf.c_elf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf = type { i32, i32, i32, i32 }

@EV_CURRENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"objtool: Can't open '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@ELF_C_READ_MMAP = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@ELF_C_RDWR = common dso_local global i32 0, align 4
@ELF_C_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"elf_begin\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"gelf_getehdr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.elf* @elf_read(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.elf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.elf*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @EV_CURRENT, align 4
  %9 = call i32 @elf_version(i32 %8)
  %10 = call %struct.elf* @malloc(i32 16)
  store %struct.elf* %10, %struct.elf** %6, align 8
  %11 = load %struct.elf*, %struct.elf** %6, align 8
  %12 = icmp ne %struct.elf* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.elf* null, %struct.elf** %3, align 8
  br label %99

15:                                               ; preds = %2
  %16 = load %struct.elf*, %struct.elf** %6, align 8
  %17 = call i32 @memset(%struct.elf* %16, i32 0, i32 16)
  %18 = load %struct.elf*, %struct.elf** %6, align 8
  %19 = getelementptr inbounds %struct.elf, %struct.elf* %18, i32 0, i32 3
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @open(i8* %21, i32 %22)
  %24 = load %struct.elf*, %struct.elf** %6, align 8
  %25 = getelementptr inbounds %struct.elf, %struct.elf* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.elf*, %struct.elf** %6, align 8
  %27 = getelementptr inbounds %struct.elf, %struct.elf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %15
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @errno, align 4
  %34 = call i8* @strerror(i32 %33)
  %35 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* %34)
  br label %96

36:                                               ; preds = %15
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @O_ACCMODE, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @O_RDONLY, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @ELF_C_READ_MMAP, align 4
  store i32 %43, i32* %7, align 4
  br label %55

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @O_ACCMODE, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @O_RDWR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @ELF_C_RDWR, align 4
  store i32 %51, i32* %7, align 4
  br label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @ELF_C_WRITE, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.elf*, %struct.elf** %6, align 8
  %57 = getelementptr inbounds %struct.elf, %struct.elf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @elf_begin(i32 %58, i32 %59, i32* null)
  %61 = load %struct.elf*, %struct.elf** %6, align 8
  %62 = getelementptr inbounds %struct.elf, %struct.elf* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.elf*, %struct.elf** %6, align 8
  %64 = getelementptr inbounds %struct.elf, %struct.elf* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %55
  %68 = call i32 @WARN_ELF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %96

69:                                               ; preds = %55
  %70 = load %struct.elf*, %struct.elf** %6, align 8
  %71 = getelementptr inbounds %struct.elf, %struct.elf* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.elf*, %struct.elf** %6, align 8
  %74 = getelementptr inbounds %struct.elf, %struct.elf* %73, i32 0, i32 1
  %75 = call i32 @gelf_getehdr(i32 %72, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %69
  %78 = call i32 @WARN_ELF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %96

79:                                               ; preds = %69
  %80 = load %struct.elf*, %struct.elf** %6, align 8
  %81 = call i64 @read_sections(%struct.elf* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %96

84:                                               ; preds = %79
  %85 = load %struct.elf*, %struct.elf** %6, align 8
  %86 = call i64 @read_symbols(%struct.elf* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %96

89:                                               ; preds = %84
  %90 = load %struct.elf*, %struct.elf** %6, align 8
  %91 = call i64 @read_relas(%struct.elf* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %96

94:                                               ; preds = %89
  %95 = load %struct.elf*, %struct.elf** %6, align 8
  store %struct.elf* %95, %struct.elf** %3, align 8
  br label %99

96:                                               ; preds = %93, %88, %83, %77, %67, %30
  %97 = load %struct.elf*, %struct.elf** %6, align 8
  %98 = call i32 @elf_close(%struct.elf* %97)
  store %struct.elf* null, %struct.elf** %3, align 8
  br label %99

99:                                               ; preds = %96, %94, %13
  %100 = load %struct.elf*, %struct.elf** %3, align 8
  ret %struct.elf* %100
}

declare dso_local i32 @elf_version(i32) #1

declare dso_local %struct.elf* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.elf*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @WARN_ELF(i8*) #1

declare dso_local i32 @gelf_getehdr(i32, i32*) #1

declare dso_local i64 @read_sections(%struct.elf*) #1

declare dso_local i64 @read_symbols(%struct.elf*) #1

declare dso_local i64 @read_relas(%struct.elf*) #1

declare dso_local i32 @elf_close(%struct.elf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
