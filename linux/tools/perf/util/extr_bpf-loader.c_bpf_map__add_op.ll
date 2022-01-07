; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_map__add_op.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_map__add_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.bpf_map_op = type { i32 }
%struct.bpf_map_priv = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to get private from map %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Not enough memory to alloc map private\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@bpf_map_priv__clear = common dso_local global i32 0, align 4
@BPF_LOADER_ERRNO__INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, %struct.bpf_map_op*)* @bpf_map__add_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_map__add_op(%struct.bpf_map* %0, %struct.bpf_map_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca %struct.bpf_map_op*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bpf_map_priv*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store %struct.bpf_map_op* %1, %struct.bpf_map_op** %5, align 8
  %8 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %9 = call i8* @bpf_map__name(%struct.bpf_map* %8)
  store i8* %9, i8** %6, align 8
  %10 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %11 = call %struct.bpf_map_priv* @bpf_map__priv(%struct.bpf_map* %10)
  store %struct.bpf_map_priv* %11, %struct.bpf_map_priv** %7, align 8
  %12 = load %struct.bpf_map_priv*, %struct.bpf_map_priv** %7, align 8
  %13 = call i64 @IS_ERR(%struct.bpf_map_priv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.bpf_map_priv*, %struct.bpf_map_priv** %7, align 8
  %19 = call i32 @PTR_ERR(%struct.bpf_map_priv* %18)
  store i32 %19, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.bpf_map_priv*, %struct.bpf_map_priv** %7, align 8
  %22 = icmp ne %struct.bpf_map_priv* %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = call %struct.bpf_map_priv* @zalloc(i32 4)
  store %struct.bpf_map_priv* %24, %struct.bpf_map_priv** %7, align 8
  %25 = load %struct.bpf_map_priv*, %struct.bpf_map_priv** %7, align 8
  %26 = icmp ne %struct.bpf_map_priv* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %52

31:                                               ; preds = %23
  %32 = load %struct.bpf_map_priv*, %struct.bpf_map_priv** %7, align 8
  %33 = getelementptr inbounds %struct.bpf_map_priv, %struct.bpf_map_priv* %32, i32 0, i32 0
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %36 = load %struct.bpf_map_priv*, %struct.bpf_map_priv** %7, align 8
  %37 = load i32, i32* @bpf_map_priv__clear, align 4
  %38 = call i64 @bpf_map__set_priv(%struct.bpf_map* %35, %struct.bpf_map_priv* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.bpf_map_priv*, %struct.bpf_map_priv** %7, align 8
  %42 = call i32 @free(%struct.bpf_map_priv* %41)
  %43 = load i32, i32* @BPF_LOADER_ERRNO__INTERNAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %52

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.bpf_map_op*, %struct.bpf_map_op** %5, align 8
  %48 = getelementptr inbounds %struct.bpf_map_op, %struct.bpf_map_op* %47, i32 0, i32 0
  %49 = load %struct.bpf_map_priv*, %struct.bpf_map_priv** %7, align 8
  %50 = getelementptr inbounds %struct.bpf_map_priv, %struct.bpf_map_priv* %49, i32 0, i32 0
  %51 = call i32 @list_add_tail(i32* %48, i32* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %40, %27, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i8* @bpf_map__name(%struct.bpf_map*) #1

declare dso_local %struct.bpf_map_priv* @bpf_map__priv(%struct.bpf_map*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_map_priv*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_map_priv*) #1

declare dso_local %struct.bpf_map_priv* @zalloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @bpf_map__set_priv(%struct.bpf_map*, %struct.bpf_map_priv*, i32) #1

declare dso_local i32 @free(%struct.bpf_map_priv*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
