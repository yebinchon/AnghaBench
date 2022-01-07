; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_next_period.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_next_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_next_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_next_period(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_decoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  %6 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %7 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %8, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %15 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %19 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %25 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %68

29:                                               ; preds = %22
  br label %50

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %35 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %40 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %46 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %48 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %30
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %53 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %58 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %2, align 4
  br label %68

60:                                               ; preds = %50
  %61 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %62 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sub nsw i32 %63, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %60, %56, %28
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
