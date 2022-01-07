; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpupower.c_get_cpu_topology.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpupower.c_get_cpu_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpupower_topology = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@_SC_NPROCESSORS_CONF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"physical_package_id\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"core_id\00", align 1
@__compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_cpu_topology(%struct.cpupower_topology* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpupower_topology*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpupower_topology* %0, %struct.cpupower_topology** %3, align 8
  %7 = load i32, i32* @_SC_NPROCESSORS_CONF, align 4
  %8 = call i32 @sysconf(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = call %struct.TYPE_3__* @malloc(i32 %12)
  %14 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %15 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %14, i32 0, i32 1
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %15, align 8
  %16 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %17 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp eq %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %175

23:                                               ; preds = %1
  %24 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %25 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %27 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %102, %23
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %105

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %35 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %33, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @cpupower_is_cpu_online(i32 %41)
  %43 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %44 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 %42, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %52 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i64 @sysfs_topology_read_file(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %32
  %61 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %62 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 -1, i32* %67, align 4
  %68 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %69 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i32 -1, i32* %74, align 4
  br label %102

75:                                               ; preds = %32
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %78 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = call i64 @sysfs_topology_read_file(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %75
  %87 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %88 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 -1, i32* %93, align 4
  %94 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %95 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  store i32 -1, i32* %100, align 4
  br label %102

101:                                              ; preds = %75
  br label %102

102:                                              ; preds = %101, %86, %60
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %28

105:                                              ; preds = %28
  %106 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %107 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @__compare, align 4
  %111 = call i32 @qsort(%struct.TYPE_3__* %108, i32 %109, i32 4, i32 %110)
  %112 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %113 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %118

118:                                              ; preds = %157, %105
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %160

122:                                              ; preds = %118
  %123 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %124 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %123, i32 0, i32 1
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %156

133:                                              ; preds = %122
  %134 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %135 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %134, i32 0, i32 1
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, -1
  br i1 %142, label %143, label %156

143:                                              ; preds = %133
  %144 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %145 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %144, i32 0, i32 1
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %5, align 4
  %152 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %153 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %153, align 8
  br label %156

156:                                              ; preds = %143, %133, %122
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %118

160:                                              ; preds = %118
  %161 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %162 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %161, i32 0, i32 1
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %173, label %168

168:                                              ; preds = %160
  %169 = load %struct.cpupower_topology*, %struct.cpupower_topology** %3, align 8
  %170 = getelementptr inbounds %struct.cpupower_topology, %struct.cpupower_topology* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %168, %160
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %173, %20
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local %struct.TYPE_3__* @malloc(i32) #1

declare dso_local i32 @cpupower_is_cpu_online(i32) #1

declare dso_local i64 @sysfs_topology_read_file(i32, i8*, i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
