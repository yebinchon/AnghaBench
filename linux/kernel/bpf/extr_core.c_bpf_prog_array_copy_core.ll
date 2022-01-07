; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_array_copy_core.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_array_copy_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bpf_prog_array = type { %struct.bpf_prog_array_item* }
%struct.bpf_prog_array_item = type { %struct.TYPE_4__* }

@dummy_bpf_prog = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_prog_array*, i32*, i32)* @bpf_prog_array_copy_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_prog_array_copy_core(%struct.bpf_prog_array* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_prog_array*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_prog_array_item*, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_prog_array* %0, %struct.bpf_prog_array** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %4, align 8
  %10 = getelementptr inbounds %struct.bpf_prog_array, %struct.bpf_prog_array* %9, i32 0, i32 0
  %11 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %10, align 8
  store %struct.bpf_prog_array_item* %11, %struct.bpf_prog_array_item** %7, align 8
  br label %12

12:                                               ; preds = %43, %3
  %13 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %7, align 8
  %14 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %12
  %18 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %7, align 8
  %19 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dummy_bpf_prog, i32 0, i32 0)
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %43

23:                                               ; preds = %17
  %24 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %7, align 8
  %25 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %7, align 8
  %41 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %40, i32 1
  store %struct.bpf_prog_array_item* %41, %struct.bpf_prog_array_item** %7, align 8
  br label %46

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %7, align 8
  %45 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %44, i32 1
  store %struct.bpf_prog_array_item* %45, %struct.bpf_prog_array_item** %7, align 8
  br label %12

46:                                               ; preds = %39, %12
  %47 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %7, align 8
  %48 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
