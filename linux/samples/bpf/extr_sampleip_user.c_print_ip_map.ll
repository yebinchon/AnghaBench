; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_sampleip_user.c_print_ip_map.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_sampleip_user.c_print_ip_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.ksym = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%-19s %-32s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ADDR\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"KSYM\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"COUNT\00", align 1
@counts = common dso_local global %struct.TYPE_3__* null, align 8
@count_cmp = common dso_local global i32 0, align 4
@PAGE_OFFSET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"ksym not found. Is kallsyms loaded?\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"0x%-17llx %-32s %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(user)\00", align 1
@MAX_IPS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"WARNING: IP hash was full (max %d entries); \00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"may have dropped samples\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_ip_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ip_map(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ksym*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %14, %1
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @bpf_map_get_next_key(i32 %11, i64* %4, i64* %5)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @bpf_map_lookup_elem(i32 %15, i64* %5, i32* %6)
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @counts, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i64 %17, i64* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @counts, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %23, i32* %29, align 8
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %4, align 8
  br label %10

31:                                               ; preds = %10
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @counts, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @count_cmp, align 4
  %36 = call i32 @qsort(%struct.TYPE_3__* %33, i32 %34, i32 4, i32 %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %94, %31
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %97

41:                                               ; preds = %37
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @counts, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PAGE_OFFSET, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %41
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @counts, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call %struct.ksym* @ksym_search(i64 %56)
  store %struct.ksym* %57, %struct.ksym** %3, align 8
  %58 = load %struct.ksym*, %struct.ksym** %3, align 8
  %59 = icmp ne %struct.ksym* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %50
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %94

62:                                               ; preds = %50
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @counts, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ksym*, %struct.ksym** %3, align 8
  %70 = getelementptr inbounds %struct.ksym, %struct.ksym* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @counts, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %68, i32 %71, i32 %77)
  br label %93

79:                                               ; preds = %41
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @counts, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @counts, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %79, %62
  br label %94

94:                                               ; preds = %93, %60
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %37

97:                                               ; preds = %37
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @MAX_IPS, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %105

105:                                              ; preds = %101, %97
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @bpf_map_get_next_key(i32, i64*, i64*) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i64*, i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local %struct.ksym* @ksym_search(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
