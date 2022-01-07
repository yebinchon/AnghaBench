; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_find_prog_type.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_find_prog_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_ops = type { i32 }
%struct.bpf_prog = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bpf_prog_ops* }

@bpf_prog_types = common dso_local global %struct.bpf_prog_ops** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@bpf_offload_prog_ops = common dso_local global %struct.bpf_prog_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.bpf_prog*)* @find_prog_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_prog_type(i32 %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.bpf_prog_ops*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.bpf_prog_ops**, %struct.bpf_prog_ops*** @bpf_prog_types, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.bpf_prog_ops** %8)
  %10 = icmp uge i32 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.bpf_prog_ops**, %struct.bpf_prog_ops*** @bpf_prog_types, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.bpf_prog_ops** %16)
  %18 = call i32 @array_index_nospec(i32 %15, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.bpf_prog_ops**, %struct.bpf_prog_ops*** @bpf_prog_types, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bpf_prog_ops*, %struct.bpf_prog_ops** %19, i64 %21
  %23 = load %struct.bpf_prog_ops*, %struct.bpf_prog_ops** %22, align 8
  store %struct.bpf_prog_ops* %23, %struct.bpf_prog_ops** %6, align 8
  %24 = load %struct.bpf_prog_ops*, %struct.bpf_prog_ops** %6, align 8
  %25 = icmp ne %struct.bpf_prog_ops* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %50

29:                                               ; preds = %14
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %31 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @bpf_prog_is_dev_bound(%struct.TYPE_2__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.bpf_prog_ops*, %struct.bpf_prog_ops** %6, align 8
  %37 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %38 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.bpf_prog_ops* %36, %struct.bpf_prog_ops** %40, align 8
  br label %46

41:                                               ; preds = %29
  %42 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %43 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.bpf_prog_ops* @bpf_offload_prog_ops, %struct.bpf_prog_ops** %45, align 8
  br label %46

46:                                               ; preds = %41, %35
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %49 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %26, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ARRAY_SIZE(%struct.bpf_prog_ops**) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

declare dso_local i32 @bpf_prog_is_dev_bound(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
