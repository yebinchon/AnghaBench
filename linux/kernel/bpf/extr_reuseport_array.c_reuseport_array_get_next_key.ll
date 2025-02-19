; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_reuseport_array_get_next_key.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_reuseport_array_get_next_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.reuseport_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@U32_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, i8*, i8*)* @reuseport_array_get_next_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reuseport_array_get_next_key(%struct.bpf_map* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.reuseport_array*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %12 = call %struct.reuseport_array* @reuseport_array(%struct.bpf_map* %11)
  store %struct.reuseport_array* %12, %struct.reuseport_array** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @U32_MAX, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %18, %15 ], [ %20, %19 ]
  store i32 %22, i32* %9, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.reuseport_array*, %struct.reuseport_array** %8, align 8
  %27 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32*, i32** %10, align 8
  store i32 0, i32* %32, align 4
  store i32 0, i32* %4, align 4
  br label %48

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.reuseport_array*, %struct.reuseport_array** %8, align 8
  %36 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp eq i32 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %48

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %41, %31
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.reuseport_array* @reuseport_array(%struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
