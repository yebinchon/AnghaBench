; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/ec/extr_ec_access.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/ec/extr_ec_access.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"rs:b:w:v:h\00", align 1
@read_mode = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@sleep_time = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Bad sleep time: %s\0A\00", align 1
@read_byte_offset = common dso_local global i32 0, align 4
@write_byte_offset = common dso_local global i64 0, align 8
@write_value = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Unknown option!\0A\00", align 1
@EC_SPACE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"Wrong byte offset 0x%.2x, valid: [0-0x%.2x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Wrong byte offset 0x%.2x, valid:[0-0xff]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_opts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %93, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %94

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %85 [
    i32 114, label %13
    i32 115, label %23
    i32 98, label %49
    i32 119, label %62
    i32 118, label %75
    i32 104, label %79
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @read_mode, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 @usage(i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %13
  store i32 1, i32* @read_mode, align 4
  br label %93

23:                                               ; preds = %11
  %24 = load i32, i32* @read_mode, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* @read_mode, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8**, i8*** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @EXIT_FAILURE, align 4
  %34 = call i32 @usage(i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %26, %23
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i32 @atoi(i8* %36)
  store i32 %37, i32* @sleep_time, align 4
  %38 = load i32, i32* @sleep_time, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  store i32 0, i32* @sleep_time, align 4
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  %45 = call i32 @usage(i8* %43, i32 %44)
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %40, %35
  br label %93

49:                                               ; preds = %11
  %50 = load i32, i32* @read_mode, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @EXIT_FAILURE, align 4
  %57 = call i32 @usage(i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %49
  store i32 1, i32* @read_mode, align 4
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i8* @strtoul(i8* %59, i32* null, i32 16)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* @read_byte_offset, align 4
  br label %93

62:                                               ; preds = %11
  %63 = load i32, i32* @read_mode, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i8**, i8*** %4, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @EXIT_FAILURE, align 4
  %70 = call i32 @usage(i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %62
  store i32 0, i32* @read_mode, align 4
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i8* @strtoul(i8* %72, i32* null, i32 16)
  %74 = ptrtoint i8* %73 to i64
  store i64 %74, i64* @write_byte_offset, align 8
  br label %93

75:                                               ; preds = %11
  %76 = load i8*, i8** @optarg, align 8
  %77 = call i8* @strtoul(i8* %76, i32* null, i32 16)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* @write_value, align 4
  br label %93

79:                                               ; preds = %11
  %80 = load i8**, i8*** %4, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* @EXIT_SUCCESS, align 4
  %84 = call i32 @usage(i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %11, %79
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i8**, i8*** %4, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* @EXIT_FAILURE, align 4
  %92 = call i32 @usage(i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %85, %75, %71, %58, %48, %22
  br label %6

94:                                               ; preds = %6
  %95 = load i32, i32* @read_mode, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %131

97:                                               ; preds = %94
  %98 = load i64, i64* @write_byte_offset, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* @write_byte_offset, align 8
  %102 = load i64, i64* @EC_SPACE_SIZE, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %100, %97
  %105 = load i32, i32* @stderr, align 4
  %106 = load i64, i64* @write_byte_offset, align 8
  %107 = load i64, i64* @EC_SPACE_SIZE, align 8
  %108 = sub nsw i64 %107, 1
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %106, i64 %108)
  %110 = load i8**, i8*** %4, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* @EXIT_FAILURE, align 4
  %114 = call i32 @usage(i8* %112, i32 %113)
  br label %115

115:                                              ; preds = %104, %100
  %116 = load i32, i32* @write_value, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @write_value, align 4
  %120 = icmp sge i32 %119, 255
  br i1 %120, label %121, label %130

121:                                              ; preds = %118, %115
  %122 = load i32, i32* @stderr, align 4
  %123 = load i64, i64* @write_byte_offset, align 8
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %123)
  %125 = load i8**, i8*** %4, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* @EXIT_FAILURE, align 4
  %129 = call i32 @usage(i8* %127, i32 %128)
  br label %130

130:                                              ; preds = %121, %118
  br label %131

131:                                              ; preds = %130, %94
  %132 = load i32, i32* @read_mode, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %157

134:                                              ; preds = %131
  %135 = load i32, i32* @read_byte_offset, align 4
  %136 = icmp ne i32 %135, -1
  br i1 %136, label %137, label %157

137:                                              ; preds = %134
  %138 = load i32, i32* @read_byte_offset, align 4
  %139 = icmp slt i32 %138, -1
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* @read_byte_offset, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* @EC_SPACE_SIZE, align 8
  %144 = icmp sge i64 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %140, %137
  %146 = load i32, i32* @stderr, align 4
  %147 = load i32, i32* @read_byte_offset, align 4
  %148 = load i64, i64* @EC_SPACE_SIZE, align 8
  %149 = sub nsw i64 %148, 1
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %147, i64 %149)
  %151 = load i8**, i8*** %4, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* @EXIT_FAILURE, align 4
  %155 = call i32 @usage(i8* %153, i32 %154)
  br label %156

156:                                              ; preds = %145, %140
  br label %157

157:                                              ; preds = %156, %134, %131
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
