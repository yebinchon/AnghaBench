; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_fmt_v4.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_fmt_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_module_pin_fmt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.skl_dfw_v4_module_fmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_module_pin_fmt*, %struct.skl_dfw_v4_module_fmt*, i32)* @skl_tplg_fill_fmt_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_tplg_fill_fmt_v4(%struct.skl_module_pin_fmt* %0, %struct.skl_dfw_v4_module_fmt* %1, i32 %2) #0 {
  %4 = alloca %struct.skl_module_pin_fmt*, align 8
  %5 = alloca %struct.skl_dfw_v4_module_fmt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skl_module_pin_fmt* %0, %struct.skl_module_pin_fmt** %4, align 8
  store %struct.skl_dfw_v4_module_fmt* %1, %struct.skl_dfw_v4_module_fmt** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %109, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %112

12:                                               ; preds = %8
  %13 = load %struct.skl_dfw_v4_module_fmt*, %struct.skl_dfw_v4_module_fmt** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %13, i64 %15
  %17 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %19, i64 %21
  %23 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 7
  store i32 %18, i32* %24, align 4
  %25 = load %struct.skl_dfw_v4_module_fmt*, %struct.skl_dfw_v4_module_fmt** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %25, i64 %27
  %29 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %31, i64 %33
  %35 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  store i32 %30, i32* %36, align 4
  %37 = load %struct.skl_dfw_v4_module_fmt*, %struct.skl_dfw_v4_module_fmt** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %37, i64 %39
  %41 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %43, i64 %45
  %47 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  store i32 %42, i32* %48, align 4
  %49 = load %struct.skl_dfw_v4_module_fmt*, %struct.skl_dfw_v4_module_fmt** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %49, i64 %51
  %53 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %55, i64 %57
  %59 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  store i32 %54, i32* %60, align 4
  %61 = load %struct.skl_dfw_v4_module_fmt*, %struct.skl_dfw_v4_module_fmt** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %61, i64 %63
  %65 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %67, i64 %69
  %71 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store i32 %66, i32* %72, align 4
  %73 = load %struct.skl_dfw_v4_module_fmt*, %struct.skl_dfw_v4_module_fmt** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %73, i64 %75
  %77 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %79, i64 %81
  %83 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 %78, i32* %84, align 4
  %85 = load %struct.skl_dfw_v4_module_fmt*, %struct.skl_dfw_v4_module_fmt** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %85, i64 %87
  %89 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %91, i64 %93
  %95 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %90, i32* %96, align 4
  %97 = load %struct.skl_dfw_v4_module_fmt*, %struct.skl_dfw_v4_module_fmt** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %97, i64 %99
  %101 = getelementptr inbounds %struct.skl_dfw_v4_module_fmt, %struct.skl_dfw_v4_module_fmt* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.skl_module_pin_fmt*, %struct.skl_module_pin_fmt** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %103, i64 %105
  %107 = getelementptr inbounds %struct.skl_module_pin_fmt, %struct.skl_module_pin_fmt* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %102, i32* %108, align 4
  br label %109

109:                                              ; preds = %12
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %8

112:                                              ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
