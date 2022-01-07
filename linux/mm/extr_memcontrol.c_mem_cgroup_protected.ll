; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_protected.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_protected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i32 }

@MEMCG_PROT_NONE = common dso_local global i32 0, align 4
@root_mem_cgroup = common dso_local global %struct.mem_cgroup* null, align 8
@MEMCG_PROT_MIN = common dso_local global i32 0, align 4
@MEMCG_PROT_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_cgroup_protected(%struct.mem_cgroup* %0, %struct.mem_cgroup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca %struct.mem_cgroup*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %5, align 8
  %16 = call i64 (...) @mem_cgroup_disabled()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @MEMCG_PROT_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %160

20:                                               ; preds = %2
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %22 = icmp ne %struct.mem_cgroup* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  store %struct.mem_cgroup* %24, %struct.mem_cgroup** %4, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %27 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %28 = icmp eq %struct.mem_cgroup* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @MEMCG_PROT_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %160

31:                                               ; preds = %25
  %32 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %33 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %32, i32 0, i32 0
  %34 = call i64 @page_counter_read(%struct.TYPE_2__* %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @MEMCG_PROT_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %160

39:                                               ; preds = %31
  %40 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %41 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  %44 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %45 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  %48 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %49 = call %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup* %48)
  store %struct.mem_cgroup* %49, %struct.mem_cgroup** %6, align 8
  %50 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %51 = icmp ne %struct.mem_cgroup* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* @MEMCG_PROT_NONE, align 4
  store i32 %53, i32* %3, align 4
  br label %160

54:                                               ; preds = %39
  %55 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %56 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %57 = icmp eq %struct.mem_cgroup* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %138

59:                                               ; preds = %54
  %60 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %61 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @READ_ONCE(i64 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @min(i64 %65, i64 %66)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %59
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %76 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @min(i64 %74, i64 %78)
  store i64 %79, i64* %12, align 8
  %80 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %81 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  %83 = call i64 @atomic_long_read(i32* %82)
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %73
  %87 = load i64, i64* %13, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %12, align 8
  %93 = mul i64 %91, %92
  %94 = load i64, i64* %13, align 8
  %95 = udiv i64 %93, %94
  %96 = call i64 @min(i64 %90, i64 %95)
  store i64 %96, i64* %7, align 8
  br label %97

97:                                               ; preds = %89, %86, %73
  br label %98

98:                                               ; preds = %97, %70, %59
  %99 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %100 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @READ_ONCE(i64 %102)
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i64 @min(i64 %104, i64 %105)
  store i64 %106, i64* %9, align 8
  %107 = load i64, i64* %9, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %137

109:                                              ; preds = %98
  %110 = load i64, i64* %10, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %137

112:                                              ; preds = %109
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %115 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @min(i64 %113, i64 %117)
  store i64 %118, i64* %14, align 8
  %119 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %120 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 4
  %122 = call i64 @atomic_long_read(i32* %121)
  store i64 %122, i64* %15, align 8
  %123 = load i64, i64* %14, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %112
  %126 = load i64, i64* %15, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %14, align 8
  %132 = mul i64 %130, %131
  %133 = load i64, i64* %15, align 8
  %134 = udiv i64 %132, %133
  %135 = call i64 @min(i64 %129, i64 %134)
  store i64 %135, i64* %9, align 8
  br label %136

136:                                              ; preds = %128, %125, %112
  br label %137

137:                                              ; preds = %136, %109, %98
  br label %138

138:                                              ; preds = %137, %58
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %141 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  store i64 %139, i64* %142, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %145 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  store i64 %143, i64* %146, align 8
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %7, align 8
  %149 = icmp ule i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %138
  %151 = load i32, i32* @MEMCG_PROT_MIN, align 4
  store i32 %151, i32* %3, align 4
  br label %160

152:                                              ; preds = %138
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %9, align 8
  %155 = icmp ule i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* @MEMCG_PROT_LOW, align 4
  store i32 %157, i32* %3, align 4
  br label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @MEMCG_PROT_NONE, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %156, %150, %52, %37, %29, %18
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i64 @page_counter_read(%struct.TYPE_2__*) #1

declare dso_local %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup*) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @atomic_long_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
