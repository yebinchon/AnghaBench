; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_create_trace_option_files.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_create_trace_option_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32, %struct.trace_options* }
%struct.trace_options = type { %struct.trace_option_dentry*, %struct.tracer* }
%struct.trace_option_dentry = type { i32* }
%struct.tracer = type { %struct.tracer_flags* }
%struct.tracer_flags = type { %struct.tracer_opt* }
%struct.tracer_opt = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to create trace option: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*, %struct.tracer*)* @create_trace_option_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_trace_option_files(%struct.trace_array* %0, %struct.tracer* %1) #0 {
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca %struct.tracer*, align 8
  %5 = alloca %struct.trace_option_dentry*, align 8
  %6 = alloca %struct.trace_options*, align 8
  %7 = alloca %struct.tracer_flags*, align 8
  %8 = alloca %struct.tracer_opt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %3, align 8
  store %struct.tracer* %1, %struct.tracer** %4, align 8
  %11 = load %struct.tracer*, %struct.tracer** %4, align 8
  %12 = icmp ne %struct.tracer* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %170

14:                                               ; preds = %2
  %15 = load %struct.tracer*, %struct.tracer** %4, align 8
  %16 = getelementptr inbounds %struct.tracer, %struct.tracer* %15, i32 0, i32 0
  %17 = load %struct.tracer_flags*, %struct.tracer_flags** %16, align 8
  store %struct.tracer_flags* %17, %struct.tracer_flags** %7, align 8
  %18 = load %struct.tracer_flags*, %struct.tracer_flags** %7, align 8
  %19 = icmp ne %struct.tracer_flags* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.tracer_flags*, %struct.tracer_flags** %7, align 8
  %22 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %21, i32 0, i32 0
  %23 = load %struct.tracer_opt*, %struct.tracer_opt** %22, align 8
  %24 = icmp ne %struct.tracer_opt* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %14
  br label %170

26:                                               ; preds = %20
  %27 = load %struct.tracer*, %struct.tracer** %4, align 8
  %28 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %29 = call i32 @trace_ok_for_array(%struct.tracer* %27, %struct.trace_array* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %170

32:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %59, %32
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %36 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %33
  %40 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %41 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %40, i32 0, i32 1
  %42 = load %struct.trace_options*, %struct.trace_options** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.trace_options, %struct.trace_options* %42, i64 %44
  %46 = getelementptr inbounds %struct.trace_options, %struct.trace_options* %45, i32 0, i32 1
  %47 = load %struct.tracer*, %struct.tracer** %46, align 8
  %48 = getelementptr inbounds %struct.tracer, %struct.tracer* %47, i32 0, i32 0
  %49 = load %struct.tracer_flags*, %struct.tracer_flags** %48, align 8
  %50 = load %struct.tracer*, %struct.tracer** %4, align 8
  %51 = getelementptr inbounds %struct.tracer, %struct.tracer* %50, i32 0, i32 0
  %52 = load %struct.tracer_flags*, %struct.tracer_flags** %51, align 8
  %53 = icmp eq %struct.tracer_flags* %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON_ONCE(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %39
  br label %170

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %33

62:                                               ; preds = %33
  %63 = load %struct.tracer_flags*, %struct.tracer_flags** %7, align 8
  %64 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %63, i32 0, i32 0
  %65 = load %struct.tracer_opt*, %struct.tracer_opt** %64, align 8
  store %struct.tracer_opt* %65, %struct.tracer_opt** %8, align 8
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %75, %62
  %67 = load %struct.tracer_opt*, %struct.tracer_opt** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %67, i64 %69
  %71 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %66

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.trace_option_dentry* @kcalloc(i32 %80, i32 8, i32 %81)
  store %struct.trace_option_dentry* %82, %struct.trace_option_dentry** %5, align 8
  %83 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %5, align 8
  %84 = icmp ne %struct.trace_option_dentry* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  br label %170

86:                                               ; preds = %78
  %87 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %88 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %87, i32 0, i32 1
  %89 = load %struct.trace_options*, %struct.trace_options** %88, align 8
  %90 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %91 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = mul i64 16, %94
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call %struct.trace_options* @krealloc(%struct.trace_options* %89, i32 %96, i32 %97)
  store %struct.trace_options* %98, %struct.trace_options** %6, align 8
  %99 = load %struct.trace_options*, %struct.trace_options** %6, align 8
  %100 = icmp ne %struct.trace_options* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %86
  %102 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %5, align 8
  %103 = call i32 @kfree(%struct.trace_option_dentry* %102)
  br label %170

104:                                              ; preds = %86
  %105 = load %struct.trace_options*, %struct.trace_options** %6, align 8
  %106 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %107 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %106, i32 0, i32 1
  store %struct.trace_options* %105, %struct.trace_options** %107, align 8
  %108 = load %struct.tracer*, %struct.tracer** %4, align 8
  %109 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %110 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %109, i32 0, i32 1
  %111 = load %struct.trace_options*, %struct.trace_options** %110, align 8
  %112 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %113 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.trace_options, %struct.trace_options* %111, i64 %115
  %117 = getelementptr inbounds %struct.trace_options, %struct.trace_options* %116, i32 0, i32 1
  store %struct.tracer* %108, %struct.tracer** %117, align 8
  %118 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %5, align 8
  %119 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %120 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %119, i32 0, i32 1
  %121 = load %struct.trace_options*, %struct.trace_options** %120, align 8
  %122 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %123 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.trace_options, %struct.trace_options* %121, i64 %125
  %127 = getelementptr inbounds %struct.trace_options, %struct.trace_options* %126, i32 0, i32 0
  store %struct.trace_option_dentry* %118, %struct.trace_option_dentry** %127, align 8
  %128 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %129 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %167, %104
  %133 = load %struct.tracer_opt*, %struct.tracer_opt** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %133, i64 %135
  %137 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %170

140:                                              ; preds = %132
  %141 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %142 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %5, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %142, i64 %144
  %146 = load %struct.tracer_flags*, %struct.tracer_flags** %7, align 8
  %147 = load %struct.tracer_opt*, %struct.tracer_opt** %8, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %147, i64 %149
  %151 = call i32 @create_trace_option_file(%struct.trace_array* %141, %struct.trace_option_dentry* %145, %struct.tracer_flags* %146, %struct.tracer_opt* %150)
  %152 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** %5, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %152, i64 %154
  %156 = getelementptr inbounds %struct.trace_option_dentry, %struct.trace_option_dentry* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  %159 = zext i1 %158 to i32
  %160 = load %struct.tracer_opt*, %struct.tracer_opt** %8, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %160, i64 %162
  %164 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @WARN_ONCE(i32 %159, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %165)
  br label %167

167:                                              ; preds = %140
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %132

170:                                              ; preds = %13, %25, %31, %57, %85, %101, %132
  ret void
}

declare dso_local i32 @trace_ok_for_array(%struct.tracer*, %struct.trace_array*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.trace_option_dentry* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.trace_options* @krealloc(%struct.trace_options*, i32, i32) #1

declare dso_local i32 @kfree(%struct.trace_option_dentry*) #1

declare dso_local i32 @create_trace_option_file(%struct.trace_array*, %struct.trace_option_dentry*, %struct.tracer_flags*, %struct.tracer_opt*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
