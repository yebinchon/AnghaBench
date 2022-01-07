; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_get_mem.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_mixer = type { %struct.ct_mixer*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUM_CT_AMIXERS = common dso_local global i32 0, align 4
@CHN_NUM = common dso_local global i32 0, align 4
@NUM_CT_SUMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_mixer**)* @ct_mixer_get_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_mixer_get_mem(%struct.ct_mixer** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ct_mixer**, align 8
  %4 = alloca %struct.ct_mixer*, align 8
  %5 = alloca i32, align 4
  store %struct.ct_mixer** %0, %struct.ct_mixer*** %3, align 8
  %6 = load %struct.ct_mixer**, %struct.ct_mixer*** %3, align 8
  store %struct.ct_mixer* null, %struct.ct_mixer** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ct_mixer* @kzalloc(i32 16, i32 %7)
  store %struct.ct_mixer* %8, %struct.ct_mixer** %4, align 8
  %9 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %10 = icmp ne %struct.ct_mixer* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %57

14:                                               ; preds = %1
  %15 = load i32, i32* @NUM_CT_AMIXERS, align 4
  %16 = load i32, i32* @CHN_NUM, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kcalloc(i32 %17, i32 8, i32 %18)
  %20 = bitcast i8* %19 to %struct.ct_mixer*
  %21 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %22 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %21, i32 0, i32 0
  store %struct.ct_mixer* %20, %struct.ct_mixer** %22, align 8
  %23 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %24 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %23, i32 0, i32 0
  %25 = load %struct.ct_mixer*, %struct.ct_mixer** %24, align 8
  %26 = icmp ne %struct.ct_mixer* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %14
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %53

30:                                               ; preds = %14
  %31 = load i32, i32* @NUM_CT_SUMS, align 4
  %32 = load i32, i32* @CHN_NUM, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kcalloc(i32 %33, i32 8, i32 %34)
  %36 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %37 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %39 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %30
  %46 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %47 = load %struct.ct_mixer**, %struct.ct_mixer*** %3, align 8
  store %struct.ct_mixer* %46, %struct.ct_mixer** %47, align 8
  store i32 0, i32* %2, align 4
  br label %57

48:                                               ; preds = %42
  %49 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %50 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %49, i32 0, i32 0
  %51 = load %struct.ct_mixer*, %struct.ct_mixer** %50, align 8
  %52 = call i32 @kfree(%struct.ct_mixer* %51)
  br label %53

53:                                               ; preds = %48, %27
  %54 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %55 = call i32 @kfree(%struct.ct_mixer* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %45, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.ct_mixer* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ct_mixer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
