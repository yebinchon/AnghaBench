; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_add_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_add_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_type = type { i32 }
%struct.btf = type { i32, i32, %struct.btf_type** }

@BTF_MAX_NR_TYPES = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btf_void = common dso_local global %struct.btf_type zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*, %struct.btf_type*)* @btf_add_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_add_type(%struct.btf* %0, %struct.btf_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf*, align 8
  %5 = alloca %struct.btf_type*, align 8
  %6 = alloca %struct.btf_type**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %4, align 8
  store %struct.btf_type* %1, %struct.btf_type** %5, align 8
  %9 = load %struct.btf*, %struct.btf** %4, align 8
  %10 = getelementptr inbounds %struct.btf, %struct.btf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.btf*, %struct.btf** %4, align 8
  %13 = getelementptr inbounds %struct.btf, %struct.btf* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %67

17:                                               ; preds = %2
  %18 = load %struct.btf*, %struct.btf** %4, align 8
  %19 = getelementptr inbounds %struct.btf, %struct.btf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BTF_MAX_NR_TYPES, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @E2BIG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %78

26:                                               ; preds = %17
  %27 = load %struct.btf*, %struct.btf** %4, align 8
  %28 = getelementptr inbounds %struct.btf, %struct.btf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 2
  %31 = call i32 @max(i32 %30, i32 16)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @BTF_MAX_NR_TYPES, align 4
  %33 = load %struct.btf*, %struct.btf** %4, align 8
  %34 = getelementptr inbounds %struct.btf, %struct.btf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @min(i32 %32, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.btf*, %struct.btf** %4, align 8
  %40 = getelementptr inbounds %struct.btf, %struct.btf* %39, i32 0, i32 2
  %41 = load %struct.btf_type**, %struct.btf_type*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 8, %43
  %45 = trunc i64 %44 to i32
  %46 = call %struct.btf_type** @realloc(%struct.btf_type** %41, i32 %45)
  store %struct.btf_type** %46, %struct.btf_type*** %6, align 8
  %47 = load %struct.btf_type**, %struct.btf_type*** %6, align 8
  %48 = icmp ne %struct.btf_type** %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %26
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %78

52:                                               ; preds = %26
  %53 = load %struct.btf*, %struct.btf** %4, align 8
  %54 = getelementptr inbounds %struct.btf, %struct.btf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.btf_type**, %struct.btf_type*** %6, align 8
  %59 = getelementptr inbounds %struct.btf_type*, %struct.btf_type** %58, i64 0
  store %struct.btf_type* @btf_void, %struct.btf_type** %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.btf_type**, %struct.btf_type*** %6, align 8
  %62 = load %struct.btf*, %struct.btf** %4, align 8
  %63 = getelementptr inbounds %struct.btf, %struct.btf* %62, i32 0, i32 2
  store %struct.btf_type** %61, %struct.btf_type*** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.btf*, %struct.btf** %4, align 8
  %66 = getelementptr inbounds %struct.btf, %struct.btf* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %60, %2
  %68 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %69 = load %struct.btf*, %struct.btf** %4, align 8
  %70 = getelementptr inbounds %struct.btf, %struct.btf* %69, i32 0, i32 2
  %71 = load %struct.btf_type**, %struct.btf_type*** %70, align 8
  %72 = load %struct.btf*, %struct.btf** %4, align 8
  %73 = getelementptr inbounds %struct.btf, %struct.btf* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.btf_type*, %struct.btf_type** %71, i64 %76
  store %struct.btf_type* %68, %struct.btf_type** %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %67, %49, %23
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.btf_type** @realloc(%struct.btf_type**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
