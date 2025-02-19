; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_ifindex_to_name_ns.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_ifindex_to_name_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"/proc/self/ns/net\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't stat /proc/self: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i64, i8*)* @ifindex_to_name_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ifindex_to_name_ns(i64 %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = call i32 @stat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.stat* %10)
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 @p_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i8* null, i8** %5, align 8
  br label %34

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19
  store i8* null, i8** %5, align 8
  br label %34

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i8* @if_indextoname(i64 %31, i8* %32)
  store i8* %33, i8** %5, align 8
  br label %34

34:                                               ; preds = %30, %29, %15
  %35 = load i8*, i8** %5, align 8
  ret i8* %35
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @p_err(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @if_indextoname(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
