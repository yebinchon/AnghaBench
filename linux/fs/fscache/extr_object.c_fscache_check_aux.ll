; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_check_aux.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_check_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_object = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i8*, i32, i32)* }

@fscache_n_checkaux_none = common dso_local global i32 0, align 4
@fscache_n_checkaux_okay = common dso_local global i32 0, align 4
@fscache_n_checkaux_update = common dso_local global i32 0, align 4
@fscache_n_checkaux_obsolete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscache_check_aux(%struct.fscache_object* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fscache_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %12 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** %16, align 8
  %18 = icmp ne i32 (i32, i8*, i32, i32)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = call i32 @fscache_stat(i32* @fscache_n_checkaux_none)
  store i32 128, i32* %5, align 4
  br label %49

21:                                               ; preds = %4
  %22 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %23 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** %27, align 8
  %29 = load %struct.fscache_object*, %struct.fscache_object** %6, align 8
  %30 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 %28(i32 %33, i8* %34, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %45 [
    i32 128, label %39
    i32 130, label %41
    i32 129, label %43
  ]

39:                                               ; preds = %21
  %40 = call i32 @fscache_stat(i32* @fscache_n_checkaux_okay)
  br label %47

41:                                               ; preds = %21
  %42 = call i32 @fscache_stat(i32* @fscache_n_checkaux_update)
  br label %47

43:                                               ; preds = %21
  %44 = call i32 @fscache_stat(i32* @fscache_n_checkaux_obsolete)
  br label %47

45:                                               ; preds = %21
  %46 = call i32 (...) @BUG()
  br label %47

47:                                               ; preds = %45, %43, %41, %39
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %19
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
