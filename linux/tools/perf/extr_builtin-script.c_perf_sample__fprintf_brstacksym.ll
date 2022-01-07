; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_brstacksym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_brstacksym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32, %struct.branch_stack* }
%struct.branch_stack = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.thread = type { i32 }
%struct.perf_event_attr = type { i32 }
%struct.addr_location = type { i32, i32 }

@DSO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/%c/%c/%c/%d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*, %struct.thread*, %struct.perf_event_attr*, i32*)* @perf_sample__fprintf_brstacksym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sample__fprintf_brstacksym(%struct.perf_sample* %0, %struct.thread* %1, %struct.perf_event_attr* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.perf_event_attr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.branch_stack*, align 8
  %11 = alloca %struct.addr_location, align 4
  %12 = alloca %struct.addr_location, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.perf_sample* %0, %struct.perf_sample** %6, align 8
  store %struct.thread* %1, %struct.thread** %7, align 8
  store %struct.perf_event_attr* %2, %struct.perf_event_attr** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %18 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %17, i32 0, i32 1
  %19 = load %struct.branch_stack*, %struct.branch_stack** %18, align 8
  store %struct.branch_stack* %19, %struct.branch_stack** %10, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.branch_stack*, %struct.branch_stack** %10, align 8
  %21 = icmp ne %struct.branch_stack* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.branch_stack*, %struct.branch_stack** %10, align 8
  %24 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %4
  store i32 0, i32* %5, align 4
  br label %183

28:                                               ; preds = %22
  store i64 0, i64* %13, align 8
  br label %29

29:                                               ; preds = %178, %28
  %30 = load i64, i64* %13, align 8
  %31 = load %struct.branch_stack*, %struct.branch_stack** %10, align 8
  %32 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %181

35:                                               ; preds = %29
  %36 = call i32 @memset(%struct.addr_location* %11, i32 0, i32 8)
  %37 = call i32 @memset(%struct.addr_location* %12, i32 0, i32 8)
  %38 = load %struct.branch_stack*, %struct.branch_stack** %10, align 8
  %39 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %14, align 8
  %45 = load %struct.branch_stack*, %struct.branch_stack** %10, align 8
  %46 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %15, align 8
  %52 = load %struct.thread*, %struct.thread** %7, align 8
  %53 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %54 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @thread__find_symbol_fb(%struct.thread* %52, i32 %55, i64 %56, %struct.addr_location* %11)
  %58 = load %struct.thread*, %struct.thread** %7, align 8
  %59 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %60 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @thread__find_symbol_fb(%struct.thread* %58, i32 %61, i64 %62, %struct.addr_location* %12)
  %64 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %11, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i64 @symbol__fprintf_symname_offs(i32 %65, %struct.addr_location* %11, i32* %66)
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* @DSO, align 4
  %73 = call i64 @PRINT_FIELD(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %35
  %76 = load i32*, i32** %9, align 8
  %77 = call i64 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %16, align 4
  %82 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %11, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @map__fprintf_dsoname(i32 %83, i32* %84)
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %16, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %75, %35
  %97 = load i32*, i32** %9, align 8
  %98 = call i64 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 47)
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %16, align 4
  %103 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %12, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = call i64 @symbol__fprintf_symname_offs(i32 %104, %struct.addr_location* %12, i32* %105)
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* @DSO, align 4
  %112 = call i64 @PRINT_FIELD(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %96
  %115 = load i32*, i32** %9, align 8
  %116 = call i64 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %16, align 4
  %121 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %12, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = call i64 @map__fprintf_dsoname(i32 %122, i32* %123)
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %16, align 4
  %129 = load i32*, i32** %9, align 8
  %130 = call i64 (i32*, i8*, ...) @fprintf(i32* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %16, align 4
  br label %135

135:                                              ; preds = %114, %96
  %136 = load i32*, i32** %9, align 8
  %137 = load %struct.branch_stack*, %struct.branch_stack** %10, align 8
  %138 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i64, i64* %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %140
  %142 = call i32 @mispred_str(%struct.TYPE_4__* %141)
  %143 = load %struct.branch_stack*, %struct.branch_stack** %10, align 8
  %144 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i64, i64* %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 88, i32 45
  %154 = load %struct.branch_stack*, %struct.branch_stack** %10, align 8
  %155 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %154, i32 0, i32 1
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i64, i64* %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 65, i32 45
  %165 = load %struct.branch_stack*, %struct.branch_stack** %10, align 8
  %166 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i64, i64* %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i64 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %142, i32 %153, i32 %164, i32 %172)
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %16, align 4
  br label %178

178:                                              ; preds = %135
  %179 = load i64, i64* %13, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %13, align 8
  br label %29

181:                                              ; preds = %29
  %182 = load i32, i32* %16, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %181, %27
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @memset(%struct.addr_location*, i32, i32) #1

declare dso_local i32 @thread__find_symbol_fb(%struct.thread*, i32, i64, %struct.addr_location*) #1

declare dso_local i64 @symbol__fprintf_symname_offs(i32, %struct.addr_location*, i32*) #1

declare dso_local i64 @PRINT_FIELD(i32) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @map__fprintf_dsoname(i32, i32*) #1

declare dso_local i32 @mispred_str(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
