; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_prog_load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_prog_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }
%struct.bpf_prog_load_attr = type { i8*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog_load(i8* %0, i32 %1, %struct.bpf_object** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_object**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bpf_prog_load_attr, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bpf_object** %2, %struct.bpf_object*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = call i32 @memset(%struct.bpf_prog_load_attr* %9, i32 0, i32 24)
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %9, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %9, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.bpf_object**, %struct.bpf_object*** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %9, %struct.bpf_object** %16, i32* %17)
  ret i32 %18
}

declare dso_local i32 @memset(%struct.bpf_prog_load_attr*, i32, i32) #1

declare dso_local i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
