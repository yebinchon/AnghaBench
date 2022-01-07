; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_perf.c_show_proc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_perf.c_show_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.FTW = type { i32 }

@FTW_SKIP_SUBTREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@json_output = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*, i32, %struct.FTW*)* @show_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_proc(i8* %0, %struct.stat* %1, i32 %2, %struct.FTW* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.FTW*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca [4096 x i8], align 16
  store i8* %0, i8** %6, align 8
  store %struct.stat* %1, %struct.stat** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.FTW* %3, %struct.FTW** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 5
  store i8* %21, i8** %18, align 8
  %22 = load i8*, i8** %18, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %136

27:                                               ; preds = %4
  %28 = load i8*, i8** %18, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %18, align 8
  br label %30

30:                                               ; preds = %35, %27
  %31 = load i8*, i8** %18, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isdigit(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32, i32* %16, align 4
  %37 = mul nsw i32 %36, 10
  %38 = load i8*, i8** %18, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %37, %40
  %42 = sub nsw i32 %41, 48
  store i32 %42, i32* %16, align 4
  %43 = load i8*, i8** %18, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %18, align 8
  br label %30

45:                                               ; preds = %30
  %46 = load i8*, i8** %18, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %136

51:                                               ; preds = %45
  %52 = load i8*, i8** %18, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 47
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @FTW_SKIP_SUBTREE, align 4
  store i32 %57, i32* %5, align 4
  br label %136

58:                                               ; preds = %51
  %59 = load i8*, i8** %18, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %18, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @FTW_SKIP_SUBTREE, align 4
  store i32 %65, i32* %5, align 4
  br label %136

66:                                               ; preds = %58
  %67 = load i8*, i8** %18, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  store i8* %68, i8** %18, align 8
  %69 = load i8*, i8** %18, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %136

74:                                               ; preds = %66
  %75 = load i8*, i8** %18, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 47
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @FTW_SKIP_SUBTREE, align 4
  store i32 %80, i32* %5, align 4
  br label %136

81:                                               ; preds = %74
  %82 = load i8*, i8** %18, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %18, align 8
  br label %84

84:                                               ; preds = %89, %81
  %85 = load i8*, i8** %18, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @isdigit(i8 signext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i32, i32* %17, align 4
  %91 = mul nsw i32 %90, 10
  %92 = load i8*, i8** %18, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = add nsw i32 %91, %94
  %96 = sub nsw i32 %95, 48
  store i32 %96, i32* %17, align 4
  %97 = load i8*, i8** %18, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %18, align 8
  br label %84

99:                                               ; preds = %84
  %100 = load i8*, i8** %18, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @FTW_SKIP_SUBTREE, align 4
  store i32 %105, i32* %5, align 4
  br label %136

106:                                              ; preds = %99
  store i32 4096, i32* %12, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %17, align 4
  %109 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %110 = call i32 @bpf_task_fd_query(i32 %107, i32 %108, i32 0, i8* %109, i32* %12, i32* %13, i32* %14, i32* %10, i32* %11)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %136

114:                                              ; preds = %106
  %115 = load i64, i64* @json_output, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @print_perf_json(i32 %118, i32 %119, i32 %120, i32 %121, i8* %122, i32 %123, i32 %124)
  br label %135

126:                                              ; preds = %114
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @print_perf_plain(i32 %127, i32 %128, i32 %129, i32 %130, i8* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %126, %117
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %113, %104, %79, %73, %64, %56, %50, %26
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @bpf_task_fd_query(i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @print_perf_json(i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @print_perf_plain(i32, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
