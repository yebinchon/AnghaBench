; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__pin.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_object__pin(%struct.bpf_object* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @bpf_object__pin_maps(%struct.bpf_object* %7, i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @bpf_object__pin_programs(%struct.bpf_object* %15, i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @bpf_object__unpin_maps(%struct.bpf_object* %21, i8* %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %20, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @bpf_object__pin_maps(%struct.bpf_object*, i8*) #1

declare dso_local i32 @bpf_object__pin_programs(%struct.bpf_object*, i8*) #1

declare dso_local i32 @bpf_object__unpin_maps(%struct.bpf_object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
