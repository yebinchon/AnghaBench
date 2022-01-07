; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c___get_reqs_available.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c___get_reqs_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kioctx = type { i32, i32, i32 }
%struct.kioctx_cpu = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kioctx*)* @__get_reqs_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_reqs_available(%struct.kioctx* %0) #0 {
  %2 = alloca %struct.kioctx*, align 8
  %3 = alloca %struct.kioctx_cpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kioctx* %0, %struct.kioctx** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %11 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.kioctx_cpu* @this_cpu_ptr(i32 %12)
  store %struct.kioctx_cpu* %13, %struct.kioctx_cpu** %3, align 8
  %14 = load %struct.kioctx_cpu*, %struct.kioctx_cpu** %3, align 8
  %15 = getelementptr inbounds %struct.kioctx_cpu, %struct.kioctx_cpu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %53, label %18

18:                                               ; preds = %1
  %19 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %20 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %19, i32 0, i32 1
  %21 = call i32 @atomic_read(i32* %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %40, %18
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %25 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %58

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %32 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %31, i32 0, i32 1
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %36 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  %39 = call i32 @atomic_cmpxchg(i32* %32, i32 %33, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %22, label %44

44:                                               ; preds = %40
  %45 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %46 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.kioctx_cpu*, %struct.kioctx_cpu** %3, align 8
  %50 = getelementptr inbounds %struct.kioctx_cpu, %struct.kioctx_cpu* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %44, %1
  store i32 1, i32* %4, align 4
  %54 = load %struct.kioctx_cpu*, %struct.kioctx_cpu** %3, align 8
  %55 = getelementptr inbounds %struct.kioctx_cpu, %struct.kioctx_cpu* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %53, %28
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @local_irq_restore(i64 %59)
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.kioctx_cpu* @this_cpu_ptr(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
