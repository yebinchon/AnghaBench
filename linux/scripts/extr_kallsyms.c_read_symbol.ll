; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_read_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_read_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_entry = type { i8*, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"%llx %c %499s\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Read error or end of file.\0A\00", align 1
@KSYM_NAME_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [106 x i8] c"Symbol %s too long for kallsyms (%zu >= %d).\0APlease increase KSYM_NAME_LEN both in kernel and kallsyms.c\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"_text\00", align 1
@_text = common dso_local global i32 0, align 4
@text_ranges = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"__kernel_syscall_via_break\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"__kernel_syscall_via_epc\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"__kernel_sigtramp\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"__gp\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c".LASANPC\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"kallsyms failure: unable to allocate required amount of memory\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@percpu_range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sym_entry*)* @read_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_symbol(i32* %0, %struct.sym_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sym_entry*, align 8
  %6 = alloca [500 x i8], align 16
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.sym_entry* %1, %struct.sym_entry** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %11 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %10, i32 0, i32 1
  %12 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %13 = call i32 @fscanf(i32* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %11, i8* %7, i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @EOF, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @fgets(i8* %21, i32 500, i32* %22)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %20, %16
  store i32 -1, i32* %3, align 4
  br label %160

29:                                               ; preds = %2
  %30 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %31 = call i64 @strlen(i8* %30)
  %32 = load i64, i64* @KSYM_NAME_LEN, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %37 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %38 = call i64 @strlen(i8* %37)
  %39 = load i64, i64* @KSYM_NAME_LEN, align 8
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i8* %36, i64 %38, i64 %39)
  store i32 -1, i32* %3, align 4
  br label %160

41:                                               ; preds = %29
  %42 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %47 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* @_text, align 4
  br label %119

49:                                               ; preds = %41
  %50 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %51 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %52 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** @text_ranges, align 8
  %55 = load i32*, i32** @text_ranges, align 8
  %56 = call i32 @ARRAY_SIZE(i32* %55)
  %57 = call i64 @check_symbol_range(i8* %50, i32 %53, i32* %54, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %118

60:                                               ; preds = %49
  %61 = load i8, i8* %7, align 1
  %62 = call zeroext i8 @toupper(i8 signext %61)
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 65
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 -1, i32* %3, align 4
  br label %160

82:                                               ; preds = %77, %73, %69, %65
  br label %117

83:                                               ; preds = %60
  %84 = load i8, i8* %7, align 1
  %85 = call zeroext i8 @toupper(i8 signext %84)
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 85
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %90 = call i64 @is_arm_mapping_symbol(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %83
  store i32 -1, i32* %3, align 4
  br label %160

93:                                               ; preds = %88
  %94 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %95 = load i8, i8* %94, align 16
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 36
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 -1, i32* %3, align 4
  br label %160

99:                                               ; preds = %93
  %100 = load i8, i8* %7, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 78
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i8, i8* %7, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 110
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %99
  store i32 -1, i32* %3, align 4
  br label %160

108:                                              ; preds = %103
  %109 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %110 = call i32 @strncmp(i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  store i32 -1, i32* %3, align 4
  br label %160

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116, %82
  br label %118

118:                                              ; preds = %117, %59
  br label %119

119:                                              ; preds = %118, %45
  %120 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %121 = call i64 @strlen(i8* %120)
  %122 = add nsw i64 %121, 1
  %123 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %124 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  %125 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %126 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  %129 = call i8* @malloc(i64 %128)
  %130 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %131 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  %132 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %133 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %119
  %137 = load i32, i32* @stderr, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0))
  %139 = load i32, i32* @EXIT_FAILURE, align 4
  %140 = call i32 @exit(i32 %139) #3
  unreachable

141:                                              ; preds = %119
  %142 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %143 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %147 = call i32 @strcpy(i8* %145, i8* %146)
  %148 = load i8, i8* %7, align 1
  %149 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %150 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  store i8 %148, i8* %152, align 1
  %153 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %154 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %156 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %157 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @check_symbol_range(i8* %155, i32 %158, i32* @percpu_range, i32 1)
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %141, %112, %107, %98, %92, %81, %34, %28
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @fscanf(i32*, i8*, i32*, i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @check_symbol_range(i8*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local zeroext i8 @toupper(i8 signext) #1

declare dso_local i64 @is_arm_mapping_symbol(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
