; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_get_thread_siblings.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_get_thread_siblings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cpu_topology = type { i32, i32, i32, i32 }

@topo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [55 x i8] c"/sys/devices/system/cpu/cpu%d/topology/thread_siblings\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@BITMASK_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%lx%c\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: failed to parse file\00", align 1
@cpus = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_thread_siblings(%struct.cpu_topology* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpu_topology*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.cpu_topology* %0, %struct.cpu_topology** %3, align 8
  %15 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %16 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @topo, i32 0, i32 0), align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @topo, i32 0, i32 0), align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @CPU_ALLOC(i32 %21)
  %23 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %24 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %26 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  %32 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %33 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %36 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 -1, i32* %2, align 4
  br label %132

40:                                               ; preds = %34
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @topo, i32 0, i32 0), align 4
  %42 = add nsw i32 %41, 1
  %43 = call i64 @CPU_ALLOC_SIZE(i32 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %46 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CPU_ZERO_S(i64 %44, i32 %47)
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %53 = call i32* @fopen_or_die(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %53, i32** %6, align 8
  br label %54

54:                                               ; preds = %120, %40
  %55 = load i32, i32* @BITMASK_SIZE, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %12, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @fscanf(i32* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64* %7, i8* %5)
  %60 = icmp ne i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %63 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %54
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %116, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @BITMASK_SIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %119

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = lshr i64 %70, %72
  %74 = and i64 %73, 1
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %115

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @get_core_id(i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %84 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %76
  %88 = load i32, i32* %8, align 4
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %91 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @CPU_SET_S(i32 %88, i64 %89, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %87
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpus, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %97
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpus, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 %106, i32* %112, align 4
  br label %113

113:                                              ; preds = %105, %97, %87
  br label %114

114:                                              ; preds = %113, %76
  br label %115

115:                                              ; preds = %114, %69
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %65

119:                                              ; preds = %65
  br label %120

120:                                              ; preds = %119
  %121 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  br i1 %123, label %54, label %124

124:                                              ; preds = %120
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @fclose(i32* %125)
  %127 = load i64, i64* %13, align 8
  %128 = load %struct.cpu_topology*, %struct.cpu_topology** %3, align 8
  %129 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @CPU_COUNT_S(i64 %127, i32 %130)
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %124, %39
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @CPU_ALLOC(i32) #1

declare dso_local i64 @CPU_ALLOC_SIZE(i32) #1

declare dso_local i32 @CPU_ZERO_S(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @fopen_or_die(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i64*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @get_core_id(i32) #1

declare dso_local i32 @CPU_SET_S(i32, i64, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @CPU_COUNT_S(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
