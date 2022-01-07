; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__load_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__load_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object_load_attr = type { i32, i32, %struct.bpf_object* }
%struct.bpf_object = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"object should not be loaded twice\0A\00", align 1
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to load object '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_object__load_xattr(%struct.bpf_object_load_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_object_load_attr*, align 8
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca i32, align 4
  store %struct.bpf_object_load_attr* %0, %struct.bpf_object_load_attr** %3, align 8
  %6 = load %struct.bpf_object_load_attr*, %struct.bpf_object_load_attr** %3, align 8
  %7 = icmp ne %struct.bpf_object_load_attr* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.bpf_object_load_attr*, %struct.bpf_object_load_attr** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_object_load_attr, %struct.bpf_object_load_attr* %12, i32 0, i32 2
  %14 = load %struct.bpf_object*, %struct.bpf_object** %13, align 8
  store %struct.bpf_object* %14, %struct.bpf_object** %4, align 8
  %15 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %16 = icmp ne %struct.bpf_object* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %61

20:                                               ; preds = %11
  %21 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %22 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %61

29:                                               ; preds = %20
  %30 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %31 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %33 = call i32 @bpf_object__create_maps(%struct.bpf_object* %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @out, align 4
  %36 = call i32 @CHECK_ERR(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %38 = load %struct.bpf_object_load_attr*, %struct.bpf_object_load_attr** %3, align 8
  %39 = getelementptr inbounds %struct.bpf_object_load_attr, %struct.bpf_object_load_attr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bpf_object__relocate(%struct.bpf_object* %37, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @out, align 4
  %44 = call i32 @CHECK_ERR(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %46 = load %struct.bpf_object_load_attr*, %struct.bpf_object_load_attr** %3, align 8
  %47 = getelementptr inbounds %struct.bpf_object_load_attr, %struct.bpf_object_load_attr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bpf_object__load_progs(%struct.bpf_object* %45, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @out, align 4
  %52 = call i32 @CHECK_ERR(i32 %49, i32 %50, i32 %51)
  store i32 0, i32* %2, align 4
  br label %61

53:                                               ; No predecessors!
  %54 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %55 = call i32 @bpf_object__unload(%struct.bpf_object* %54)
  %56 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %57 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %53, %29, %25, %17, %8
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @CHECK_ERR(i32, i32, i32) #1

declare dso_local i32 @bpf_object__create_maps(%struct.bpf_object*) #1

declare dso_local i32 @bpf_object__relocate(%struct.bpf_object*, i32) #1

declare dso_local i32 @bpf_object__load_progs(%struct.bpf_object*, i32) #1

declare dso_local i32 @bpf_object__unload(%struct.bpf_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
