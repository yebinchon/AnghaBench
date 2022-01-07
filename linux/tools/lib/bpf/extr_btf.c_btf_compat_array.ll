; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_compat_array.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_compat_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_type = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_type*, %struct.btf_type*)* @btf_compat_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_compat_array(%struct.btf_type* %0, %struct.btf_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_type*, align 8
  %5 = alloca %struct.btf_type*, align 8
  store %struct.btf_type* %0, %struct.btf_type** %4, align 8
  store %struct.btf_type* %1, %struct.btf_type** %5, align 8
  %6 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %7 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %8 = call i32 @btf_equal_common(%struct.btf_type* %6, %struct.btf_type* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %13 = call %struct.TYPE_2__* @btf_array(%struct.btf_type* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %17 = call %struct.TYPE_2__* @btf_array(%struct.btf_type* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %15, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %11, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @btf_equal_common(%struct.btf_type*, %struct.btf_type*) #1

declare dso_local %struct.TYPE_2__* @btf_array(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
