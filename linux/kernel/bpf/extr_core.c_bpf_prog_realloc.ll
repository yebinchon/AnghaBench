; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_realloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bpf_prog*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_prog_realloc(%struct.bpf_prog* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* @__GFP_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %19 = icmp eq %struct.bpf_prog* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i32 @round_up(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = udiv i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %30 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ule i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %34, %struct.bpf_prog** %4, align 8
  br label %89

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %38 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub i32 %36, %39
  store i32 %40, i32* %11, align 4
  %41 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %42 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @__bpf_prog_charge(i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  store %struct.bpf_prog* null, %struct.bpf_prog** %4, align 8
  br label %89

51:                                               ; preds = %35
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PAGE_KERNEL, align 4
  %55 = call %struct.bpf_prog* @__vmalloc(i32 %52, i32 %53, i32 %54)
  store %struct.bpf_prog* %55, %struct.bpf_prog** %9, align 8
  %56 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %57 = icmp eq %struct.bpf_prog* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %60 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @__bpf_prog_uncharge(i32 %63, i32 %64)
  br label %87

66:                                               ; preds = %51
  %67 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %68 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %69 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %70 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = mul i32 %71, %72
  %74 = call i32 @memcpy(%struct.bpf_prog* %67, %struct.bpf_prog* %68, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %77 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %79 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %80 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store %struct.bpf_prog* %78, %struct.bpf_prog** %82, align 8
  %83 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %84 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %83, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %84, align 8
  %85 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %86 = call i32 @__bpf_prog_free(%struct.bpf_prog* %85)
  br label %87

87:                                               ; preds = %66, %58
  %88 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  store %struct.bpf_prog* %88, %struct.bpf_prog** %4, align 8
  br label %89

89:                                               ; preds = %87, %50, %33
  %90 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  ret %struct.bpf_prog* %90
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @__bpf_prog_charge(i32, i32) #1

declare dso_local %struct.bpf_prog* @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @__bpf_prog_uncharge(i32, i32) #1

declare dso_local i32 @memcpy(%struct.bpf_prog*, %struct.bpf_prog*, i32) #1

declare dso_local i32 @__bpf_prog_free(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
