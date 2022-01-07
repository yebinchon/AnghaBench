; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_range_register.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_range_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmm_range = type { i32, i32, i32, i32, %struct.hmm* }
%struct.hmm = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hmm_mirror = type { %struct.hmm* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hmm_range_register(%struct.hmm_range* %0, %struct.hmm_mirror* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hmm_range*, align 8
  %5 = alloca %struct.hmm_mirror*, align 8
  %6 = alloca %struct.hmm*, align 8
  %7 = alloca i64, align 8
  store %struct.hmm_range* %0, %struct.hmm_range** %4, align 8
  store %struct.hmm_mirror* %1, %struct.hmm_mirror** %5, align 8
  %8 = load %struct.hmm_mirror*, %struct.hmm_mirror** %5, align 8
  %9 = getelementptr inbounds %struct.hmm_mirror, %struct.hmm_mirror* %8, i32 0, i32 0
  %10 = load %struct.hmm*, %struct.hmm** %9, align 8
  store %struct.hmm* %10, %struct.hmm** %6, align 8
  %11 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %12 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %14 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %13, i32 0, i32 4
  store %struct.hmm* null, %struct.hmm** %14, align 8
  %15 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %16 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %24 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %79

33:                                               ; preds = %22
  %34 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %35 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %38 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %79

44:                                               ; preds = %33
  %45 = load %struct.hmm*, %struct.hmm** %6, align 8
  %46 = getelementptr inbounds %struct.hmm, %struct.hmm* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mmget_not_zero(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %79

54:                                               ; preds = %44
  %55 = load %struct.hmm*, %struct.hmm** %6, align 8
  %56 = getelementptr inbounds %struct.hmm, %struct.hmm* %55, i32 0, i32 0
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.hmm*, %struct.hmm** %6, align 8
  %60 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %61 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %60, i32 0, i32 4
  store %struct.hmm* %59, %struct.hmm** %61, align 8
  %62 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %63 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %62, i32 0, i32 3
  %64 = load %struct.hmm*, %struct.hmm** %6, align 8
  %65 = getelementptr inbounds %struct.hmm, %struct.hmm* %64, i32 0, i32 2
  %66 = call i32 @list_add(i32* %63, i32* %65)
  %67 = load %struct.hmm*, %struct.hmm** %6, align 8
  %68 = getelementptr inbounds %struct.hmm, %struct.hmm* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %54
  %72 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %73 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %54
  %75 = load %struct.hmm*, %struct.hmm** %6, align 8
  %76 = getelementptr inbounds %struct.hmm, %struct.hmm* %75, i32 0, i32 0
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %51, %41, %30
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @mmget_not_zero(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
