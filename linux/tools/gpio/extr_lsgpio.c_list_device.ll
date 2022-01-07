; ModuleID = '/home/carl/AnghaBench/linux/tools/gpio/extr_lsgpio.c_list_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/gpio/extr_lsgpio.c_list_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiochip_info = type { i8*, i8*, i32, i32, i8*, i64 }
%struct.gpioline_info = type { i8*, i8*, i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Failed to open %s\0A\00", align 1
@GPIO_GET_CHIPINFO_IOCTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to issue CHIPINFO IOCTL\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"GPIO chip: %s, \22%s\22, %u GPIO lines\0A\00", align 1
@GPIO_GET_LINEINFO_IOCTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to issue LINEINFO IOCTL\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\09line %2d:\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" unnamed\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" unused\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Failed to close GPIO character device file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @list_device(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gpiochip_info, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gpioline_info, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @asprintf(i8** %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %127

17:                                               ; preds = %1
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @open(i8* %18, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @errno, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %117

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GPIO_GET_CHIPINFO_IOCTL, align 4
  %31 = bitcast %struct.gpiochip_info* %4 to %struct.gpioline_info*
  %32 = call i32 @ioctl(i32 %29, i32 %30, %struct.gpioline_info* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @errno, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  %38 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %117

39:                                               ; preds = %28
  %40 = load i32, i32* @stdout, align 4
  %41 = getelementptr inbounds %struct.gpiochip_info, %struct.gpiochip_info* %4, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.gpiochip_info, %struct.gpiochip_info* %4, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds %struct.gpiochip_info, %struct.gpiochip_info* %4, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %42, i8* %44, i32 %46)
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %113, %39
  %49 = load i32, i32* %8, align 4
  %50 = getelementptr inbounds %struct.gpiochip_info, %struct.gpiochip_info* %4, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %116

53:                                               ; preds = %48
  %54 = call i32 @memset(%struct.gpioline_info* %9, i32 0, i32 40)
  %55 = load i32, i32* %8, align 4
  %56 = getelementptr inbounds %struct.gpioline_info, %struct.gpioline_info* %9, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @GPIO_GET_LINEINFO_IOCTL, align 4
  %59 = call i32 @ioctl(i32 %57, i32 %58, %struct.gpioline_info* %9)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* @errno, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  %65 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %117

66:                                               ; preds = %53
  %67 = load i32, i32* @stdout, align 4
  %68 = getelementptr inbounds %struct.gpioline_info, %struct.gpioline_info* %9, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = getelementptr inbounds %struct.gpioline_info, %struct.gpioline_info* %9, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load i32, i32* @stdout, align 4
  %78 = getelementptr inbounds %struct.gpioline_info, %struct.gpioline_info* %9, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  br label %84

81:                                               ; preds = %66
  %82 = load i32, i32* @stdout, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  %85 = getelementptr inbounds %struct.gpioline_info, %struct.gpioline_info* %9, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i32, i32* @stdout, align 4
  %92 = getelementptr inbounds %struct.gpioline_info, %struct.gpioline_info* %9, i32 0, i32 4
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  br label %98

95:                                               ; preds = %84
  %96 = load i32, i32* @stdout, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %90
  %99 = getelementptr inbounds %struct.gpioline_info, %struct.gpioline_info* %9, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32, i32* @stdout, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %105 = getelementptr inbounds %struct.gpioline_info, %struct.gpioline_info* %9, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @print_flags(i64 %106)
  %108 = load i32, i32* @stdout, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %110

110:                                              ; preds = %102, %98
  %111 = load i32, i32* @stdout, align 4
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %48

116:                                              ; preds = %48
  br label %117

117:                                              ; preds = %116, %62, %35, %22
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @close(i32 %118)
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call i32 @perror(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %117
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %123, %14
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ioctl(i32, i32, %struct.gpioline_info*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.gpioline_info*, i32, i32) #1

declare dso_local i32 @print_flags(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
