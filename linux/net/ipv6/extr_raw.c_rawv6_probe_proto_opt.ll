; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_raw.c_rawv6_probe_proto_opt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_raw.c_rawv6_probe_proto_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw6_frag_vec = type { i32, i32*, i32 }
%struct.flowi6 = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw6_frag_vec*, %struct.flowi6*)* @rawv6_probe_proto_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawv6_probe_proto_opt(%struct.raw6_frag_vec* %0, %struct.flowi6* %1) #0 {
  %3 = alloca %struct.raw6_frag_vec*, align 8
  %4 = alloca %struct.flowi6*, align 8
  %5 = alloca i32, align 4
  store %struct.raw6_frag_vec* %0, %struct.raw6_frag_vec** %3, align 8
  store %struct.flowi6* %1, %struct.flowi6** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %7 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %64 [
    i32 129, label %9
    i32 128, label %40
  ]

9:                                                ; preds = %2
  %10 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %3, align 8
  %11 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %10, i32 0, i32 0
  store i32 2, i32* %11, align 8
  %12 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %3, align 8
  %13 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %3, align 8
  %16 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %3, align 8
  %19 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @memcpy_from_msg(i32* %14, i32 %17, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %9
  %25 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %3, align 8
  %26 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %31 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %3, align 8
  %33 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %38 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %24, %9
  br label %64

40:                                               ; preds = %2
  %41 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %3, align 8
  %42 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %3, align 8
  %44 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %3, align 8
  %47 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %3, align 8
  %50 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @memcpy_from_msg(i32* %45, i32 %48, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %40
  %56 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %3, align 8
  %57 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %62 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %40
  br label %64

64:                                               ; preds = %63, %2, %39
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @memcpy_from_msg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
