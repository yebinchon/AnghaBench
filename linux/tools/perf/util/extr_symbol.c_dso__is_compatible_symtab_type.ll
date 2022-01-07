; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__is_compatible_symtab_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__is_compatible_symtab_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32, i32 }

@DSO_TYPE_USER = common dso_local global i32 0, align 4
@DSO_TYPE_KERNEL = common dso_local global i32 0, align 4
@DSO_TYPE_GUEST_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, i32, i32)* @dso__is_compatible_symtab_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__is_compatible_symtab_type(%struct.dso* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dso*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %49 [
    i32 137, label %9
    i32 144, label %9
    i32 132, label %9
    i32 143, label %9
    i32 129, label %9
    i32 147, label %9
    i32 133, label %9
    i32 136, label %21
    i32 128, label %21
    i32 135, label %21
    i32 142, label %28
    i32 138, label %28
    i32 141, label %28
    i32 140, label %35
    i32 139, label %35
    i32 131, label %35
    i32 130, label %35
    i32 146, label %47
    i32 145, label %47
    i32 148, label %48
    i32 134, label %48
  ]

9:                                                ; preds = %3, %3, %3, %3, %3, %3, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = load %struct.dso*, %struct.dso** %5, align 8
  %14 = getelementptr inbounds %struct.dso, %struct.dso* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DSO_TYPE_USER, align 4
  %17 = icmp eq i32 %15, %16
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ false, %9 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %50

21:                                               ; preds = %3, %3, %3
  %22 = load %struct.dso*, %struct.dso** %5, align 8
  %23 = getelementptr inbounds %struct.dso, %struct.dso* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DSO_TYPE_KERNEL, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %50

28:                                               ; preds = %3, %3, %3
  %29 = load %struct.dso*, %struct.dso** %5, align 8
  %30 = getelementptr inbounds %struct.dso, %struct.dso* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DSO_TYPE_GUEST_KERNEL, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %50

35:                                               ; preds = %3, %3, %3, %3
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.dso*, %struct.dso** %5, align 8
  %40 = getelementptr inbounds %struct.dso, %struct.dso* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br label %44

44:                                               ; preds = %38, %35
  %45 = phi i1 [ false, %35 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %50

47:                                               ; preds = %3, %3
  store i32 1, i32* %4, align 4
  br label %50

48:                                               ; preds = %3, %3
  br label %49

49:                                               ; preds = %3, %48
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %47, %44, %28, %21, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
