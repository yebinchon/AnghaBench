; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_put_reqs_available.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_put_reqs_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kioctx = type { i32, i32, i32 }
%struct.kioctx_cpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kioctx*, i32)* @put_reqs_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_reqs_available(%struct.kioctx* %0, i32 %1) #0 {
  %3 = alloca %struct.kioctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kioctx_cpu*, align 8
  %6 = alloca i64, align 8
  store %struct.kioctx* %0, %struct.kioctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %10 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.kioctx_cpu* @this_cpu_ptr(i32 %11)
  store %struct.kioctx_cpu* %12, %struct.kioctx_cpu** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.kioctx_cpu*, %struct.kioctx_cpu** %5, align 8
  %15 = getelementptr inbounds %struct.kioctx_cpu, %struct.kioctx_cpu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %27, %2
  %19 = load %struct.kioctx_cpu*, %struct.kioctx_cpu** %5, align 8
  %20 = getelementptr inbounds %struct.kioctx_cpu, %struct.kioctx_cpu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %23 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 2
  %26 = icmp sge i32 %21, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %18
  %28 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %29 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.kioctx_cpu*, %struct.kioctx_cpu** %5, align 8
  %32 = getelementptr inbounds %struct.kioctx_cpu, %struct.kioctx_cpu* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %36 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %39 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %38, i32 0, i32 1
  %40 = call i32 @atomic_add(i32 %37, i32* %39)
  br label %18

41:                                               ; preds = %18
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @local_irq_restore(i64 %42)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.kioctx_cpu* @this_cpu_ptr(i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
