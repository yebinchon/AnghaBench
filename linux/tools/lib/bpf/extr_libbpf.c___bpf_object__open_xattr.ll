; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c___bpf_object__open_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c___bpf_object__open_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }
%struct.bpf_object_open_attr = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"loading %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_object* @__bpf_object__open_xattr(%struct.bpf_object_open_attr* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_object*, align 8
  %4 = alloca %struct.bpf_object_open_attr*, align 8
  %5 = alloca i32, align 4
  store %struct.bpf_object_open_attr* %0, %struct.bpf_object_open_attr** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bpf_object_open_attr*, %struct.bpf_object_open_attr** %4, align 8
  %7 = getelementptr inbounds %struct.bpf_object_open_attr, %struct.bpf_object_open_attr* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.bpf_object* null, %struct.bpf_object** %3, align 8
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.bpf_object_open_attr*, %struct.bpf_object_open_attr** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_object_open_attr, %struct.bpf_object_open_attr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.bpf_object_open_attr*, %struct.bpf_object_open_attr** %4, align 8
  %17 = getelementptr inbounds %struct.bpf_object_open_attr, %struct.bpf_object_open_attr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bpf_object_open_attr*, %struct.bpf_object_open_attr** %4, align 8
  %20 = getelementptr inbounds %struct.bpf_object_open_attr, %struct.bpf_object_open_attr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bpf_prog_type__needs_kver(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.bpf_object* @__bpf_object__open(i32 %18, i32* null, i32 0, i32 %22, i32 %23)
  store %struct.bpf_object* %24, %struct.bpf_object** %3, align 8
  br label %25

25:                                               ; preds = %11, %10
  %26 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  ret %struct.bpf_object* %26
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.bpf_object* @__bpf_object__open(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @bpf_prog_type__needs_kver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
