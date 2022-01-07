; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_parman.c_parman_create.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_parman.c_parman_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parman = type { i32, i32, i8*, %struct.parman_ops*, i32 }
%struct.parman_ops = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@parman_algos = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.parman* @parman_create(%struct.parman_ops* %0, i8* %1) #0 {
  %3 = alloca %struct.parman*, align 8
  %4 = alloca %struct.parman_ops*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.parman*, align 8
  store %struct.parman_ops* %0, %struct.parman_ops** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.parman* @kzalloc(i32 32, i32 %7)
  store %struct.parman* %8, %struct.parman** %6, align 8
  %9 = load %struct.parman*, %struct.parman** %6, align 8
  %10 = icmp ne %struct.parman* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.parman* null, %struct.parman** %3, align 8
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.parman*, %struct.parman** %6, align 8
  %14 = getelementptr inbounds %struct.parman, %struct.parman* %13, i32 0, i32 4
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.parman_ops*, %struct.parman_ops** %4, align 8
  %17 = load %struct.parman*, %struct.parman** %6, align 8
  %18 = getelementptr inbounds %struct.parman, %struct.parman* %17, i32 0, i32 3
  store %struct.parman_ops* %16, %struct.parman_ops** %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.parman*, %struct.parman** %6, align 8
  %21 = getelementptr inbounds %struct.parman, %struct.parman* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.parman_ops*, %struct.parman_ops** %4, align 8
  %23 = getelementptr inbounds %struct.parman_ops, %struct.parman_ops* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.parman*, %struct.parman** %6, align 8
  %26 = getelementptr inbounds %struct.parman, %struct.parman* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** @parman_algos, align 8
  %28 = load %struct.parman_ops*, %struct.parman_ops** %4, align 8
  %29 = getelementptr inbounds %struct.parman_ops, %struct.parman_ops* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.parman*, %struct.parman** %6, align 8
  %34 = getelementptr inbounds %struct.parman, %struct.parman* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.parman*, %struct.parman** %6, align 8
  store %struct.parman* %35, %struct.parman** %3, align 8
  br label %36

36:                                               ; preds = %12, %11
  %37 = load %struct.parman*, %struct.parman** %3, align 8
  ret %struct.parman* %37
}

declare dso_local %struct.parman* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
