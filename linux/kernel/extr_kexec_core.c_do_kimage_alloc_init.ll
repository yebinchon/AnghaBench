; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_do_kimage_alloc_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_do_kimage_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32, i32, i32, i32, i32, i64, i64*, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KEXEC_TYPE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kimage* @do_kimage_alloc_init() #0 {
  %1 = alloca %struct.kimage*, align 8
  %2 = alloca %struct.kimage*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.kimage* @kzalloc(i32 48, i32 %3)
  store %struct.kimage* %4, %struct.kimage** %2, align 8
  %5 = load %struct.kimage*, %struct.kimage** %2, align 8
  %6 = icmp ne %struct.kimage* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.kimage* null, %struct.kimage** %1, align 8
  br label %34

8:                                                ; preds = %0
  %9 = load %struct.kimage*, %struct.kimage** %2, align 8
  %10 = getelementptr inbounds %struct.kimage, %struct.kimage* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.kimage*, %struct.kimage** %2, align 8
  %12 = getelementptr inbounds %struct.kimage, %struct.kimage* %11, i32 0, i32 5
  %13 = load %struct.kimage*, %struct.kimage** %2, align 8
  %14 = getelementptr inbounds %struct.kimage, %struct.kimage* %13, i32 0, i32 7
  store i64* %12, i64** %14, align 8
  %15 = load %struct.kimage*, %struct.kimage** %2, align 8
  %16 = getelementptr inbounds %struct.kimage, %struct.kimage* %15, i32 0, i32 5
  %17 = load %struct.kimage*, %struct.kimage** %2, align 8
  %18 = getelementptr inbounds %struct.kimage, %struct.kimage* %17, i32 0, i32 6
  store i64* %16, i64** %18, align 8
  %19 = load %struct.kimage*, %struct.kimage** %2, align 8
  %20 = getelementptr inbounds %struct.kimage, %struct.kimage* %19, i32 0, i32 4
  store i32 -1, i32* %20, align 8
  %21 = load i32, i32* @KEXEC_TYPE_DEFAULT, align 4
  %22 = load %struct.kimage*, %struct.kimage** %2, align 8
  %23 = getelementptr inbounds %struct.kimage, %struct.kimage* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.kimage*, %struct.kimage** %2, align 8
  %25 = getelementptr inbounds %struct.kimage, %struct.kimage* %24, i32 0, i32 2
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.kimage*, %struct.kimage** %2, align 8
  %28 = getelementptr inbounds %struct.kimage, %struct.kimage* %27, i32 0, i32 1
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.kimage*, %struct.kimage** %2, align 8
  %31 = getelementptr inbounds %struct.kimage, %struct.kimage* %30, i32 0, i32 0
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.kimage*, %struct.kimage** %2, align 8
  store %struct.kimage* %33, %struct.kimage** %1, align 8
  br label %34

34:                                               ; preds = %8, %7
  %35 = load %struct.kimage*, %struct.kimage** %1, align 8
  ret %struct.kimage* %35
}

declare dso_local %struct.kimage* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
