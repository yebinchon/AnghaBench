; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_print_entry_plain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_print_entry_plain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"key:%c\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"value:%c\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"key:\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"value (CPU %02d):%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_map_info*, i8*, i8*)* @print_entry_plain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_entry_plain(%struct.bpf_map_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.bpf_map_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bpf_map_info* %0, %struct.bpf_map_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @map_is_per_cpu(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %85, label %17

17:                                               ; preds = %3
  %18 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %19 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 16
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %24 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 16
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %31 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %34 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = icmp sle i32 %36, 24
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %27
  %43 = phi i1 [ false, %27 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %46 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 10, i32 32
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @stdout, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %58 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fprint_hex(i32 %55, i8* %56, i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %65 = call i32 (i8*, ...) @printf(i8* %64)
  br label %66

66:                                               ; preds = %49, %42
  %67 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %68 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 10, i32 32
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @stdout, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %80 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @fprint_hex(i32 %77, i8* %78, i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %71, %66
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %140

85:                                               ; preds = %3
  %86 = call i32 (...) @get_possible_cpus()
  store i32 %86, i32* %10, align 4
  %87 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %88 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @round_up(i32 %89, i32 8)
  store i32 %90, i32* %11, align 4
  %91 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %92 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %85
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* @stdout, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %100 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @fprint_hex(i32 %97, i8* %98, i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %95, %85
  %105 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %106 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %135, %109
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %110
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %117 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 16
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 10, i32 32
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %115, i32 %121)
  %123 = load i32, i32* @stdout, align 4
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %11, align 4
  %127 = mul i32 %125, %126
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  %130 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %131 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @fprint_hex(i32 %123, i8* %129, i32 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %114
  %136 = load i32, i32* %9, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %110

138:                                              ; preds = %110
  br label %139

139:                                              ; preds = %138, %104
  br label %140

140:                                              ; preds = %139, %83
  ret void
}

declare dso_local i32 @map_is_per_cpu(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fprint_hex(i32, i8*, i32, i8*) #1

declare dso_local i32 @get_possible_cpus(...) #1

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
