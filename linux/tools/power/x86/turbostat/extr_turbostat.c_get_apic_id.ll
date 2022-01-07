; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_get_apic_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_get_apic_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32, i32, i32 }

@BIC_APIC = common dso_local global i32 0, align 4
@BIC_X2APIC = common dso_local global i32 0, align 4
@authentic_amd = common dso_local global i64 0, align 8
@hygon_genuine = common dso_local global i64 0, align 8
@max_extended_level = common dso_local global i32 0, align 4
@genuine_intel = common dso_local global i32 0, align 4
@max_level = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cpu%d: BIOS BUG: apic 0x%x x2apic 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_apic_id(%struct.thread_data* %0) #0 {
  %2 = alloca %struct.thread_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread_data* %0, %struct.thread_data** %2, align 8
  %8 = load i32, i32* @BIC_APIC, align 4
  %9 = call i64 @DO_BIC(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @__cpuid(i32 1, i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = lshr i32 %17, 24
  %19 = and i32 %18, 255
  %20 = load %struct.thread_data*, %struct.thread_data** %2, align 8
  %21 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %11, %1
  %23 = load i32, i32* @BIC_X2APIC, align 4
  %24 = call i64 @DO_BIC(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %97

27:                                               ; preds = %22
  %28 = load i64, i64* @authentic_amd, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @hygon_genuine, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @max_extended_level, align 4
  %35 = icmp ult i32 %34, -2147483618
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %97

37:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @__cpuid(i32 -2147483647, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 4194304
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %97

48:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @__cpuid(i32 -2147483618, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.thread_data*, %struct.thread_data** %2, align 8
  %56 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %97

57:                                               ; preds = %30
  %58 = load i32, i32* @genuine_intel, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %97

61:                                               ; preds = %57
  %62 = load i32, i32* @max_level, align 4
  %63 = icmp slt i32 %62, 11
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %97

65:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @__cpuid(i32 11, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.thread_data*, %struct.thread_data** %2, align 8
  %73 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i64, i64* @debug, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %65
  %77 = load %struct.thread_data*, %struct.thread_data** %2, align 8
  %78 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.thread_data*, %struct.thread_data** %2, align 8
  %81 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 255
  %84 = icmp ne i32 %79, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %76
  %86 = load i32, i32* @outf, align 4
  %87 = load %struct.thread_data*, %struct.thread_data** %2, align 8
  %88 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.thread_data*, %struct.thread_data** %2, align 8
  %91 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.thread_data*, %struct.thread_data** %2, align 8
  %94 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %26, %36, %47, %48, %60, %64, %85, %76, %65
  ret void
}

declare dso_local i64 @DO_BIC(i32) #1

declare dso_local i32 @__cpuid(i32, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
