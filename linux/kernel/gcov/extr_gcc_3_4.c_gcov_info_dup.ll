; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_gcc_3_4.c_gcov_info_dup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_gcc_3_4.c_gcov_info_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32, %struct.gcov_ctr_info*, i32, i32, i32, i32, i32 }
%struct.gcov_ctr_info = type { i32, i32, i32 }

@counts = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gcov_info* @gcov_info_dup(%struct.gcov_info* %0) #0 {
  %2 = alloca %struct.gcov_info*, align 8
  %3 = alloca %struct.gcov_info*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gcov_ctr_info*, align 8
  %8 = alloca i64, align 8
  store %struct.gcov_info* %0, %struct.gcov_info** %3, align 8
  %9 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %10 = call i32 @num_counter_active(%struct.gcov_info* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %12 = load i32, i32* @counts, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @struct_size(%struct.gcov_info* %11, i32 %12, i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.gcov_info* @kzalloc(i32 %14, i32 %15)
  store %struct.gcov_info* %16, %struct.gcov_info** %4, align 8
  %17 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %18 = icmp ne %struct.gcov_info* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.gcov_info* null, %struct.gcov_info** %2, align 8
  br label %150

20:                                               ; preds = %1
  %21 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %22 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %25 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %27 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %30 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %32 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %35 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %37 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %40 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %42 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32 @kstrdup(i32 %43, i32 %44)
  %46 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %47 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %49 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %20
  br label %147

53:                                               ; preds = %20
  %54 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %55 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %58 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %61 = call i32 @get_fn_size(%struct.gcov_info* %60)
  %62 = mul nsw i32 %59, %61
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32 @kmemdup(i32 %56, i32 %62, i32 %63)
  %65 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %66 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %68 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %53
  br label %147

72:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %142, %72
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %145

77:                                               ; preds = %73
  %78 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %79 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %78, i32 0, i32 1
  %80 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %80, i64 %82
  store %struct.gcov_ctr_info* %83, %struct.gcov_ctr_info** %7, align 8
  %84 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %7, align 8
  %85 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  store i64 %88, i64* %8, align 8
  %89 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %7, align 8
  %90 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %93 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %92, i32 0, i32 1
  %94 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %94, i64 %96
  %98 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %97, i32 0, i32 0
  store i32 %91, i32* %98, align 4
  %99 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %7, align 8
  %100 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %103 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %102, i32 0, i32 1
  %104 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %104, i64 %106
  %108 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %107, i32 0, i32 2
  store i32 %101, i32* %108, align 4
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @vmalloc(i64 %109)
  %111 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %112 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %111, i32 0, i32 1
  %113 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %113, i64 %115
  %117 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %116, i32 0, i32 1
  store i32 %110, i32* %117, align 4
  %118 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %119 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %118, i32 0, i32 1
  %120 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %120, i64 %122
  %124 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %77
  br label %147

128:                                              ; preds = %77
  %129 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %130 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %129, i32 0, i32 1
  %131 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %131, i64 %133
  %135 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %7, align 8
  %138 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @memcpy(i32 %136, i32 %139, i64 %140)
  br label %142

142:                                              ; preds = %128
  %143 = load i32, i32* %5, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %73

145:                                              ; preds = %73
  %146 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  store %struct.gcov_info* %146, %struct.gcov_info** %2, align 8
  br label %150

147:                                              ; preds = %127, %71, %52
  %148 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %149 = call i32 @gcov_info_free(%struct.gcov_info* %148)
  store %struct.gcov_info* null, %struct.gcov_info** %2, align 8
  br label %150

150:                                              ; preds = %147, %145, %19
  %151 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  ret %struct.gcov_info* %151
}

declare dso_local i32 @num_counter_active(%struct.gcov_info*) #1

declare dso_local %struct.gcov_info* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.gcov_info*, i32, i32) #1

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @kmemdup(i32, i32, i32) #1

declare dso_local i32 @get_fn_size(%struct.gcov_info*) #1

declare dso_local i32 @vmalloc(i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @gcov_info_free(%struct.gcov_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
