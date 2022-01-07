; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_libbpf_num_possible_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_libbpf_num_possible_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libbpf_num_possible_cpus.fcpu = internal global i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [33 x i8] c"/sys/devices/system/cpu/possible\00", align 1
@libbpf_num_possible_cpus.cpus = internal global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to open file %s: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to read # of possible cpus from %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"File %s size overflow\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%u-%u\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to get # CPUs from %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Invalid #CPUs %d from %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libbpf_num_possible_cpus() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* @libbpf_num_possible_cpus.cpus, align 4
  %13 = call i32 @READ_ONCE(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %1, align 4
  br label %136

18:                                               ; preds = %0
  %19 = load i8*, i8** @libbpf_num_possible_cpus.fcpu, align 8
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call i32 @open(i8* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32, i32* @errno, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i8*, i8** @libbpf_num_possible_cpus.fcpu, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %1, align 4
  br label %136

32:                                               ; preds = %18
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %35 = call i32 @read(i32 %33, i8* %34, i32 128)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @close(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %32
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @errno, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %10, align 4
  %49 = load i8*, i8** @libbpf_num_possible_cpus.fcpu, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %49, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %1, align 4
  br label %136

55:                                               ; preds = %32
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %57, 128
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8*, i8** @libbpf_num_possible_cpus.fcpu, align 8
  %61 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* @EOVERFLOW, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %1, align 4
  br label %136

64:                                               ; preds = %55
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %66
  store i8 0, i8* %67, align 1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %119, %64
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %2, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %122

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 44
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %118

86:                                               ; preds = %79, %72
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %91
  %93 = call i32 @sscanf(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %6, i32* %7)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %86
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %98
  %100 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %1, align 4
  br label %136

103:                                              ; preds = %86
  %104 = load i32, i32* %3, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %103
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %6, align 4
  %112 = sub i32 %110, %111
  %113 = add i32 %112, 1
  %114 = load i32, i32* %8, align 4
  %115 = add i32 %114, %113
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %109, %79
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %68

122:                                              ; preds = %68
  %123 = load i32, i32* %8, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* %8, align 4
  %127 = load i8*, i8** @libbpf_num_possible_cpus.fcpu, align 8
  %128 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %126, i8* %127)
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %1, align 4
  br label %136

131:                                              ; preds = %122
  %132 = load i32, i32* @libbpf_num_possible_cpus.cpus, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @WRITE_ONCE(i32 %132, i32 %133)
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %1, align 4
  br label %136

136:                                              ; preds = %131, %125, %96, %59, %47, %24, %16
  %137 = load i32, i32* %1, align 4
  ret i32 %137
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
