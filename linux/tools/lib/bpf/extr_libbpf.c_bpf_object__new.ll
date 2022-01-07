; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [28 x i8] c"alloc memory failed for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@bpf_objects_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_object* (i8*, i8*, i64)* @bpf_object__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_object* @bpf_object__new(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bpf_object*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = add i64 64, %11
  %13 = add i64 %12, 1
  %14 = call %struct.bpf_object* @calloc(i32 1, i64 %13)
  store %struct.bpf_object* %14, %struct.bpf_object** %8, align 8
  %15 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %16 = icmp ne %struct.bpf_object* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @pr_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.bpf_object* @ERR_PTR(i32 %21)
  store %struct.bpf_object* %22, %struct.bpf_object** %4, align 8
  br label %79

23:                                               ; preds = %3
  %24 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %25 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strcpy(i32 %26, i8* %27)
  %29 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %30 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @basename(i8* %32)
  %34 = call i32 @strncpy(i32 %31, i32 %33, i32 3)
  %35 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %36 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @strchr(i32 %37, i8 signext 46)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %23
  %42 = load i8*, i8** %9, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %23
  %44 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %45 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %49 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 7
  store i8* %47, i8** %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %53 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i64 %51, i64* %54, align 8
  %55 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %56 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 -1, i32* %57, align 8
  %58 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %59 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i32 -1, i32* %60, align 4
  %61 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %62 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  store i32 -1, i32* %63, align 8
  %64 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %65 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  store i32 -1, i32* %66, align 4
  %67 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %68 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 6
  store i32 -1, i32* %69, align 8
  %70 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %71 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %73 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %72, i32 0, i32 1
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %76 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %75, i32 0, i32 1
  %77 = call i32 @list_add(i32* %76, i32* @bpf_objects_list)
  %78 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  store %struct.bpf_object* %78, %struct.bpf_object** %4, align 8
  br label %79

79:                                               ; preds = %43, %17
  %80 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  ret %struct.bpf_object* %80
}

declare dso_local %struct.bpf_object* @calloc(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

declare dso_local %struct.bpf_object* @ERR_PTR(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
