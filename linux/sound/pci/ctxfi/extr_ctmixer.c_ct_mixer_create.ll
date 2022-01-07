; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32 }
%struct.ct_mixer = type { i32, i32, i32, i32, %struct.ct_atc*, i64 }

@mixer_get_output_ports = common dso_local global i32 0, align 4
@mixer_set_input_left = common dso_local global i32 0, align 4
@mixer_set_input_right = common dso_local global i32 0, align 4
@mixer_resume = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_mixer_create(%struct.ct_atc* %0, %struct.ct_mixer** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_mixer**, align 8
  %6 = alloca %struct.ct_mixer*, align 8
  %7 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_mixer** %1, %struct.ct_mixer*** %5, align 8
  %8 = load %struct.ct_mixer**, %struct.ct_mixer*** %5, align 8
  store %struct.ct_mixer* null, %struct.ct_mixer** %8, align 8
  %9 = call i32 @ct_mixer_get_mem(%struct.ct_mixer** %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.ct_mixer*, %struct.ct_mixer** %6, align 8
  %16 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %18 = load %struct.ct_mixer*, %struct.ct_mixer** %6, align 8
  %19 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %18, i32 0, i32 4
  store %struct.ct_atc* %17, %struct.ct_atc** %19, align 8
  %20 = load i32, i32* @mixer_get_output_ports, align 4
  %21 = load %struct.ct_mixer*, %struct.ct_mixer** %6, align 8
  %22 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @mixer_set_input_left, align 4
  %24 = load %struct.ct_mixer*, %struct.ct_mixer** %6, align 8
  %25 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @mixer_set_input_right, align 4
  %27 = load %struct.ct_mixer*, %struct.ct_mixer** %6, align 8
  %28 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ct_mixer*, %struct.ct_mixer** %6, align 8
  %30 = call i32 @ct_mixer_get_resources(%struct.ct_mixer* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %14
  br label %39

34:                                               ; preds = %14
  %35 = load %struct.ct_mixer*, %struct.ct_mixer** %6, align 8
  %36 = call i32 @ct_mixer_topology_build(%struct.ct_mixer* %35)
  %37 = load %struct.ct_mixer*, %struct.ct_mixer** %6, align 8
  %38 = load %struct.ct_mixer**, %struct.ct_mixer*** %5, align 8
  store %struct.ct_mixer* %37, %struct.ct_mixer** %38, align 8
  store i32 0, i32* %3, align 4
  br label %43

39:                                               ; preds = %33
  %40 = load %struct.ct_mixer*, %struct.ct_mixer** %6, align 8
  %41 = call i32 @ct_mixer_destroy(%struct.ct_mixer* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %34, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ct_mixer_get_mem(%struct.ct_mixer**) #1

declare dso_local i32 @ct_mixer_get_resources(%struct.ct_mixer*) #1

declare dso_local i32 @ct_mixer_topology_build(%struct.ct_mixer*) #1

declare dso_local i32 @ct_mixer_destroy(%struct.ct_mixer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
