; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_map__set_inner_map_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_map__set_inner_map_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"error: unsupported map type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"error: inner_map_fd already specified\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_map__set_inner_map_fd(%struct.bpf_map* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %7 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bpf_map_type__is_map_in_map(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @pr_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %18 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = call i32 @pr_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %28 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %21, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @bpf_map_type__is_map_in_map(i32) #1

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
