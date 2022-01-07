; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_catalog.c_hfsplus_cat_build_key_uni.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_catalog.c_hfsplus_cat_build_key_uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i8* }
%struct.hfsplus_unistr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, %struct.hfsplus_unistr*)* @hfsplus_cat_build_key_uni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfsplus_cat_build_key_uni(%struct.TYPE_7__* %0, i32 %1, %struct.hfsplus_unistr* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfsplus_unistr*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hfsplus_unistr* %2, %struct.hfsplus_unistr** %6, align 8
  %8 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %6, align 8
  %9 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @be16_to_cpu(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @cpu_to_be32(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @cpu_to_be16(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i8* %18, i8** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %23, 2
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %6, align 8
  %31 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @memcpy(i32 %29, i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 6, %35
  %37 = call i8* @cpu_to_be16(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
