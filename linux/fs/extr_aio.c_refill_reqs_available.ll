; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_refill_reqs_available.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_refill_reqs_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kioctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kioctx*, i32, i32)* @refill_reqs_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refill_reqs_available(%struct.kioctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kioctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kioctx* %0, %struct.kioctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %10 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = urem i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ule i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sub i32 %18, %19
  store i32 %20, i32* %7, align 4
  br label %29

21:                                               ; preds = %3
  %22 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %23 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub i32 %25, %26
  %28 = sub i32 %24, %27
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %21, %17
  %30 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %31 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %41

40:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %54

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %48 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @put_reqs_available(%struct.kioctx* %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %44
  ret void
}

declare dso_local i32 @put_reqs_available(%struct.kioctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
