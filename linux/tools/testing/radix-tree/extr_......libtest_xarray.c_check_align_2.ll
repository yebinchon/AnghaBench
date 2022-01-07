; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libtest_xarray.c_check_align_2.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libtest_xarray.c_check_align_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xarray*, i8*)* @check_align_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_align_2(%struct.xarray* %0, i8* %1) #0 {
  %3 = alloca %struct.xarray*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.xarray* %0, %struct.xarray** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.xarray*, %struct.xarray** %3, align 8
  %7 = load %struct.xarray*, %struct.xarray** %3, align 8
  %8 = call i32 @xa_empty(%struct.xarray* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @XA_BUG_ON(%struct.xarray* %6, i32 %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %30, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load %struct.xarray*, %struct.xarray** %3, align 8
  %18 = load %struct.xarray*, %struct.xarray** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @xa_store(%struct.xarray* %18, i32 0, i8* %22, i32 %23)
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @XA_BUG_ON(%struct.xarray* %17, i32 %26)
  %28 = load %struct.xarray*, %struct.xarray** %3, align 8
  %29 = call i32 @xa_erase(%struct.xarray* %28, i32 0)
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %13

33:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load %struct.xarray*, %struct.xarray** %3, align 8
  %39 = load %struct.xarray*, %struct.xarray** %3, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i64 @xa_reserve(%struct.xarray* %39, i32 0, i32 %40)
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @XA_BUG_ON(%struct.xarray* %38, i32 %43)
  %45 = load %struct.xarray*, %struct.xarray** %3, align 8
  %46 = load %struct.xarray*, %struct.xarray** %3, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = call i32* @xa_store(%struct.xarray* %46, i32 0, i8* %50, i32 0)
  %52 = icmp ne i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @XA_BUG_ON(%struct.xarray* %45, i32 %53)
  %55 = load %struct.xarray*, %struct.xarray** %3, align 8
  %56 = call i32 @xa_erase(%struct.xarray* %55, i32 0)
  br label %57

57:                                               ; preds = %37
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %34

60:                                               ; preds = %34
  %61 = load %struct.xarray*, %struct.xarray** %3, align 8
  %62 = load %struct.xarray*, %struct.xarray** %3, align 8
  %63 = call i32 @xa_empty(%struct.xarray* %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @XA_BUG_ON(%struct.xarray* %61, i32 %66)
  ret void
}

declare dso_local i32 @XA_BUG_ON(%struct.xarray*, i32) #1

declare dso_local i32 @xa_empty(%struct.xarray*) #1

declare dso_local i32* @xa_store(%struct.xarray*, i32, i8*, i32) #1

declare dso_local i32 @xa_erase(%struct.xarray*, i32) #1

declare dso_local i64 @xa_reserve(%struct.xarray*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
