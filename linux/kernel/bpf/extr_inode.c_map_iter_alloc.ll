; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_map_iter_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_map_iter_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_iter = type { i8* }
%struct.bpf_map = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.map_iter* (%struct.bpf_map*)* @map_iter_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.map_iter* @map_iter_alloc(%struct.bpf_map* %0) #0 {
  %2 = alloca %struct.map_iter*, align 8
  %3 = alloca %struct.bpf_map*, align 8
  %4 = alloca %struct.map_iter*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load i32, i32* @__GFP_NOWARN, align 4
  %7 = or i32 %5, %6
  %8 = call i8* @kzalloc(i32 8, i32 %7)
  %9 = bitcast i8* %8 to %struct.map_iter*
  store %struct.map_iter* %9, %struct.map_iter** %4, align 8
  %10 = load %struct.map_iter*, %struct.map_iter** %4, align 8
  %11 = icmp ne %struct.map_iter* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @__GFP_NOWARN, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @kzalloc(i32 %16, i32 %19)
  %21 = load %struct.map_iter*, %struct.map_iter** %4, align 8
  %22 = getelementptr inbounds %struct.map_iter, %struct.map_iter* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.map_iter*, %struct.map_iter** %4, align 8
  %24 = getelementptr inbounds %struct.map_iter, %struct.map_iter* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  br label %30

28:                                               ; preds = %13
  %29 = load %struct.map_iter*, %struct.map_iter** %4, align 8
  store %struct.map_iter* %29, %struct.map_iter** %2, align 8
  br label %33

30:                                               ; preds = %27, %12
  %31 = load %struct.map_iter*, %struct.map_iter** %4, align 8
  %32 = call i32 @map_iter_free(%struct.map_iter* %31)
  store %struct.map_iter* null, %struct.map_iter** %2, align 8
  br label %33

33:                                               ; preds = %30, %28
  %34 = load %struct.map_iter*, %struct.map_iter** %2, align 8
  ret %struct.map_iter* %34
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @map_iter_free(%struct.map_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
