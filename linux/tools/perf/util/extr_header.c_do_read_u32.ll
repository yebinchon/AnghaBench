; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_do_read_u32.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_do_read_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feat_fd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.feat_fd*, i32*)* @do_read_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read_u32(%struct.feat_fd* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.feat_fd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.feat_fd* %0, %struct.feat_fd** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.feat_fd*, %struct.feat_fd** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @__do_read(%struct.feat_fd* %7, i32* %8, i32 4)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.feat_fd*, %struct.feat_fd** %4, align 8
  %16 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bswap_32(i32 %23)
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %14
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @__do_read(%struct.feat_fd*, i32*, i32) #1

declare dso_local i32 @bswap_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
