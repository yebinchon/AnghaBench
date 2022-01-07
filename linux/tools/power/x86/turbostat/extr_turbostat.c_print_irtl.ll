; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_print_irtl.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_print_irtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_cpu = common dso_local global i32 0, align 4
@MSR_PKGC3_IRTL = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cpu%d: MSR_PKGC3_IRTL: 0x%08llx (\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%svalid, %lld ns)\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@irtl_time_units = common dso_local global i64* null, align 8
@MSR_PKGC6_IRTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"cpu%d: MSR_PKGC6_IRTL: 0x%08llx (\00", align 1
@MSR_PKGC7_IRTL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"cpu%d: MSR_PKGC7_IRTL: 0x%08llx (\00", align 1
@do_irtl_hsw = common dso_local global i32 0, align 4
@MSR_PKGC8_IRTL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"cpu%d: MSR_PKGC8_IRTL: 0x%08llx (\00", align 1
@MSR_PKGC9_IRTL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"cpu%d: MSR_PKGC9_IRTL: 0x%08llx (\00", align 1
@MSR_PKGC10_IRTL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"cpu%d: MSR_PKGC10_IRTL: 0x%08llx (\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_irtl() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @base_cpu, align 4
  %3 = load i32, i32* @MSR_PKGC3_IRTL, align 4
  %4 = call i32 @get_msr(i32 %2, i32 %3, i64* %1)
  %5 = load i32, i32* @outf, align 4
  %6 = load i32, i32* @base_cpu, align 4
  %7 = load i64, i64* %1, align 8
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %6, i64 %7)
  %9 = load i32, i32* @outf, align 4
  %10 = load i64, i64* %1, align 8
  %11 = and i64 %10, 32768
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %15 = load i64, i64* %1, align 8
  %16 = and i64 %15, 1023
  %17 = load i64*, i64** @irtl_time_units, align 8
  %18 = load i64, i64* %1, align 8
  %19 = lshr i64 %18, 10
  %20 = and i64 %19, 3
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %16, %22
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %14, i64 %23)
  %25 = load i32, i32* @base_cpu, align 4
  %26 = load i32, i32* @MSR_PKGC6_IRTL, align 4
  %27 = call i32 @get_msr(i32 %25, i32 %26, i64* %1)
  %28 = load i32, i32* @outf, align 4
  %29 = load i32, i32* @base_cpu, align 4
  %30 = load i64, i64* %1, align 8
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %29, i64 %30)
  %32 = load i32, i32* @outf, align 4
  %33 = load i64, i64* %1, align 8
  %34 = and i64 %33, 32768
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %38 = load i64, i64* %1, align 8
  %39 = and i64 %38, 1023
  %40 = load i64*, i64** @irtl_time_units, align 8
  %41 = load i64, i64* %1, align 8
  %42 = lshr i64 %41, 10
  %43 = and i64 %42, 3
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %39, %45
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %37, i64 %46)
  %48 = load i32, i32* @base_cpu, align 4
  %49 = load i32, i32* @MSR_PKGC7_IRTL, align 4
  %50 = call i32 @get_msr(i32 %48, i32 %49, i64* %1)
  %51 = load i32, i32* @outf, align 4
  %52 = load i32, i32* @base_cpu, align 4
  %53 = load i64, i64* %1, align 8
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %52, i64 %53)
  %55 = load i32, i32* @outf, align 4
  %56 = load i64, i64* %1, align 8
  %57 = and i64 %56, 32768
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %61 = load i64, i64* %1, align 8
  %62 = and i64 %61, 1023
  %63 = load i64*, i64** @irtl_time_units, align 8
  %64 = load i64, i64* %1, align 8
  %65 = lshr i64 %64, 10
  %66 = and i64 %65, 3
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = mul i64 %62, %68
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %60, i64 %69)
  %71 = load i32, i32* @do_irtl_hsw, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %0
  br label %144

74:                                               ; preds = %0
  %75 = load i32, i32* @base_cpu, align 4
  %76 = load i32, i32* @MSR_PKGC8_IRTL, align 4
  %77 = call i32 @get_msr(i32 %75, i32 %76, i64* %1)
  %78 = load i32, i32* @outf, align 4
  %79 = load i32, i32* @base_cpu, align 4
  %80 = load i64, i64* %1, align 8
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %79, i64 %80)
  %82 = load i32, i32* @outf, align 4
  %83 = load i64, i64* %1, align 8
  %84 = and i64 %83, 32768
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %88 = load i64, i64* %1, align 8
  %89 = and i64 %88, 1023
  %90 = load i64*, i64** @irtl_time_units, align 8
  %91 = load i64, i64* %1, align 8
  %92 = lshr i64 %91, 10
  %93 = and i64 %92, 3
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = mul i64 %89, %95
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %87, i64 %96)
  %98 = load i32, i32* @base_cpu, align 4
  %99 = load i32, i32* @MSR_PKGC9_IRTL, align 4
  %100 = call i32 @get_msr(i32 %98, i32 %99, i64* %1)
  %101 = load i32, i32* @outf, align 4
  %102 = load i32, i32* @base_cpu, align 4
  %103 = load i64, i64* %1, align 8
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %102, i64 %103)
  %105 = load i32, i32* @outf, align 4
  %106 = load i64, i64* %1, align 8
  %107 = and i64 %106, 32768
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %111 = load i64, i64* %1, align 8
  %112 = and i64 %111, 1023
  %113 = load i64*, i64** @irtl_time_units, align 8
  %114 = load i64, i64* %1, align 8
  %115 = lshr i64 %114, 10
  %116 = and i64 %115, 3
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = mul i64 %112, %118
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %110, i64 %119)
  %121 = load i32, i32* @base_cpu, align 4
  %122 = load i32, i32* @MSR_PKGC10_IRTL, align 4
  %123 = call i32 @get_msr(i32 %121, i32 %122, i64* %1)
  %124 = load i32, i32* @outf, align 4
  %125 = load i32, i32* @base_cpu, align 4
  %126 = load i64, i64* %1, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %125, i64 %126)
  %128 = load i32, i32* @outf, align 4
  %129 = load i64, i64* %1, align 8
  %130 = and i64 %129, 32768
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %134 = load i64, i64* %1, align 8
  %135 = and i64 %134, 1023
  %136 = load i64*, i64** @irtl_time_units, align 8
  %137 = load i64, i64* %1, align 8
  %138 = lshr i64 %137, 10
  %139 = and i64 %138, 3
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = mul i64 %135, %141
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %133, i64 %142)
  br label %144

144:                                              ; preds = %74, %73
  ret void
}

declare dso_local i32 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
