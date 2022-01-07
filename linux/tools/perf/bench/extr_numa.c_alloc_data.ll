; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_alloc_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_alloc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@HPSIZE = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MADV_HUGEPAGE = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [98 x i8] c"WARNING: Could not enable THP - do: 'echo madvise > /sys/kernel/mm/transparent_hugepage/enabled'\0A\00", align 1
@MADV_NOHUGEPAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"WARNING: Could not disable THP: run a CONFIG_TRANSPARENT_HUGEPAGE kernel?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32, i32, i32, i32)* @alloc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_data(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i8* null, i8** %7, align 8
  br label %148

25:                                               ; preds = %6
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = call i32 @numa_node_of_cpu(i32 0)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = call i32 @bind_to_node(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %18, align 4
  %33 = call i32 @bind_to_memnode(i32 %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @HPSIZE, align 8
  %38 = add i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @PROT_READ, align 4
  %42 = load i32, i32* @PROT_WRITE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MAP_ANON, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @mmap(i32 0, i32 %40, i32 %43, i32 %46, i32 -1, i32 0)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %16, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = icmp eq i8* %49, inttoptr (i64 -1 to i8*)
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MAP_PRIVATE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %34
  %57 = load i32, i32* %12, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i8*, i8** %16, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @MADV_HUGEPAGE, align 4
  %63 = call i32 @madvise(i8* %60, i32 %61, i32 %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = call i32 @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %66, %59
  br label %76

76:                                               ; preds = %75, %56
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load i8*, i8** %16, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @MADV_NOHUGEPAGE, align 4
  %83 = call i32 @madvise(i8* %80, i32 %81, i32 %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  %94 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %86, %79
  br label %96

96:                                               ; preds = %95, %76
  br label %97

97:                                               ; preds = %96, %34
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i8*, i8** %16, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @bzero(i8* %101, i32 %102)
  br label %129

104:                                              ; preds = %97
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %104
  %108 = load i8*, i8** %16, align 8
  %109 = bitcast i8* %108 to i64*
  store i64* %109, i64** %19, align 8
  %110 = call i64 (...) @rand()
  store i64 %110, i64* %20, align 8
  store i64 0, i64* %21, align 8
  br label %111

111:                                              ; preds = %124, %107
  %112 = load i64, i64* %21, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sdiv i32 %113, 8
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load i64, i64* %21, align 8
  %119 = load i64, i64* %20, align 8
  %120 = add nsw i64 %118, %119
  %121 = load i64*, i64** %19, align 8
  %122 = load i64, i64* %21, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  store i64 %120, i64* %123, align 8
  br label %124

124:                                              ; preds = %117
  %125 = load i64, i64* %21, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %21, align 8
  br label %111

127:                                              ; preds = %111
  br label %128

128:                                              ; preds = %127, %104
  br label %129

129:                                              ; preds = %128, %100
  %130 = load i8*, i8** %16, align 8
  %131 = ptrtoint i8* %130 to i64
  %132 = load i64, i64* @HPSIZE, align 8
  %133 = add i64 %131, %132
  %134 = sub i64 %133, 1
  %135 = load i64, i64* @HPSIZE, align 8
  %136 = sub i64 %135, 1
  %137 = xor i64 %136, -1
  %138 = and i64 %134, %137
  %139 = inttoptr i64 %138 to i8*
  store i8* %139, i8** %16, align 8
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %129
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @bind_to_cpumask(i32 %143)
  %145 = call i32 (...) @mempol_restore()
  br label %146

146:                                              ; preds = %142, %129
  %147 = load i8*, i8** %16, align 8
  store i8* %147, i8** %7, align 8
  br label %148

148:                                              ; preds = %146, %24
  %149 = load i8*, i8** %7, align 8
  ret i8* %149
}

declare dso_local i32 @numa_node_of_cpu(i32) #1

declare dso_local i32 @bind_to_node(i32) #1

declare dso_local i32 @bind_to_memnode(i32) #1

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @madvise(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @bind_to_cpumask(i32) #1

declare dso_local i32 @mempol_restore(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
