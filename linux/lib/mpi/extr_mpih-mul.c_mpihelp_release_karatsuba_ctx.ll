; ModuleID = '/home/carl/AnghaBench/linux/lib/mpi/extr_mpih-mul.c_mpihelp_release_karatsuba_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/lib/mpi/extr_mpih-mul.c_mpihelp_release_karatsuba_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.karatsuba_ctx = type { i64, i64, %struct.karatsuba_ctx* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpihelp_release_karatsuba_ctx(%struct.karatsuba_ctx* %0) #0 {
  %2 = alloca %struct.karatsuba_ctx*, align 8
  %3 = alloca %struct.karatsuba_ctx*, align 8
  store %struct.karatsuba_ctx* %0, %struct.karatsuba_ctx** %2, align 8
  %4 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.karatsuba_ctx, %struct.karatsuba_ctx* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.karatsuba_ctx, %struct.karatsuba_ctx* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @mpi_free_limb_space(i64 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.karatsuba_ctx, %struct.karatsuba_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.karatsuba_ctx, %struct.karatsuba_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @mpi_free_limb_space(i64 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.karatsuba_ctx, %struct.karatsuba_ctx* %24, i32 0, i32 2
  %26 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %25, align 8
  store %struct.karatsuba_ctx* %26, %struct.karatsuba_ctx** %2, align 8
  br label %27

27:                                               ; preds = %56, %23
  %28 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %2, align 8
  %29 = icmp ne %struct.karatsuba_ctx* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.karatsuba_ctx, %struct.karatsuba_ctx* %31, i32 0, i32 2
  %33 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %32, align 8
  store %struct.karatsuba_ctx* %33, %struct.karatsuba_ctx** %3, align 8
  %34 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.karatsuba_ctx, %struct.karatsuba_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.karatsuba_ctx, %struct.karatsuba_ctx* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @mpi_free_limb_space(i64 %41)
  br label %43

43:                                               ; preds = %38, %30
  %44 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.karatsuba_ctx, %struct.karatsuba_ctx* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %2, align 8
  %50 = getelementptr inbounds %struct.karatsuba_ctx, %struct.karatsuba_ctx* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @mpi_free_limb_space(i64 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %2, align 8
  %55 = call i32 @kfree(%struct.karatsuba_ctx* %54)
  br label %56

56:                                               ; preds = %53
  %57 = load %struct.karatsuba_ctx*, %struct.karatsuba_ctx** %3, align 8
  store %struct.karatsuba_ctx* %57, %struct.karatsuba_ctx** %2, align 8
  br label %27

58:                                               ; preds = %27
  ret void
}

declare dso_local i32 @mpi_free_limb_space(i64) #1

declare dso_local i32 @kfree(%struct.karatsuba_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
