; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__shndx_is_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__shndx_is_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, i32)* @bpf_object__shndx_is_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__shndx_is_data(%struct.bpf_object* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_object*, align 8
  %4 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %7 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %5, %9
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %14 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %19, %23
  br label %25

25:                                               ; preds = %18, %11, %2
  %26 = phi i1 [ true, %11 ], [ true, %2 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
