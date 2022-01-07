; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c___bpf_object__open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c___bpf_object__open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }

@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to init libelf for %s\0A\00", align 1
@LIBBPF_ERRNO__LIBELF = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_object* (i8*, i8*, i64, i32, i32)* @__bpf_object__open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_object* @__bpf_object__open(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bpf_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_object*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @EV_CURRENT, align 4
  %15 = call i64 @elf_version(i32 %14)
  %16 = load i64, i64* @EV_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @pr_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @LIBBPF_ERRNO__LIBELF, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.bpf_object* @ERR_PTR(i32 %22)
  store %struct.bpf_object* %23, %struct.bpf_object** %6, align 8
  br label %75

24:                                               ; preds = %5
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call %struct.bpf_object* @bpf_object__new(i8* %25, i8* %26, i64 %27)
  store %struct.bpf_object* %28, %struct.bpf_object** %12, align 8
  %29 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %30 = call i64 @IS_ERR(%struct.bpf_object* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  store %struct.bpf_object* %33, %struct.bpf_object** %6, align 8
  br label %75

34:                                               ; preds = %24
  %35 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %36 = call i32 @bpf_object__elf_init(%struct.bpf_object* %35)
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @out, align 4
  %39 = call i32 @CHECK_ERR(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %41 = call i32 @bpf_object__check_endianness(%struct.bpf_object* %40)
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @out, align 4
  %44 = call i32 @CHECK_ERR(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %46 = call i32 @bpf_object__probe_caps(%struct.bpf_object* %45)
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @out, align 4
  %49 = call i32 @CHECK_ERR(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @bpf_object__elf_collect(%struct.bpf_object* %50, i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @out, align 4
  %55 = call i32 @CHECK_ERR(i32 %52, i32 %53, i32 %54)
  %56 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %57 = call i32 @bpf_object__collect_reloc(%struct.bpf_object* %56)
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @out, align 4
  %60 = call i32 @CHECK_ERR(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @bpf_object__validate(%struct.bpf_object* %61, i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @out, align 4
  %66 = call i32 @CHECK_ERR(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %68 = call i32 @bpf_object__elf_finish(%struct.bpf_object* %67)
  %69 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  store %struct.bpf_object* %69, %struct.bpf_object** %6, align 8
  br label %75

70:                                               ; No predecessors!
  %71 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %72 = call i32 @bpf_object__close(%struct.bpf_object* %71)
  %73 = load i32, i32* %13, align 4
  %74 = call %struct.bpf_object* @ERR_PTR(i32 %73)
  store %struct.bpf_object* %74, %struct.bpf_object** %6, align 8
  br label %75

75:                                               ; preds = %70, %34, %32, %18
  %76 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  ret %struct.bpf_object* %76
}

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

declare dso_local %struct.bpf_object* @ERR_PTR(i32) #1

declare dso_local %struct.bpf_object* @bpf_object__new(i8*, i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.bpf_object*) #1

declare dso_local i32 @CHECK_ERR(i32, i32, i32) #1

declare dso_local i32 @bpf_object__elf_init(%struct.bpf_object*) #1

declare dso_local i32 @bpf_object__check_endianness(%struct.bpf_object*) #1

declare dso_local i32 @bpf_object__probe_caps(%struct.bpf_object*) #1

declare dso_local i32 @bpf_object__elf_collect(%struct.bpf_object*, i32) #1

declare dso_local i32 @bpf_object__collect_reloc(%struct.bpf_object*) #1

declare dso_local i32 @bpf_object__validate(%struct.bpf_object*, i32) #1

declare dso_local i32 @bpf_object__elf_finish(%struct.bpf_object*) #1

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
