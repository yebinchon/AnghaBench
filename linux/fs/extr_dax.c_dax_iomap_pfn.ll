; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_iomap_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_iomap_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iomap = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iomap*, i32, i64, i32*)* @dax_iomap_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_iomap_pfn(%struct.iomap* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iomap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.iomap* %0, %struct.iomap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.iomap*, %struct.iomap** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @dax_iomap_sector(%struct.iomap* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.iomap*, %struct.iomap** %6, align 8
  %19 = getelementptr inbounds %struct.iomap, %struct.iomap* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @bdev_dax_pgoff(i32 %20, i32 %21, i64 %22, i32* %11)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %5, align 4
  br label %75

28:                                               ; preds = %4
  %29 = call i32 (...) @dax_read_lock()
  store i32 %29, i32* %12, align 4
  %30 = load %struct.iomap*, %struct.iomap** %6, align 8
  %31 = getelementptr inbounds %struct.iomap, %struct.iomap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @PHYS_PFN(i64 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @dax_direct_access(i32 %32, i32 %33, i32 %35, i32* null, i32* %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i64, i64* %14, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %13, align 4
  br label %71

43:                                               ; preds = %28
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  %46 = load i64, i64* %14, align 8
  %47 = call i64 @PFN_PHYS(i64 %46)
  %48 = load i64, i64* %8, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %71

51:                                               ; preds = %43
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pfn_t_to_pfn(i32 %53)
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @PHYS_PFN(i64 %55)
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %71

61:                                               ; preds = %51
  %62 = load i64, i64* %14, align 8
  %63 = icmp sgt i64 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pfn_t_devmap(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %71

70:                                               ; preds = %64, %61
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %70, %69, %60, %50, %40
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @dax_read_unlock(i32 %72)
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %26
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @dax_iomap_sector(%struct.iomap*, i32) #1

declare dso_local i32 @bdev_dax_pgoff(i32, i32, i64, i32*) #1

declare dso_local i32 @dax_read_lock(...) #1

declare dso_local i64 @dax_direct_access(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @PHYS_PFN(i64) #1

declare dso_local i64 @PFN_PHYS(i64) #1

declare dso_local i32 @pfn_t_to_pfn(i32) #1

declare dso_local i32 @pfn_t_devmap(i32) #1

declare dso_local i32 @dax_read_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
