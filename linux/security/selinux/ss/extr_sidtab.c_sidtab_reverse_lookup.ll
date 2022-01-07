; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_reverse_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_reverse_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidtab = type { i64, i32, %struct.sidtab_convert_params*, i32* }
%struct.sidtab_convert_params = type { i32 (%struct.context*, %struct.context*, i32)*, %struct.sidtab*, i32 }
%struct.context = type opaque
%struct.context.0 = type { i32, i64 }

@EOVERFLOW = common dso_local global i32 0, align 4
@SIDTAB_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"SELinux:  Context %s is not valid (left unmapped).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sidtab*, %struct.context.0*, i64*)* @sidtab_reverse_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sidtab_reverse_lookup(%struct.sidtab* %0, %struct.context.0* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sidtab*, align 8
  %6 = alloca %struct.context.0*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sidtab_convert_params*, align 8
  %14 = alloca %struct.context.0*, align 8
  %15 = alloca %struct.context.0*, align 8
  %16 = alloca i32, align 4
  store %struct.sidtab* %0, %struct.sidtab** %5, align 8
  store %struct.context.0* %1, %struct.context.0** %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %18 = load %struct.context.0*, %struct.context.0** %6, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = call i32 @sidtab_rcache_search(%struct.sidtab* %17, %struct.context.0* %18, i64* %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %171

24:                                               ; preds = %3
  %25 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %26 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %25, i32 0, i32 0
  %27 = call i64 @smp_load_acquire(i64* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @sidtab_level_from_count(i64 %28)
  store i64 %29, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %30 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %31 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.context.0*, %struct.context.0** %6, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = call i32 @sidtab_find_context(i32 %35, i64* %12, i64 %36, i64 %37, %struct.context.0* %38, i64* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %24
  %44 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @sidtab_rcache_push(%struct.sidtab* %44, i64 %46)
  store i32 0, i32* %4, align 4
  br label %171

48:                                               ; preds = %24
  %49 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %50 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %49, i32 0, i32 1
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %54 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %53, i32 0, i32 2
  %55 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %54, align 8
  store %struct.sidtab_convert_params* %55, %struct.sidtab_convert_params** %13, align 8
  %56 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %57 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @sidtab_level_from_count(i64 %59)
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %78, %48
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call %struct.context.0* @sidtab_do_lookup(%struct.sidtab* %66, i64 %67, i32 0)
  %69 = load %struct.context.0*, %struct.context.0** %6, align 8
  %70 = call i64 @context_cmp(%struct.context.0* %68, %struct.context.0* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @sidtab_rcache_push(%struct.sidtab* %73, i64 %74)
  %76 = load i64, i64* %9, align 8
  %77 = load i64*, i64** %7, align 8
  store i64 %76, i64* %77, align 8
  store i32 0, i32* %16, align 4
  br label %165

78:                                               ; preds = %65
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %9, align 8
  br label %61

81:                                               ; preds = %61
  %82 = load i32, i32* @EOVERFLOW, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %16, align 4
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @SIDTAB_MAX, align 8
  %86 = icmp uge i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %165

88:                                               ; preds = %81
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %16, align 4
  %91 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call %struct.context.0* @sidtab_do_lookup(%struct.sidtab* %91, i64 %92, i32 1)
  store %struct.context.0* %93, %struct.context.0** %14, align 8
  %94 = load %struct.context.0*, %struct.context.0** %14, align 8
  %95 = icmp ne %struct.context.0* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %165

97:                                               ; preds = %88
  %98 = load %struct.context.0*, %struct.context.0** %14, align 8
  %99 = load %struct.context.0*, %struct.context.0** %6, align 8
  %100 = call i32 @context_cpy(%struct.context.0* %98, %struct.context.0* %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %165

104:                                              ; preds = %97
  %105 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %13, align 8
  %106 = icmp ne %struct.sidtab_convert_params* %105, null
  br i1 %106, label %107, label %144

107:                                              ; preds = %104
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %16, align 4
  %110 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %13, align 8
  %111 = getelementptr inbounds %struct.sidtab_convert_params, %struct.sidtab_convert_params* %110, i32 0, i32 1
  %112 = load %struct.sidtab*, %struct.sidtab** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call %struct.context.0* @sidtab_do_lookup(%struct.sidtab* %112, i64 %113, i32 1)
  store %struct.context.0* %114, %struct.context.0** %15, align 8
  %115 = load %struct.context.0*, %struct.context.0** %15, align 8
  %116 = icmp ne %struct.context.0* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %107
  %118 = load %struct.context.0*, %struct.context.0** %14, align 8
  %119 = call i32 @context_destroy(%struct.context.0* %118)
  br label %165

120:                                              ; preds = %107
  %121 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %13, align 8
  %122 = getelementptr inbounds %struct.sidtab_convert_params, %struct.sidtab_convert_params* %121, i32 0, i32 0
  %123 = load i32 (%struct.context*, %struct.context*, i32)*, i32 (%struct.context*, %struct.context*, i32)** %122, align 8
  %124 = load %struct.context.0*, %struct.context.0** %6, align 8
  %125 = bitcast %struct.context.0* %124 to %struct.context*
  %126 = load %struct.context.0*, %struct.context.0** %15, align 8
  %127 = bitcast %struct.context.0* %126 to %struct.context*
  %128 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %13, align 8
  %129 = getelementptr inbounds %struct.sidtab_convert_params, %struct.sidtab_convert_params* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 %123(%struct.context* %125, %struct.context* %127, i32 %130)
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %120
  %135 = load %struct.context.0*, %struct.context.0** %14, align 8
  %136 = call i32 @context_destroy(%struct.context.0* %135)
  br label %165

137:                                              ; preds = %120
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, 1
  %140 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %13, align 8
  %141 = getelementptr inbounds %struct.sidtab_convert_params, %struct.sidtab_convert_params* %140, i32 0, i32 1
  %142 = load %struct.sidtab*, %struct.sidtab** %141, align 8
  %143 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %142, i32 0, i32 0
  store i64 %139, i64* %143, align 8
  br label %144

144:                                              ; preds = %137, %104
  %145 = load %struct.context.0*, %struct.context.0** %6, align 8
  %146 = getelementptr inbounds %struct.context.0, %struct.context.0* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.context.0*, %struct.context.0** %6, align 8
  %151 = getelementptr inbounds %struct.context.0, %struct.context.0* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %149, %144
  %155 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %156 = load i64, i64* %9, align 8
  %157 = call i32 @sidtab_rcache_push(%struct.sidtab* %155, i64 %156)
  %158 = load i64, i64* %9, align 8
  %159 = load i64*, i64** %7, align 8
  store i64 %158, i64* %159, align 8
  %160 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %161 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %160, i32 0, i32 0
  %162 = load i64, i64* %9, align 8
  %163 = add i64 %162, 1
  %164 = call i32 @smp_store_release(i64* %161, i64 %163)
  store i32 0, i32* %16, align 4
  br label %165

165:                                              ; preds = %154, %134, %117, %103, %96, %87, %72
  %166 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %167 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %166, i32 0, i32 1
  %168 = load i64, i64* %8, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %165, %43, %23
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @sidtab_rcache_search(%struct.sidtab*, %struct.context.0*, i64*) #1

declare dso_local i64 @smp_load_acquire(i64*) #1

declare dso_local i64 @sidtab_level_from_count(i64) #1

declare dso_local i32 @sidtab_find_context(i32, i64*, i64, i64, %struct.context.0*, i64*) #1

declare dso_local i32 @sidtab_rcache_push(%struct.sidtab*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @context_cmp(%struct.context.0*, %struct.context.0*) #1

declare dso_local %struct.context.0* @sidtab_do_lookup(%struct.sidtab*, i64, i32) #1

declare dso_local i32 @context_cpy(%struct.context.0*, %struct.context.0*) #1

declare dso_local i32 @context_destroy(%struct.context.0*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @smp_store_release(i64*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
