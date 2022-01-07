; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_big_key.c_big_key_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_big_key.c_big_key_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32** }
%struct.path = type { i32*, i32* }

@big_key_len = common dso_local global i64 0, align 8
@BIG_KEY_FILE_THRESHOLD = common dso_local global i64 0, align 8
@big_key_path = common dso_local global i64 0, align 8
@big_key_data = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @big_key_destroy(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.path*, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %5 = load %struct.key*, %struct.key** %2, align 8
  %6 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32**, i32*** %7, align 8
  %9 = load i64, i64* @big_key_len, align 8
  %10 = getelementptr inbounds i32*, i32** %8, i64 %9
  %11 = load i32*, i32** %10, align 8
  %12 = ptrtoint i32* %11 to i64
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @BIG_KEY_FILE_THRESHOLD, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.key*, %struct.key** %2, align 8
  %18 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load i64, i64* @big_key_path, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = bitcast i32** %22 to %struct.path*
  store %struct.path* %23, %struct.path** %4, align 8
  %24 = load %struct.path*, %struct.path** %4, align 8
  %25 = call i32 @path_put(%struct.path* %24)
  %26 = load %struct.path*, %struct.path** %4, align 8
  %27 = getelementptr inbounds %struct.path, %struct.path* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.path*, %struct.path** %4, align 8
  %29 = getelementptr inbounds %struct.path, %struct.path* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %16, %1
  %31 = load %struct.key*, %struct.key** %2, align 8
  %32 = getelementptr inbounds %struct.key, %struct.key* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i64, i64* @big_key_data, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kzfree(i32* %37)
  %39 = load %struct.key*, %struct.key** %2, align 8
  %40 = getelementptr inbounds %struct.key, %struct.key* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* @big_key_data, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  store i32* null, i32** %44, align 8
  ret void
}

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @kzfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
