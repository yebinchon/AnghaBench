; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_map__set_priv.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_map__set_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 (%struct.bpf_map*, i8*)*, i8* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_map__set_priv(%struct.bpf_map* %0, i8* %1, i32 (%struct.bpf_map*, i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.bpf_map*, i8*)*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (%struct.bpf_map*, i8*)* %2, i32 (%struct.bpf_map*, i8*)** %7, align 8
  %8 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %9 = icmp ne %struct.bpf_map* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %40

13:                                               ; preds = %3
  %14 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %15 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %20 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %19, i32 0, i32 0
  %21 = load i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*)** %20, align 8
  %22 = icmp ne i32 (%struct.bpf_map*, i8*)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %25 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %24, i32 0, i32 0
  %26 = load i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*)** %25, align 8
  %27 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %28 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %29 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 %26(%struct.bpf_map* %27, i8* %30)
  br label %32

32:                                               ; preds = %23, %18
  br label %33

33:                                               ; preds = %32, %13
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %36 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*)** %7, align 8
  %38 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %39 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %38, i32 0, i32 0
  store i32 (%struct.bpf_map*, i8*)* %37, i32 (%struct.bpf_map*, i8*)** %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %10
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
